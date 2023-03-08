unit SeaFightBotRandomImpl;
{$mode objfpc}{$H+}
interface
type
TByteArray = array of Byte;
TByteArray2D = array of TByteArray;
const
EMPTY = 0;
BLOCK = 1;
DAMAGE = 2;
KILL = 3;
var
visited: array[0..99] of Boolean;
leftCells: Integer;
firstGame: Boolean = true;
function getMap: TByteArray2D;
function shoot: TByteArray;
procedure shootResult(resultCode: integer);
procedure rivalShoot(point: TByteArray);
procedure setParams(setsPerGame: integer);
procedure onCurrentSetEnd;
procedure onCurrentGameEnd;
implementation
function getMap: TByteArray2D;
var
i: Integer;
begin
// Инициализация
leftCells := 100; // Количество непосещенных клеток противника
for i := 0 to 99 do begin
visited[i] := false; // Флаги о посещении клеток
end;
result := TByteArray2D.Create(
TByteArray.Create(1, 0, 0, 0, 0, 0, 0, 0, 0, 1),
TByteArray.Create(0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
TByteArray.Create(1, 0, 0, 0, 0, 0, 0, 0, 0, 1),
TByteArray.Create(1, 0, 0, 0, 1, 0, 0, 0, 0, 1),
TByteArray.Create(1, 0, 0, 0, 1, 0, 0, 0, 0, 1),
TByteArray.Create(0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
TByteArray.Create(0, 0, 0, 0, 0, 1, 0, 0, 1, 1),
TByteArray.Create(0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
TByteArray.Create(0, 0, 0, 0, 0, 1, 0, 1, 0, 0),
TByteArray.Create(1, 1, 0, 0, 0, 1, 0, 0, 0, 1)
);
end;
function shoot: TByteArray;
var
pos, counter, cur: Integer;
begin
// Выбирается номер случайной непосещенной клетки из оставшихся
pos := random(leftCells);
// Эта клетка ищется на поле
// Поле нумеруется с нуля слева направо, сверзу вниз
// counter - нумерация только непосещенных клеток
// cur - нумерация всех клеток
counter := -1;
cur := -1;
while counter <> pos do begin
inc(cur);
// cur div 10 - координата Y, cur mod 10 - координата X.
if (visited[(cur div 10) * 10 + cur mod 10] = false) then inc(counter);
end;
visited[(cur div 10) * 10 + cur mod 10] := true;
result := TByteArray.Create(cur mod 10, cur div 10);
end;
procedure shootResult(resultCode: integer);
begin
dec(leftCells);
end;
procedure rivalShoot(point: TByteArray);
begin
end;
procedure setParams(setsPerGame: integer);
var
i: Integer;
begin
if firstGame then begin
randomize;
firstGame := false;
end;
end;
procedure onCurrentSetEnd;
begin
end;
procedure onCurrentGameEnd;
begin
end;
end.
