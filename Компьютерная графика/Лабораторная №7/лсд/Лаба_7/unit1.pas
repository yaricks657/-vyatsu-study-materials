unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type
    TXYZ=record
    x,y,z:real;
            end;
    tcub=record
    x,y,z:real;
         end;
    TXY=record
    x,y:integer;
        end;
  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
  private
    { private declarations }
  public
    procedure draw;
    procedure helper;
    procedure inition;
    procedure move(dx,dy,dz:integer);
    procedure proections(k, p: real);
    procedure Rast(kx,ky,kz:real);
    procedure simetrXOY;
    procedure simetrXOZ;
    procedure simetrYOZ;
    procedure vrash(x1,y1,z1:integer; q:real);
    procedure povorot(per:string; q:real);
    procedure blakcStar;
    { public declarations }
  end;
Const  p=45;f=35.264;

var
  Form1: TForm1;
  q:real;
  tkub:array[1..9] of tcub;
  xx,xy,xz,i:integer;
  v1:array [1..9] of TXY;
  help,temp:array[1..9] of TXYZ;
  v:array[1..9] of TXYZ=
      ((x:-100; y:-80; z: 0),
       (x:-100; y:  0; z: 0),
       (x:  0; y:  0; z: 0),
       (x:  0; y:-80; z: 0),
       (x:  0; y:-80; z:90),
       (x:  0; y:  0; z:90),
       (x:-100; y:  0; z:90),
       (x:-100; y:-80; z:90),
       (x:-50;y:-40;z:45));
implementation

{$R *.lfm}

procedure TForm1.draw;
begin
 Canvas.Line(v1[1].x+xx, v1[1].y+xy, v1[2].x+xx, v1[2].y+xy);
 Canvas.Line(v1[2].x+xx, v1[2].y+xy, v1[3].x+xx, v1[3].y+xy);
 Canvas.Line(v1[3].x+xx, v1[3].y+xy, v1[4].x+xx, v1[4].y+xy);
 Canvas.Line(v1[4].x+xx, v1[4].y+xy, v1[5].x+xx, v1[5].y+xy);
 Canvas.Line(v1[5].x+xx, v1[5].y+xy, v1[6].x+xx, v1[6].y+xy);
 Canvas.Line(v1[6].x+xx, v1[6].y+xy, v1[7].x+xx, v1[7].y+xy);
 Canvas.Line(v1[7].x+xx, v1[7].y+xy, v1[8].x+xx, v1[8].y+xy);
 Canvas.Line(v1[8].x+xx, v1[8].y+xy, v1[1].x+xx, v1[1].y+xy);
 Canvas.Line(v1[1].x+xx, v1[1].y+xy, v1[4].x+xx, v1[4].y+xy);
 Canvas.Line(v1[3].x+xx, v1[3].y+xy, v1[6].x+xx, v1[6].y+xy);
 Canvas.Line(v1[2].x+xx, v1[2].y+xy, v1[7].x+xx, v1[7].y+xy);
 Canvas.Line(v1[5].x+xx, v1[5].y+xy, v1[8].x+xx, v1[8].y+xy);
  Canvas.Line(v1[5].x+xx, v1[5].y+xy, v1[8].x+xx, v1[8].y+xy);


  Canvas.Line(v1[1].x+xx, v1[1].y+xy, v1[9].x+xx, v1[9].y+xy);
  Canvas.Line(v1[2].x+xx, v1[2].y+xy, v1[9].x+xx, v1[9].y+xy);
  Canvas.Line(v1[3].x+xx, v1[3].y+xy, v1[9].x+xx, v1[9].y+xy);
  Canvas.Line(v1[4].x+xx, v1[4].y+xy, v1[9].x+xx, v1[9].y+xy);
  Canvas.Line(v1[5].x+xx, v1[5].y+xy, v1[9].x+xx, v1[9].y+xy);
  Canvas.Line(v1[6].x+xx, v1[6].y+xy, v1[9].x+xx, v1[9].y+xy);
  Canvas.Line(v1[7].x+xx, v1[7].y+xy, v1[9].x+xx, v1[9].y+xy);
  Canvas.Line(v1[8].x+xx, v1[8].y+xy, v1[9].x+xx, v1[9].y+xy);
end;

procedure TForm1.helper; //Доп. массив векторов
begin
 for i:=1 to 9 do begin
   help[i].x:=v[i].x;
   help[i].y:=v[i].y;
   help[i].z:=v[i].z;
 end;
end;

procedure TForm1.inition; //Доп. массив векторов
begin
 for i:=1 to 9 do begin
   temp[i].x:=v[i].x;
   temp[i].y:=v[i].y;
   temp[i].z:=v[i].z;
 end;
end;
procedure TForm1.blakcStar;
begin
  for i:=1 to 9 do begin
  v[i].x:=temp[i].x;
  v[i].y:=temp[i].y;
  v[i].z:=temp[i].z;
  end;
  proections(p*Pi/180,f*Pi/180);
  Canvas.Pen.Color:=clBlack;
  draw;
end;

procedure TForm1.move(dx,dy,dz:integer); //движение фигуры
begin
 for i:=1 to 9 do begin
   v[i].x:=v[i].x+dx;
   v[i].y:=v[i].y+dy;
   v[i].z:=v[i].z+dz;
 end;
 proections(p*Pi/180,f*Pi/180); //Получение новых координат фигуры
end;

procedure TForm1.proections(k, p: real); //Получение новых координат фигуры
begin
 for i:=1 to 9 do begin
   v1[i].x:=round(V[i].x*cos(p)+V[i].z*sin(p));
   v1[i].y:=round(-V[i].x*sin(k)*sin(p)+V[i].y*cos(k)+V[i].z*sin(k)*cos(p));
 end;
end;

procedure TForm1.Rast(kx,ky,kz:real); //растяжение и сжатие
begin  //растяжение при коэф. >1, а сжатие при коэф.<1
 for i:=1 to 9 do begin
   v[i].x:=round(v[i].x*kx);//kx,ky,kz-коэффициенты искажения вдоль осей ox,oy,oz, соответственно.
   v[i].y:=round(v[i].y*ky);
   v[i].z:=round(v[i].z*kz);
 end;
end;

procedure TForm1.simetrXOY;//отражение фигуры относительно оси XOY
begin
 for i:=1 to 9 do begin
   v[i].x:=v[i].x;
   v[i].y:=v[i].y;
   v[i].z:=-v[i].z;
 end;
end;

procedure TForm1.simetrXOZ;//отражение фигуры относительно оси XOZ
begin
 for i:=1 to 9 do begin
   v[i].x:=v[i].x;
   v[i].y:=-v[i].y;
   v[i].z:=v[i].z;
 end;
end;

procedure TForm1.simetrYOZ;//отражение фигуры относительно оси YOZ
begin
 for i:=1 to 9 do begin
   v[i].x:=-v[i].x;
   v[i].y:=v[i].y;
   v[i].z:=v[i].z;
 end;
end;

procedure TForm1.vrash(x1,y1,z1:integer; q:real);// вращение фигуры по диагонали
var n1,n2,n3,x,y,z:real;
begin
n1:=x1/sqrt(sqr(x1)+sqr(y1)+sqr(z1)); //n1,n2,n3 - направляющие косинусы вращения
n2:=y1/sqrt(sqr(x1)+sqr(y1)+sqr(z1)); //x1,y1,z1 - начало координат
n3:=z1/sqrt(sqr(x1)+sqr(y1)+sqr(z1));

for i:=1 to 9 do
 begin
  tkub[i].x:=v[i].x;
  tkub[i].y:=v[i].y;
  tkub[i].z:=v[i].z;
 end;
for i:=1 to 9 do
begin
x:=tkub[i].x;
y:=tkub[i].y;
z:=tkub[i].z;
tkub[i].x:=(x*(n1*n1+(1-n1*n1)*cos(q))+    y*(n1*n2*(1-cos(q))-n3*sin(q))+z*(n1*n3*(1-cos(q))+n2*sin(q)));
tkub[i].y:=(x*(n1*n2*(1-cos(q))+n3*sin(q))+y*(n2*n2+(1-n2*n2)*cos(q))+    z*(n2*n3*(1-cos(q))-n1*sin(q)));
tkub[i].z:=(x*(n1*n3*(1-cos(q))-n2*sin(q))+y*(n2*n3*(1-cos(q))+n1*sin(q))+z*(n3*n3+(1-n3*n3)*cos(q)));
v[i].x:=tkub[i].x;
v[i].y:=tkub[i].y;
v[i].z:=tkub[i].z;

end;
end;

procedure TForm1.povorot(per:string; q:real);
begin  //абсцисс(ox), ординат (oy), аппликат(oz).
case per of
'ox':begin
helper;
for i:=1 to (9) do begin
v[i].x:=help[i].x;
v[i].y:=round( help[i].y*Cos(q)-help[i].z*Sin(q) );
v[i].z:=round( help[i].y*Sin(q)+help[i].z*Cos(q) );
end;
end;
'oz':begin
helper;
for i:=1 to 9 do begin
v[i].x:=round( help[i].x*Cos(q)+help[i].z*Sin(q) );
v[i].y:=help[i].y;
v[i].z:=round( -help[i].x*Sin(q)+help[i].z*Cos(q) );
end;
end;
'oy':begin
helper;
for i:=1 to 9 do begin
v[i].x:=round( help[i].x*Cos(q)-help[i].y*Sin(q) );
v[i].y:=round( help[i].x*Sin(q)+help[i].y*Cos(q) );
v[i].z:=help[i].z;
end;
end;
end;
end;

procedure TForm1.Button1Click(Sender: TObject); //рисование
begin
 inition;
 Canvas.Brush.Color:=clWhite;
 Canvas.FillRect(Canvas.ClipRect);
       v[1].x:=-100; v[1].y:=-80; v[1].z:= 0;
       v[2].x:=-100; v[2].y:=  0; v[2].z:= 0;
       v[3].x:=  0; v[3].y:=  0; v[3].z:= 0;
       v[4].x:=  0; v[4].y:=-80; v[4].z:=0;
       v[5].x:=  0; v[5].y:=-80; v[5].z:=90;
       v[6].x:=  0; v[6].y:=  0; v[6].z:=90;
       v[7].x:=-100; v[7].y:=  0; v[7].z:=90;
       v[8].x:=-100; v[8].y:=-80; v[8].z:=90;
       v[9].x:=-50; v[9].y:=-40; v[9].z:=45;
   xx:=220; xy:=210;       //смешение
   proections(p*Pi/180,f*Pi/180); //Получение новых координат фигуры
 Canvas.Pen.Color:=clBlack;
 draw;
end;

procedure TForm1.Button2Click(Sender: TObject);//сдвиг
begin
Canvas.Pen.Color:=clWhite;
draw;
  Canvas.Pen.Color:=clBlack;
  move(10,10,0);
  draw;
end;
procedure TForm1.Button3Click(Sender: TObject);//отразить по ox
begin
Canvas.Pen.Color:=clWhite;
draw;
blakcStar;
  simetrXOY;
  proections(p*Pi/180,f*Pi/180);
  Canvas.Pen.Color:=clred;
  draw;
end;

procedure TForm1.Button4Click(Sender: TObject);//отразить по oy
begin
Canvas.Pen.Color:=clWhite;
draw;
blakcStar;
  simetrXOZ;
  proections(p*Pi/180,f*Pi/180);
  Canvas.Pen.Color:=clred;
  draw;
end;

procedure TForm1.Button5Click(Sender: TObject);//отразить по oz
begin
Canvas.Pen.Color:=clWhite;
draw;
blakcStar;
  simetrYOZ;
  proections(p*Pi/180,f*Pi/180);
  Canvas.Pen.Color:=clred;
  draw;
end;

procedure TForm1.Button6Click(Sender: TObject);//увеличени
begin
Canvas.Pen.Color:=clWhite;
draw;
  Canvas.Pen.Color:=clBlack;
  Rast(2,2,2);
  proections(p*Pi/180,f*Pi/180);
  draw;
end;

procedure TForm1.Button7Click(Sender: TObject);//уменьшение
begin
Canvas.Pen.Color:=clWhite;
draw;
  Canvas.Pen.Color:=clBlack;
  Rast(0.5,0.5,0.5);
  proections(p*Pi/180,f*Pi/180);
  draw;
end;

procedure TForm1.Button8Click(Sender: TObject);//вращать по ox
begin
form1.button1.Click;
inition;
q:=0;
While q<1.1 do begin
  Canvas.Pen.Color:=clWhite;
  draw; //Рисование фигуры
  povorot('ox',q);
  proections(p*Pi/180,f*Pi/180); //Получение новых координат фигуры
  Canvas.Pen.Color:=clRed;
  draw; //Рисование фигуры
sleep(100);
q:=q+0.05;
end;
  Canvas.Pen.Color:=clred;
 draw; //Рисование фигуры
 for i:=1 to 9 do begin
   v[i].x:=temp[i].x;
   v[i].y:=temp[i].y;
   v[i].z:=temp[i].z;
   end;
   Canvas.Pen.Color:=clWhite;
   draw;
proections(p*Pi/180,f*Pi/180); //Получение новых координат фигуры
Canvas.Pen.Color:=clBlack;
draw; //Рисование фигуры
end;

procedure TForm1.Button9Click(Sender: TObject);//вращать по oy
begin
form1.button1.Click;
inition;
q:=0;
While q<1.1 do begin
  Canvas.Pen.Color:=clWhite;
  draw; //Рисование фигуры
  povorot('oy',q);
  proections(p*Pi/180,f*Pi/180); //Получение новых координат фигуры
  Canvas.Pen.Color:=clRed;
  draw; //Рисование фигуры
sleep(100);
q:=q+0.05;
end;
  Canvas.Pen.Color:=clred;
  draw; //Рисование фигуры
 for i:=1 to 9 do begin
   v[i].x:=temp[i].x;
   v[i].y:=temp[i].y;
   v[i].z:=temp[i].z;
   end;
   Canvas.Pen.Color:=clWhite;
   draw;
proections(p*Pi/180,f*Pi/180); //Получение новых координат фигуры
Canvas.Pen.Color:=clBlack;
draw; //Рисование фигуры
end;

procedure TForm1.Button10Click(Sender: TObject);//вращать по oz
begin
form1.button1.Click;
inition;
q:=0;
While q<1.1 do begin
  Canvas.Pen.Color:=clWhite;
  draw; //Рисование фигуры
  povorot('oz',q);
  proections(p*Pi/180,f*Pi/180); //Получение новых координат фигуры
  Canvas.Pen.Color:=clRed;
  draw; //Рисование фигуры
sleep(100);
q:=q+0.05;
end;
  Canvas.Pen.Color:=clred;
 draw; //Рисование фигуры
 for i:=1 to 9 do begin
   v[i].x:=temp[i].x;
   v[i].y:=temp[i].y;
   v[i].z:=temp[i].z;
   end;
   Canvas.Pen.Color:=clWhite;
   draw;
proections(p*Pi/180,f*Pi/180); //Получение новых координат фигуры
Canvas.Pen.Color:=clBlack;
draw; //Рисование фигуры
end;

procedure TForm1.Button11Click(Sender: TObject);
var j:integer;
begin
form1.button1.Click;
for j:=1 to 200 do begin
  Canvas.Pen.Color:= clWhite;
  draw;
  vrash(-50,-40,-45,-pi/50);
  proections(p*Pi/180,f*Pi/180); //Получение новых координат фигуры
  Canvas.Pen.Color:= clred;
  draw; //Рисование фигуры
  sleep(100);
end;
end;

procedure TForm1.Button12Click(Sender: TObject);
var j:integer;
begin
form1.button1.Click;
for j:=1 to 100 do begin
  Canvas.Pen.Color:= clWhite;
  draw; //Рисование фигуры
  vrash(-50,-40,-45,pi/50);
  proections(p*Pi/180,f*Pi/180); //Получение новых координат фигуры
  Canvas.Pen.Color:= clRed;
  draw; //Рисование фигуры
  sleep(100);
end;
end;

end.

