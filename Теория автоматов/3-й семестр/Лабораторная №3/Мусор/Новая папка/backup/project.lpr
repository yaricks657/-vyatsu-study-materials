program project;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes, SysUtils, CustApp, SeaFightBotImpl, SeaFightBotRandomImpl
  { you can add units after this };

type

  { SFTester }

  SFTester = class(TCustomApplication)
  protected
    procedure DoRun; override;
  public
    constructor Create(TheOwner: TComponent); override;
    destructor Destroy; override;
    procedure WriteHelp; virtual;
  end;

{ SFTester }
type TGetMapDelegate = function() : TByteArray2D;
type TShootDelegate = function() : TByteArray;
type TShootResultDelegate = procedure(shootResult : integer);
type TRivalShootDelegate = procedure(point : TByteArray);
type TSetParamsDelegate = procedure(setsPerGame : integer);
type TOnCurrentSetEndDelegate = procedure();
type TOnCurrentGameEndDelegate = procedure();

type TBot = record
     getMap : TGetMapDelegate;
     shoot : TShootDelegate;
     shootResult : TShootResultDelegate;
     rivalShoot : TRivalShootDelegate;
     setParams : TSetParamsDelegate;
     onCurrentSetEnd : TOnCurrentSetEndDelegate;
     onCurrentGameEnd : TOnCurrentGameEndDelegate;
     map, rivalShots : TByteArray2D;
end;

const TILE_EMPTY = 0;
const TILE_SHIP = 1;
const TILE_EXPLODED = 2;

const RESULT_EMPTY = 0;
const RESULT_DAMAGE = 2;
const RESULT_KILL = 3;

const SHIP_POINT = 0;
const SHIP_VERTICAL = 1;
const SHIP_HORIZONTAL = 2;

type TShipInfo = record
     Size, Hits : integer;
end;
type TVector2 = record
     X, Y : integer;
end;
type TShip = record
     Position1, Position2 : TVector2;
end;

function IsValidCell(x, y : integer) : boolean;
begin
     if (x < 0) then exit(false);
     if (x > 9) then exit(false);
     if (y < 0) then exit(false);
     if (y > 9) then exit(false);
     exit(true);
end;

function GetHorizontalShip(x, y : integer; bot : TBot) : TShip;
	var ship : TShip;
	var left, right : integer;
begin
     right := x;
     while (IsValidCell(y, right + 1) and (bot.map[y][right + 1] = TILE_SHIP)) do
           inc(right);
     left := right;
     while (IsValidCell(y, left - 1) and (bot.map[y][left - 1] = TILE_SHIP)) do
           dec(left);
     ship.Position1.Y := y; ship.Position2.Y := y;
     ship.Position1.X := left; ship.Position2.X := right;
     exit(ship);
end;

function GetVerticalShip(x, y : integer; bot : TBot) : TShip;
	var ship : TShip;
	var down, up : integer;
begin
     up := y;
     while (IsValidCell(x, up + 1) and (bot.map[up + 1][x] = TILE_SHIP)) do
           inc(up);
     down := up;
     while (IsValidCell(x, down - 1) and (bot.map[down - 1][x] = TILE_SHIP)) do
           dec(down);
     ship.Position1.Y := down; ship.Position2.Y := up;
     ship.Position1.X := x; ship.Position2.X := x;
     exit(ship);
end;

function GetShipAxis(x, y : integer; bot : TBot) : integer;
begin
     if (IsValidCell(x, y + 1) and (bot.map[y + 1][x] = TILE_SHIP)) then exit(SHIP_VERTICAL);
     if (IsValidCell(x, y - 1) and (bot.map[y - 1][x] = TILE_SHIP)) then exit(SHIP_VERTICAL);
     if (IsValidCell(x + 1, y) and (bot.map[y][x + 1] = TILE_SHIP)) then exit(SHIP_HORIZONTAL);
     if (IsValidCell(x - 1, y) and (bot.map[y][x - 1] = TILE_SHIP)) then exit(SHIP_HORIZONTAL);
     exit(SHIP_POINT);
end;

function GetShipInfo(x, y : integer; bot : TBot) : TShipInfo;
         var shipInfo : TShipInfo;
         var ship : TShip;
         var orientation, iy, ix : integer;
begin
     shipInfo.Size := 0; shipInfo.Hits := 0;
     orientation := GetShipAxis(x, y, bot);
     case orientation of
          SHIP_VERTICAL: begin
             ship := GetVerticalShip(x, y, bot);
             for iy := ship.Position1.Y to ship.Position2.Y do begin
                if (bot.map[iy][ship.Position1.X] = TILE_SHIP) then
                   inc(shipInfo.Size);
                if (bot.rivalShots[iy][ship.Position1.X] = TILE_EXPLODED) then
                   inc(shipInfo.Hits);
             end;
             exit(shipInfo);
          end;
          SHIP_HORIZONTAL: begin
             ship := GetHorizontalShip(x, y, bot);
             for ix := ship.Position1.X to ship.Position2.X do begin
                if (bot.map[ship.Position1.Y][ix] = TILE_SHIP) then
                   inc(shipInfo.Size);
                if (bot.rivalShots[ship.Position1.Y][ix] = TILE_EXPLODED) then
                   inc(shipInfo.Hits);
             end;
             exit(shipInfo);
          end;
     end;

     inc(shipInfo.Size);
     if (bot.rivalShots[y][x] = TILE_EXPLODED) then inc(shipInfo.Hits);
     exit(shipInfo);
end;

function GetShotResult(x, y : integer; bot : TBot) : integer;
         var shipInfo : TShipInfo;
begin
     if (bot.map[y][x] = TILE_EMPTY) then begin
         exit(RESULT_EMPTY);
     end else begin
         shipInfo := GetShipInfo(x, y, bot);
         if (shipInfo.Size = shipInfo.Hits) then
            exit(RESULT_KILL);
         exit(RESULT_DAMAGE);
     end;
end;

procedure ShowMapByte(const ar : TByteArray2D);
          var ix, iy : integer;
begin
  write(' ', ' ');
  for ix := 0 to 9 do
      write(ix, ' ');
  writeln();
  for iy := 0 to 9 do begin
      write(iy, ' ');
      for ix := 0 to 9 do begin
          write(ar[iy][ix], ' ');
      end;
      writeln();
  end;
end;

procedure ShowMapInt(const ar : TbyteArray2D);
          var ix, iy : integer;
begin
  write(' ', ' ');
  for ix := 0 to 9 do
      write(ix, ' ');
  writeln();
  for iy := 0 to 9 do begin
      write(iy, ' ');
      for ix := 0 to 9 do begin
          write(ar[iy][ix], ' ');
      end;
      writeln();
  end;
end;

function IsLoose(bot : TBot) : boolean;
         var cells, iy, ix : integer;
begin
     cells := 0;
     for iy := 0 to 9 do
         for ix := 0 to 9 do
             if ((bot.rivalShots[iy][ix] = TILE_EXPLODED) and (bot.map[iy][ix] = TILE_SHIP)) then
                inc(cells);
     exit (cells = (4 * 1 + 3 * 2 + 2 * 3 + 1 * 4))
end;

procedure SFTester.DoRun;
var
  ErrorMsg: String;
  botA, botB : TBot;
  shootInfo : TByteArray;
  bCell, iy, ix, sr : integer;
begin
  // quick check parameters
  ErrorMsg:=CheckOptions('h', 'help');
  if ErrorMsg<>'' then begin
    ShowException(Exception.Create(ErrorMsg));
    Terminate;
    Exit;
  end;

  // parse parameters
  if HasOption('h', 'help') then begin
    WriteHelp;
    Terminate;
    Exit;
  end;

  { add your program here }
  botA.getMap := @SeaFightBotImpl.getMap;
  botA.shootResult := @SeaFightBotImpl.shootResult;
  botA.shoot := @SeaFightBotImpl.shoot;
  botA.rivalShoot := @SeaFightBotImpl.rivalShoot;
  botA.setParams := @SeaFightBotImpl.setParams;
  botA.onCurrentSetEnd := @SeaFightBotImpl.onCurrentSetEnd;
  botA.onCurrentGameEnd := @SeaFightBotImpl.onCurrentGameEnd;

  botB.getMap := @SeaFightBotRandomImpl.getMap;
  botB.shootResult := @SeaFightBotRandomImpl.shootResult;
  botB.shoot := @SeaFightBotRandomImpl.shoot;
  botB.rivalShoot := @SeaFightBotRandomImpl.rivalShoot;
  botB.setParams := @SeaFightBotRandomImpl.setParams;
  botB.onCurrentSetEnd := @SeaFightBotRandomImpl.onCurrentSetEnd;
  botB.onCurrentGameEnd := @SeaFightBotRandomImpl.onCurrentGameEnd;

  botA.setParams(1); botB.setParams(1);
  botA.map := botA.getMap(); botB.map := botB.getMap();
  botA.rivalShots := TByteArray2D.Create(
                  TByteArray.Create(0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
                  TByteArray.Create(0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
                  TByteArray.Create(0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
                  TByteArray.Create(0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
                  TByteArray.Create(0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
                  TByteArray.Create(0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
                  TByteArray.Create(0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
                  TByteArray.Create(0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
                  TByteArray.Create(0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
                  TByteArray.Create(0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
  );
  botB.rivalShots := TByteArray2D.Create(
                  TByteArray.Create(0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
                  TByteArray.Create(0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
                  TByteArray.Create(0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
                  TByteArray.Create(0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
                  TByteArray.Create(0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
                  TByteArray.Create(0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
                  TByteArray.Create(0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
                  TByteArray.Create(0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
                  TByteArray.Create(0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
                  TByteArray.Create(0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
  );

  writeln('enemy placement:');
  ShowMapByte(botB.map);
  writeln('bot internal map initial:');
  //ShowMapInt(SeaFightBotImpl.TargetInfo.PriorityMap);
  while true do begin
    //writeln('bot internal map before:');
    //ShowMapInt(SeaFightBotImpl.TargetInfo.PriorityMap);
    shootInfo := botA.shoot();
    writeln('bot internal map after:');
    //ShowMapInt(SeaFightBotImpl.TargetInfo.PriorityMap);
    bCell := botB.rivalShots[shootInfo[0]][shootInfo[1]];
    if (bCell = TILE_EXPLODED) then begin
       writeln('wtf!? (already exploded) x: ', shootInfo[1], ' y: ', shootInfo[0]); // WTF?!
       writeln('bot shots:');
       ShowMapByte(botB.RivalShots);
       writeln('bot internal map:');
       ShowMapInt(SeaFightBotImpl.TargetInfo.PriorityMap);
       writeln('dump end');
    end;
    //writeln('bot shots:');
    //ShowMapByte(botB.RivalShots);
    //writeln('bot internal map:');
    //ShowMapInt(SeaFightBotImpl.TargetInfo.PriorityMap);
    botB.rivalShots[shootInfo[0]][shootInfo[1]] := TILE_EXPLODED;
    sr := GetShotResult(shootInfo[1], shootInfo[0], botB);
    botA.shootResult(sr);
    writeln('succesful shoot x: ', shootInfo[1], ' y: ', shootInfo[0], ' R: ', sr);
    botB.rivalShoot(shootInfo);

    if IsLoose(botB) then break;
  end;

  readln();
  // stop program loop
  Terminate;
end;

constructor SFTester.Create(TheOwner: TComponent);
begin
  inherited Create(TheOwner);
  StopOnException:=True;
end;

destructor SFTester.Destroy;
begin
  inherited Destroy;
end;

procedure SFTester.WriteHelp;
begin
  { add your help code here }
  writeln('Usage: ', ExeName, ' -h');
end;

var
  Application: SFTester;
begin
  Application:=SFTester.Create(nil);
  Application.Title:='SFTester';
  Application.Run;
  Application.Free;
end.

