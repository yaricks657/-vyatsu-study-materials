{
  Игра "Собери картинку" - игра "15" с графическим
  интерфейсом (вместо цифр - фрагменты картинки).
  Картинка загружается из файла pic_1.bmp,
  который находится в том же каталоге
  что и выполняемый файл программы.
  (с) Культин Н.Б., 2003.
}
unit soberi_;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes,
  Graphics, Controls, Forms, Dialogs, Menus;

type
  TForm1 = class(TForm)
    mm1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3x31: TMenuItem;
    N4x41: TMenuItem;
    N6x61: TMenuItem;
    N9x91: TMenuItem;
    N3: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormPaint(Sender: TObject);

    // эти объявления вставлены сюда вручную
    procedure ShowPole;
    procedure Mixer;
    procedure NewGame(H:Integer;W:integer);
    procedure N3x31Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

const
    H = 4;   W = 4;   // размер поля - 4х4
var

    wc,hc: integer; // ширина и высота клетки

    // игровое поле
    pole3: array[1..3, 1..3] of byte;
    pole4: array[1..4, 1..4] of byte;
    pole6: array[1..6, 1..6] of byte;
    pole9: array[1..9, 1..9] of byte;
    ex,ey: integer; // координаты пустой клетки

    // правильное расположение клеток
         stp3 : array[1..3, 1..3] of byte =
    (( 1, 2, 3),
      ( 4, 5, 6),
      ( 7, 8, 9));
      stp4 : array[1..4, 1..4] of byte =
    (( 1, 2, 3, 4),
      ( 5, 6, 7, 8),
      ( 9, 10, 11, 12),
     ( 13, 14, 15, 16));
     stp6 : array[1..6, 1..6] of byte =
    (( 1, 2, 3, 4, 5, 6),
      ( 7, 8, 9, 10, 11, 12),
      ( 13, 14, 15, 16, 17, 18),
     ( 19, 20, 21, 22, 23, 24),
      ( 25, 26, 27, 28, 29, 30),
       ( 31, 32, 33, 34, 35, 36));
    stp9 : array[1..9, 1..9] of byte =
    (( 1, 2, 3, 4, 5, 6, 7, 8, 9),
      ( 10, 11, 12, 13, 14, 15, 16, 17, 18),
      ( 19, 20, 21, 22, 23, 24, 25, 26, 27),
     ( 28, 29, 30, 31, 32, 33, 34, 35, 36),
      ( 37, 38, 39, 40, 41, 42, 43, 44, 45),
       ( 46, 47, 48, 49, 50, 51, 52, 53, 54),
        ( 55, 56, 57, 58, 59, 60, 61, 62, 63),
         ( 64, 65, 66, 67, 68, 69, 70, 71, 72),
          ( 73, 74, 75, 76, 77, 78, 79, 80, 81));

     pic: TBitmap;   // картинка

// новая игра
procedure TForm1.NewGame(H:Integer;W:integer);
var
    fname: string[90]; // файл картинки
    i,j: integer;
begin
    { сюда можно вставить инструкции,
    обеспечивающие, например, случайный
    выбор загружаемой картинки }

    fname := 'pic_1.bmp';
    try
        pic.LoadFromFile(fname);
        except
            on EFopenError do
               begin
                ShowMessage('Ошибка обращения к файлу ' + fname);
                Form1.Close;
               end;
    end;
    // Установить размер формы равный
    //  равный размеру картинки.

    // размер клетки
    hc := Pic.Height div H;
    wc := Pic.Width div W;

    // размер формы
    ClientWidth  := wc * W;
    ClientHeight := hc * H;

    // исходное (правильное) положение
    for i:=1 to H do
        for j:=1 to W do
        if H=3 then
            pole3[i,j] := stp3[i,j] else
            if H=4 then
                pole4[i,j] := stp4[i,j] else
                if H=6 then
                    pole4[i,j] := stp4[i,j] else
                    if H=9 then
                        pole9[i,j] := stp9[i,j];
    Form1.Mixer;    // перемешать фишки
    Form1.ShowPole; // отобразить поле
end;

// проверяет, расположены ли
// клетки (фрагменты картинки) в нужном порядке
function Finish: boolean;
var
    row,col: integer;
    i: integer;
begin
    row :=1; col :=1;
    Finish := True; // пусть фишки в нужном порядке
    for i:=1 to 15 do
    begin
       if (pole3[row,col]) or (pole4[row,col]) or
       (pole6[row,col]) or (pole9[row,col]) <> i then

       begin
            Finish:= False;
            break;
       end;
       // к следующей клетке
       if col < 4
          then inc(col)
       else begin
          col :=1;
          inc(row);
       end;
    end;
end;


// "перемещает" фишку в соседнюю пустую клетку,
// если она есть, конечно
procedure Move(cx,cy: integer);
// cx,cy - клетка, в которой игрок сделал щелчок
var
    r: integer;       // выбор игрока
begin
    // проверим, возможен ли обмен
    if not (( abs(cx-ex) = 1) and (cy-ey = 0) or
            ( abs(cy-ey) = 1) and (cx-ex = 0))
    then exit;
    // Обмен. Переместим фишку из x,y в ex,ey
    if H=3 then begin
    Pole3[ey,ex] := Pole3[cy,cx];
    Pole3[cy,cx] := 0;
    end else
    if H=4 then begin
    Pole4[ey,ex] := Pole4[cy,cx];
    Pole4[cy,cx] := 0;
    end else
    if H=6 then begin
    Pole6[ey,ex] := Pole6[cy,cx];
    Pole6[cy,cx] := 0;
    end else
    if H=9 then begin
    Pole9[ey,ex] := Pole9[cy,cx];
    Pole9[cy,cx] := 0;
    end else
    ex:=cx;
    ey:=cy;
    // отрисовать поле
    Form1.ShowPole;
    if Finish then
    begin
      if H=3 then
        pole3[3,3] := 9 else
        if H=4 then
         pole4[4,4] := 16 else
         if H=6 then
          pole6[6,6] := 36 else
          if H=9 then
           pole9[9,9] := 81;
        Form1.ShowPole;
        r := MessageDlg('Цель достигнута!'+ #13+
        'Еще раз?',mtInformation,[mbYes,mbNo],0);
        if r = mrNo then Form1.Close; // завершить работу программы
        Form1.NewGame(H,W);
    end;
end;

// щелчок в клетке
procedure TForm1.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
    cx,cy: integer; // координаты клетки
begin
    // преобразуем мыши в координаты клетки
    cx := Trunc(X / wc) + 1;
    cy := Trunc(Y / hc) + 1;
    Move(cx,cy);
end;

// выводит игровое поле
procedure TForm1.ShowPole;
var
    Source, Dest: Trect; // области: источник и приемник
    sx,sy: integer;      // левый верхний угол области источника
    i,j: integer;

begin

    // содержимое клеток
    for i := 1 to W do
        for j := 1 to H do
        begin
            // преобразуем номер картинки
            // в координаты левого верхнего
            // угла области источника
            if H=3 then begin
            sy := ((pole3[i,j] -1 ) div W) * hc;
            sx := ((pole3[i,j] -1 ) mod W) * wc;
             end else
             if H=4 then begin
            sy := ((pole4[i,j] -1 ) div W) * hc;
            sx := ((pole4[i,j] -1 ) mod W) * wc;
             end else
             if H=6 then begin
            sy := ((pole6[i,j] -1 ) div W) * hc;
            sx := ((pole6[i,j] -1 ) mod W) * wc;
             end else
             if H=9 then begin
            sy := ((pole9[i,j] -1 ) div W) * hc;
            sx := ((pole9[i,j] -1 ) mod W) * wc;
             end;
            Source := Bounds(sx,sy,wc,hc);
            Dest := Bounds((j-1)*wc,(i-1)*hc,wc,hc);
            if {pole3[i,j] or} pole4[i,j] {or pole6[i,j] or pole9[i,j]} <> 0
                then Canvas.CopyRect(Dest,pic.Canvas,Source)
                else Canvas.Rectangle((j-1)*wc,(i-1)*hc,j*wc,i*hc);
        end;
end;

// "перемешивает" фишки
procedure TForm1.Mixer;
var
    x1,y1: integer; // пустая клетка
    x2,y2: integer; // эту переместить в пустую
    d: integer;     // направление, относительно пустой
    i: integer;
begin
    x1:=H; y1:=W; // см. описание массива stp
    randomize;
    for i:= 1 to 5000 do  // кол-во перестановок
    begin
        repeat
            x2:=x1;
            y2:=y1;
            d:=random(H)+1;
            case d of
                1: dec(x2);
                2: inc(x2);
                3: dec(y2);
                4: inc(y2);
            end;
        until (x2>=1) and (x2<=H) and (y2>=1) and (y2<=H);
        // здесь определили фишку, которую
        // надо переместить в пустую клетку
        if H=3 then begin
        Pole3[y1,x1] := Pole3[y2,x2];
        Pole3[y2,x2] := 0;
        end else
          if H=4 then begin
        Pole4[y1,x1] := Pole4[y2,x2];
        Pole4[y2,x2] := 0;
        end else
         if H=6 then begin
        Pole6[y1,x1] := Pole6[y2,x2];
        Pole6[y2,x2] := 0;
        end else
         if H=9 then begin
        Pole9[y1,x1] := Pole9[y2,x2];
        Pole9[y2,x2] := 0;
        end;
        x1:=x2;
        y1:=y2;
    end;
    // запомним координаты пустой клетки
    ex:= x1;
    ey:= y1;
end;

// обработка события OnCreate
procedure TForm1.FormCreate(Sender: TObject);
begin
    pic := TBitMap.Create;
    NewGame(4,4);
end;

// обработка события OnPaint
procedure TForm1.FormPaint(Sender: TObject);
begin
    Form1.ShowPole;
end;

procedure TForm1.N3x31Click(Sender: TObject);
begin
   pic := TBitMap.Create;
NewGame(3,3);
end;

end.
