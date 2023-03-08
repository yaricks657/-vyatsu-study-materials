unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls;

type
    edge = (LEFT,RIGHT,BOTTOM,TOP);
    outcode = set of edge;
  { TForm1 }
    TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    PaintBox1: TPaintBox;
    Panel1: TPanel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PaintBox1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;
 x1,y1,x2,y2,xx1,yy1,xx2,yy2:integer;
  a,b,c:boolean;
  kek:integer;
  x,y : double;
  p,pp,ppp,pppp:Tpoint;


implementation

{$R *.lfm}

{ TForm1 }


function kod(x,y,xl,ya,xr,yb:integer):byte; //Присваивание кода точке с координатами (x,y)
var kp:byte;
begin
  kp:=0;
  if x<xl then kp:=kp or $01; //(xl,ya),(xr,yb) - координаты левого верхнего
  if y<ya then kp:=kp or $02; //и правого нижнего углов окна
  if x>xr then kp:=kp or $04;
  if y>yb then kp:=kp or $08;
  kod:=kp //kod - результирующий код
end;



procedure TForm1.Button2Click(Sender: TObject);
var p1,p2:byte;
    x0,y0:integer;
    stop:boolean;
begin
  begin
stop:=false;
repeat
  p1:=kod(x1,y1,xx1,yy1,xx2,yy2); //Присваивание кода точке с координатами (x,y)
  p2:=kod(x2,y2,xx1,yy1,xx2,yy2); // -//-
  if (not ((p1 and p2) <> 0)) then //Если отрезок полностью невидим
    begin
      if ((p1 = 0) and (p2 = 0)) then //Если отрезок видим полностью
        begin   //то рисуем его (проводим линию от точки с координатами (х1,y1) до точки - (x2,y2)
          PaintBox1.Canvas.FillRect(PaintBox1.ClientRect);
          PaintBox1.Canvas.Rectangle(xx1,yy1,xx2,yy2);
          PaintBox1.Canvas.MoveTo(x1,y1);
          PaintBox1.Canvas.LineTo(x2,y2);
          exit;
         end
      else
        begin
          if p1=0 then //Если р1=0 - поменять местами точки (x1,y1) и (x2,y2),чтобы обработка шла каждый раз с точки, находящейся вне окна
            begin
              x0:=x1;
              x1:=x2;
              x2:=x0;
              y0:=y1;
              y1:=y2;
              y2:=y0;
              p1:=p2;
            end;
          if x1< xx1 then //Если точка (x1,y1) - слева от окна - найти ее новые координаты по фор-мулам
            begin
              y1:=y1+(y2-y1)*(xx1-x1) div (x2-x1);
              x1:=xx1;
            end
          else if y1<yy1 then //Если точка (x1,y1) - выше окна - найти ее новые координаты по формулам
            begin
              x1:=x1+(x2-x1)*(yy1-y1)div(y2-y1);
              y1:=yy1;
            end
          else if x1>xx2 then //Если точка (x1,y1)- справа от окна - найти ее новые координаты по формулам
            begin
              y1:=y1+(y2-y1)*(xx2-x1) div (x2-x1);
              x1:=xx2;
            end
          else if y1>yy2 then
            begin
              x1:=x1+(x2-x1)*(yy2-y1) div (y2-y1);
              y1:=yy2;
            end;
        end;
    end
      else
        begin
          PaintBox1.Canvas.FillRect(PaintBox1.ClientRect);
          PaintBox1.Canvas.Rectangle(xx1,yy1,xx2,yy2);
          exit;
        end;
until stop;
end;
end;

procedure TForm1.Button3Click(Sender: TObject);
var i:integer;
begin
  kek:=0;
  Form1.Canvas.Pen.Color:=clBlack;
  i:=1;
  PaintBox1.Canvas.FillRect(form1.ClientRect); //Очищаем
end;

procedure TForm1.FormClick(Sender: TObject);
begin

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Form1.Close;
end;

procedure TForm1.PaintBox1Click(Sender: TObject);
begin
PaintBox1.Canvas.Pen.Color:=clBlack;
   if kek=0 then begin
       p := Mouse.CursorPos;
  p := ScreenToClient(p);
  xx1 := p.X;
  yy1 := p.Y;
   end;
   if kek=1 then begin
     pp := Mouse.CursorPos;
  pp := ScreenToClient(pp);
  xx2 := pp.X;
  yy2 := pp.Y;
   PaintBox1.Canvas.Rectangle(xx1,yy1,xx2,yy2);
   end;
   if kek=2 then
   begin
       ppp := Mouse.CursorPos;
  ppp := ScreenToClient(ppp);
  x1 := ppp.X;
  y1 := ppp.Y;
   end;
   if kek=3 then
   begin
        pppp := Mouse.CursorPos;
  pppp := ScreenToClient(pppp);
  x2 := pppp.X;
  y2 := pppp.Y;
   end;
   kek:=kek+1;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  kek:=0;
  a:=false;
  b:=false;
  c:=false;
end;


end.

