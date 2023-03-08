unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  Menus;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button5: TButton;
    Panel1: TPanel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

type
TXYZ=record x,y,z:real; end;

var m:array [1..4,1..4] of real;
   mm:array [1..8,1..4] of real;
  V:array[0..7] of TXYZ= (
(x:-15;y: 25;z:-35),
(x:-15;y:-25;z:-35),
(x: 15;y:-25;z:-35),
(x: 15;y: 25;z:-35),
(x: 15;y: 25;z: 35),
(x: 15;y:-25;z: 35),
(x:-15;y:-25;z: 35),
(x:-15;y: 25;z: 35));
   VVV:array[0..7] of TXYZ= (
(x:-15;y: 25;z:-35),
(x:-15;y:-25;z:-35),
(x: 15;y:-25;z:-35),
(x: 15;y: 25;z:-35),
(x: 15;y: 25;z: 35),
(x: 15;y:-25;z: 35),
(x:-15;y:-25;z: 35),
(x:-15;y: 25;z: 35));
  i,j,k,l,x,y,z:integer;
  v1:array[1..8] of TXYZ;
sx,sy:integer;
  VV:array [1..8,1..4] of real =((-15,25,-35,1),(-15,-25,-35,1),(15,-25,-35,1),
  (15,25,-35,1),(15,25,35,1),(15,-25,35,1),(-15,-25,35,1),(-15,25,35,1));
  summa:real;

{$R *.lfm}

{ TForm1 }


Procedure DrawLine1( a, b: TXYZ);
Function cX( X, Z : real ) : real;
   Begin
     cX := (X + ((Form1.Width)Div 2)) - Z;
   End;
 Function cY( Y, Z : real ) : real;
   Begin
     cY := ((Form1.Top+300) Div 2) - Y + Z;
   End;
 begin
  Form1.Canvas.Line(round(cX(a.x, a.Z)), round(cY(a.y, a.Z)), round(cX(b.x, b.Z)), round(cY(b.y, b.Z)));
end;

Procedure DrawLine2( a, b: TXYZ);
Function cX( X, Z : real) : real;
   Begin
     cX := (X + ((Form1.Width+250) Div 2)) - Z;
   End; 
 Function cY( Y, Z : real ) : real;
   Begin
     cY := ((Form1.Top+400) Div 2) - Y + Z;
   End;
 begin
  Form1.Canvas.Line(round(cX(a.x, a.Z)), round(cY(a.y, a.Z)), round(cX(b.x, b.Z)), round(cY(b.y, b.Z)));
end;

Procedure DrawLine3( a, b: TXYZ);
Function cX( X, Z : real ) : real;
   Begin
     cX := (X + ((Form1.Width+500) Div 2)) - Z;
   End;
 Function cY( Y, Z : real ) : real;
   Begin
     cY := ((Form1.Top+400) Div 2) - Y + Z;
   End;
 begin
  Form1.Canvas.Line(round(cX(a.x, a.Z)), round(cY(a.y, a.Z)), round(cX(b.x, b.Z)), round(cY(b.y, b.Z)));
end;


procedure formul(k,d:real);
begin
  for i:=0 to 7 do begin
    vvv[i].x:=round(V[i].x*cos(d)+V[i].z*sin(d));
    vvv[i].y:=round(-V[i].x*sin(k)*sin(d)+V[i].y*cos(k)+V[i].z*sin(k)*cos(d));
  end;
end;



procedure TForm1.Button5Click(Sender: TObject);
begin
  Form1.Canvas.Pen.Color:=clWhite;
 for i:=0 to 400 do
   Form1.Canvas.Line(0,i,1000,i);
 Form1.Canvas.Pen.Color:=clBlack;
 DrawLine1(v[0],v[1]);
 DrawLine1(v[1],v[2]);
 DrawLine1(v[2],v[3]);
 DrawLine1(v[3],v[0]);
 DrawLine1(v[0],v[7]);
 DrawLine1(v[1],v[6]);
 DrawLine1(v[2],v[5]);
 DrawLine1(v[3],v[4]);
 DrawLine1(v[4],v[5]);
 DrawLine1(v[5],v[6]);
 DrawLine1(v[6],v[7]);
 DrawLine1(v[7],v[4]);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Form1.Canvas.Pen.Color:=clWhite;
 for i:=0 to 400 do
   Form1.Canvas.Line(0,i,1000,i);
 Form1.Canvas.Pen.Color:=clBlack;
 for i:=1 to 4 do
   for j:=1 to 4 do
     m[i,j]:=0;
 m[2,2]:=1;
 m[3,3]:=1;
 m[4,4]:=1;
    for j:=1 to 4 do
      begin
        Summa:= 0;
        for l:= 1 to 4 do
          Summa:= Summa + vv[1,l]*m[l,j];
          mm[1,j] := Summa;
      end;
    for j:=1 to 4 do
      begin
        Summa:= 0;
        for l:= 1 to 4 do
          Summa:= Summa + vv[2,l]*m[l,j];
          mm[2,j] := Summa;
      end;
    for j:=1 to 4 do
      begin
        Summa:= 0;
        for l:= 1 to 4 do
          Summa:= Summa + vv[3,l]*m[l,j];
          mm[3,j] := Summa;
      end;
    for j:=1 to 4 do
      begin
        Summa:= 0;
        for l:= 1 to 4 do
          Summa:= Summa + vv[4,l]*m[l,j];
          mm[4,j] := Summa;
      end;
    for j:=1 to 4 do
      begin
        Summa:= 0;
        for l:= 1 to 4 do
          Summa:= Summa + vv[5,l]*m[l,j];
          mm[5,j] := Summa;
      end;
    for j:=1 to 4 do
      begin
        Summa:= 0;
        for l:= 1 to 4 do
          Summa:= Summa + vv[6,l]*m[l,j];
          mm[6,j] := Summa;
      end;
    for j:=1 to 4 do
      begin
        Summa:= 0;
        for l:= 1 to 4 do
          Summa:= Summa + vv[7,l]*m[l,j];
          mm[7,j] := Summa;
      end;
    for j:=1 to 4 do
      begin
        Summa:= 0;
        for l:= 1 to 4 do
          Summa:= Summa + vv[8,l]*m[l,j];
          mm[8,j] := Summa;
      end;
  vvv[0].x:=mm[1,1];
   vvv[0].y:=mm[1,2];
    vvv[0].z:=mm[1,3];
     vvv[1].x:=mm[2,1];
   vvv[1].y:=mm[2,2];
    vvv[1].z:=mm[2,3];
     vvv[2].x:=mm[3,1];
   vvv[2].y:=mm[3,2];
    vvv[2].z:=mm[3,3];
     vvv[3].x:=mm[4,1];
   vvv[3].y:=mm[4,2];
    vvv[3].z:=mm[4,3];
     vvv[4].x:=mm[5,1];
   vvv[4].y:=mm[5,2];
    vvv[4].z:=mm[5,3];
    vvv[5].x:=mm[6,1];
   vvv[5].y:=mm[6,2];
    vvv[5].z:=mm[6,3];
     vvv[6].x:=mm[7,1];
   vvv[6].y:=mm[7,2];
    vvv[6].z:=mm[7,3];
     vvv[7].x:=mm[8,1];
   vvv[7].y:=mm[8,2];
    vvv[7].z:=mm[8,3];
     DrawLine1(vvv[0],vvv[1]);
 DrawLine1(vvv[1],vvv[2]);
 DrawLine1(vvv[2],vvv[3]);
 DrawLine1(vvv[3],vvv[0]);
 DrawLine1(vvv[0],vvv[7]);
 DrawLine1(vvv[1],vvv[6]);
 DrawLine1(vvv[2],vvv[5]);
 DrawLine1(vvv[3],vvv[4]);
 DrawLine1(vvv[4],vvv[5]);
 DrawLine1(vvv[5],vvv[6]);
 DrawLine1(vvv[6],vvv[7]);
 DrawLine1(vvv[7],vvv[4]);
 for i:=1 to 4 do
   for j:=1 to 4 do
     m[i,j]:=0;
 m[1,1]:=1;
 m[3,3]:=1;
 m[4,4]:=1;
    for j:=1 to 4 do
      begin
        Summa:= 0;
        for l:= 1 to 4 do
          Summa:= Summa + vv[1,l]*m[l,j];
          mm[1,j] := Summa;
      end;
    for j:=1 to 4 do
      begin
        Summa:= 0;
        for l:= 1 to 4 do
          Summa:= Summa + vv[2,l]*m[l,j];
          mm[2,j] := Summa;
      end;
    for j:=1 to 4 do
      begin
        Summa:= 0;
        for l:= 1 to 4 do
          Summa:= Summa + vv[3,l]*m[l,j];
          mm[3,j] := Summa;
      end;
    for j:=1 to 4 do
      begin
        Summa:= 0;
        for l:= 1 to 4 do
          Summa:= Summa + vv[4,l]*m[l,j];
          mm[4,j] := Summa;
      end;
    for j:=1 to 4 do
      begin
        Summa:= 0;
        for l:= 1 to 4 do
          Summa:= Summa + vv[5,l]*m[l,j];
          mm[5,j] := Summa;
      end;
    for j:=1 to 4 do
      begin
        Summa:= 0;
        for l:= 1 to 4 do
          Summa:= Summa + vv[6,l]*m[l,j];
          mm[6,j] := Summa;
      end;
    for j:=1 to 4 do
      begin
        Summa:= 0;
        for l:= 1 to 4 do
          Summa:= Summa + vv[7,l]*m[l,j];
          mm[7,j] := Summa;
      end;
    for j:=1 to 4 do
      begin
        Summa:= 0;
        for l:= 1 to 4 do
          Summa:= Summa + vv[8,l]*m[l,j];
          mm[8,j] := Summa;
      end;
  vvv[0].x:=mm[1,1];
   vvv[0].y:=mm[1,2];
    vvv[0].z:=mm[1,3];
     vvv[1].x:=mm[2,1];
   vvv[1].y:=mm[2,2];
    vvv[1].z:=mm[2,3];
     vvv[2].x:=mm[3,1];
   vvv[2].y:=mm[3,2];
    vvv[2].z:=mm[3,3];
     vvv[3].x:=mm[4,1];
   vvv[3].y:=mm[4,2];
    vvv[3].z:=mm[4,3];
     vvv[4].x:=mm[5,1];
   vvv[4].y:=mm[5,2];
    vvv[4].z:=mm[5,3];
    vvv[5].x:=mm[6,1];
   vvv[5].y:=mm[6,2];
    vvv[5].z:=mm[6,3];
     vvv[6].x:=mm[7,1];
   vvv[6].y:=mm[7,2];
    vvv[6].z:=mm[7,3];
     vvv[7].x:=mm[8,1];
   vvv[7].y:=mm[8,2];
    vvv[7].z:=mm[8,3];
     DrawLine2(vvv[0],vvv[1]);
 DrawLine2(vvv[1],vvv[2]);
 DrawLine2(vvv[2],vvv[3]);
 DrawLine2(vvv[3],vvv[0]);
 DrawLine2(vvv[0],vvv[7]);
 DrawLine2(vvv[1],vvv[6]);
 DrawLine2(vvv[2],vvv[5]);
 DrawLine2(vvv[3],vvv[4]);
 DrawLine2(vvv[4],vvv[5]);
 DrawLine2(vvv[5],vvv[6]);
 DrawLine2(vvv[6],vvv[7]);
 DrawLine2(vvv[7],vvv[4]);
 for i:=1 to 4 do
   for j:=1 to 4 do
     m[i,j]:=0;
 m[1,1]:=1;
 m[2,2]:=1;
 m[4,4]:=1;
    for j:=1 to 4 do
      begin
        Summa:= 0;
        for l:= 1 to 4 do
          Summa:= Summa + vv[1,l]*m[l,j];
          mm[1,j] := Summa;
      end;
    for j:=1 to 4 do
      begin
        Summa:= 0;
        for l:= 1 to 4 do
          Summa:= Summa + vv[2,l]*m[l,j];
          mm[2,j] := Summa;
      end;
    for j:=1 to 4 do
      begin
        Summa:= 0;
        for l:= 1 to 4 do
          Summa:= Summa + vv[3,l]*m[l,j];
          mm[3,j] := Summa;
      end;
    for j:=1 to 4 do
      begin
        Summa:= 0;
        for l:= 1 to 4 do
          Summa:= Summa + vv[4,l]*m[l,j];
          mm[4,j] := Summa;
      end;
    for j:=1 to 4 do
      begin
        Summa:= 0;
        for l:= 1 to 4 do
          Summa:= Summa + vv[5,l]*m[l,j];
          mm[5,j] := Summa;
      end;
    for j:=1 to 4 do
      begin
        Summa:= 0;
        for l:= 1 to 4 do
          Summa:= Summa + vv[6,l]*m[l,j];
          mm[6,j] := Summa;
      end;
    for j:=1 to 4 do
      begin
        Summa:= 0;
        for l:= 1 to 4 do
          Summa:= Summa + vv[7,l]*m[l,j];
          mm[7,j] := Summa;
      end;
    for j:=1 to 4 do
      begin
        Summa:= 0;
        for l:= 1 to 4 do
          Summa:= Summa + vv[8,l]*m[l,j];
          mm[8,j] := Summa;
      end;
  vvv[0].x:=mm[1,1];
   vvv[0].y:=mm[1,2];
    vvv[0].z:=mm[1,3];
     vvv[1].x:=mm[2,1];
   vvv[1].y:=mm[2,2];
    vvv[1].z:=mm[2,3];
     vvv[2].x:=mm[3,1];
   vvv[2].y:=mm[3,2];
    vvv[2].z:=mm[3,3];
     vvv[3].x:=mm[4,1];
   vvv[3].y:=mm[4,2];
    vvv[3].z:=mm[4,3];
     vvv[4].x:=mm[5,1];
   vvv[4].y:=mm[5,2];
    vvv[4].z:=mm[5,3];
    vvv[5].x:=mm[6,1];
   vvv[5].y:=mm[6,2];
    vvv[5].z:=mm[6,3];
     vvv[6].x:=mm[7,1];
   vvv[6].y:=mm[7,2];
    vvv[6].z:=mm[7,3];
     vvv[7].x:=mm[8,1];
   vvv[7].y:=mm[8,2];
    vvv[7].z:=mm[8,3];
     DrawLine3(vvv[0],vvv[1]);
 DrawLine3(vvv[1],vvv[2]);
 DrawLine3(vvv[2],vvv[3]);
 DrawLine3(vvv[3],vvv[0]);
 DrawLine3(vvv[0],vvv[7]);
 DrawLine3(vvv[1],vvv[6]);
 DrawLine3(vvv[2],vvv[5]);
 DrawLine3(vvv[3],vvv[4]);
 DrawLine3(vvv[4],vvv[5]);
 DrawLine3(vvv[5],vvv[6]);
 DrawLine3(vvv[6],vvv[7]);
 DrawLine3(vvv[7],vvv[4]);
end;



procedure TForm1.Button2Click(Sender: TObject);
var p,k:real;//то
begin
  {Form1.Canvas.Pen.Color:=clWhite;
 for i:=0 to 400 do
   Form1.Canvas.Line(0,i,1000,i);
 Form1.Canvas.Pen.Color:=clBlack;
   for i:=1 to 4 do
   for j:=1 to 4 do
     m[i,j]:=0;
 m[1,1]:=cos(45);//3.14/4
 m[2,2]:=cos(35.264 );        //0.6155
 m[3,1]:=sin(45);
 m[1,2]:=sin(35.264 )*sin(45);
 m[3,2]:=sin(35.264 )*cos(45);
 m[4,4]:=1;
    for j:=1 to 4 do
      begin
        Summa:= 0;
        for l:= 1 to 4 do
          Summa:= Summa + vv[1,l]*m[l,j];
          mm[1,j] := Summa;
      end;
    for j:=1 to 4 do
      begin
        Summa:= 0;
        for l:= 1 to 4 do
          Summa:= Summa + vv[2,l]*m[l,j];
          mm[2,j] := Summa;
      end;
    for j:=1 to 4 do
      begin
        Summa:= 0;
        for l:= 1 to 4 do
          Summa:= Summa + vv[3,l]*m[l,j];
          mm[3,j] := Summa;
      end;
    for j:=1 to 4 do
      begin
        Summa:= 0;
        for l:= 1 to 4 do
          Summa:= Summa + vv[4,l]*m[l,j];
          mm[4,j] := Summa;
      end;
    for j:=1 to 4 do
      begin
        Summa:= 0;
        for l:= 1 to 4 do
          Summa:= Summa + vv[5,l]*m[l,j];
          mm[5,j] := Summa;
      end;
    for j:=1 to 4 do
      begin
        Summa:= 0;
        for l:= 1 to 4 do
          Summa:= Summa + vv[6,l]*m[l,j];
          mm[6,j] := Summa;
      end;
    for j:=1 to 4 do
      begin
        Summa:= 0;
        for l:= 1 to 4 do
          Summa:= Summa + vv[7,l]*m[l,j];
          mm[7,j] := Summa;
      end;
    for j:=1 to 4 do
      begin
        Summa:= 0;
        for l:= 1 to 4 do
          Summa:= Summa + vv[8,l]*m[l,j];
          mm[8,j] := Summa;
      end;
  vvv[0].x:=mm[1,1];
   vvv[0].y:=mm[1,2];
    vvv[0].z:=mm[1,3];
     vvv[1].x:=mm[2,1];
   vvv[1].y:=mm[2,2];
    vvv[1].z:=mm[2,3];
     vvv[2].x:=mm[3,1];
   vvv[2].y:=mm[3,2];
    vvv[2].z:=mm[3,3];
     vvv[3].x:=mm[4,1];
   vvv[3].y:=mm[4,2];
    vvv[3].z:=mm[4,3];
     vvv[4].x:=mm[5,1];
   vvv[4].y:=mm[5,2];
    vvv[4].z:=mm[5,3];
    vvv[5].x:=mm[6,1];
   vvv[5].y:=mm[6,2];
    vvv[5].z:=mm[6,3];
     vvv[6].x:=mm[7,1];
   vvv[6].y:=mm[7,2];
    vvv[6].z:=mm[7,3];
     vvv[7].x:=mm[8,1];
   vvv[7].y:=mm[8,2];
    vvv[7].z:=mm[8,3];   }
 p:=22.208; //k и p - углы, которые нормаль к картинной плоскости образует
 k:=20.705;
 sx:=190;
 sy:=220;
 formul(p*pi/180,k*pi/180);
     DrawLine1(vvv[0],vvv[1]);
 DrawLine1(vvv[1],vvv[2]);
 DrawLine1(vvv[2],vvv[3]);
 DrawLine1(vvv[3],vvv[0]);
 DrawLine1(vvv[0],vvv[7]);
 DrawLine1(vvv[1],vvv[6]);
 DrawLine1(vvv[2],vvv[5]);
 DrawLine1(vvv[3],vvv[4]);
 DrawLine1(vvv[4],vvv[5]);
 DrawLine1(vvv[5],vvv[6]);
 DrawLine1(vvv[6],vvv[7]);
 DrawLine1(vvv[7],vvv[4]);
 for i:=1 to 4 do
   for j:=1 to 4 do
     m[i,j]:=0;
 m[1,1]:=cos(0.3876);
 m[2,2]:=cos(0.3614 );
 m[3,1]:=sin(0.3876);
 m[1,2]:=sin(0.3614)*sin(0.3876);
 m[3,2]:=sin(0.3614)*cos(0.3876);
 m[4,4]:=1;
    for j:=1 to 4 do
      begin
        Summa:= 0;
        for l:= 1 to 4 do
          Summa:= Summa + vv[1,l]*m[l,j];
          mm[1,j] := Summa;
      end;
    for j:=1 to 4 do
      begin
        Summa:= 0;
        for l:= 1 to 4 do
          Summa:= Summa + vv[2,l]*m[l,j];
          mm[2,j] := Summa;
      end;
    for j:=1 to 4 do
      begin
        Summa:= 0;
        for l:= 1 to 4 do
          Summa:= Summa + vv[3,l]*m[l,j];
          mm[3,j] := Summa;
      end;
    for j:=1 to 4 do
      begin
        Summa:= 0;
        for l:= 1 to 4 do
          Summa:= Summa + vv[4,l]*m[l,j];
          mm[4,j] := Summa;
      end;
    for j:=1 to 4 do
      begin
        Summa:= 0;
        for l:= 1 to 4 do
          Summa:= Summa + vv[5,l]*m[l,j];
          mm[5,j] := Summa;
      end;
    for j:=1 to 4 do
      begin
        Summa:= 0;
        for l:= 1 to 4 do
          Summa:= Summa + vv[6,l]*m[l,j];
          mm[6,j] := Summa;
      end;
    for j:=1 to 4 do
      begin
        Summa:= 0;
        for l:= 1 to 4 do
          Summa:= Summa + vv[7,l]*m[l,j];
          mm[7,j] := Summa;
      end;
    for j:=1 to 4 do
      begin
        Summa:= 0;
        for l:= 1 to 4 do
          Summa:= Summa + vv[8,l]*m[l,j];
          mm[8,j] := Summa;
      end;
  vvv[0].x:=mm[1,1];
   vvv[0].y:=mm[1,2];
    vvv[0].z:=mm[1,3];
     vvv[1].x:=mm[2,1];
   vvv[1].y:=mm[2,2];
    vvv[1].z:=mm[2,3];
     vvv[2].x:=mm[3,1];
   vvv[2].y:=mm[3,2];
    vvv[2].z:=mm[3,3];
     vvv[3].x:=mm[4,1];
   vvv[3].y:=mm[4,2];
    vvv[3].z:=mm[4,3];
     vvv[4].x:=mm[5,1];
   vvv[4].y:=mm[5,2];
    vvv[4].z:=mm[5,3];
    vvv[5].x:=mm[6,1];
   vvv[5].y:=mm[6,2];
    vvv[5].z:=mm[6,3];
     vvv[6].x:=mm[7,1];
   vvv[6].y:=mm[7,2];
    vvv[6].z:=mm[7,3];
     vvv[7].x:=mm[8,1];
   vvv[7].y:=mm[8,2];
    vvv[7].z:=mm[8,3];
     DrawLine2(vvv[0],vvv[1]);
 DrawLine2(vvv[1],vvv[2]);
 DrawLine2(vvv[2],vvv[3]);
 DrawLine2(vvv[3],vvv[0]);
 DrawLine2(vvv[0],vvv[7]);
 DrawLine2(vvv[1],vvv[6]);
 DrawLine2(vvv[2],vvv[5]);
 DrawLine2(vvv[3],vvv[4]);
 DrawLine2(vvv[4],vvv[5]);
 DrawLine2(vvv[5],vvv[6]);
 DrawLine2(vvv[6],vvv[7]);
 DrawLine2(vvv[7],vvv[4]);
 for i:=1 to 4 do
   for j:=1 to 4 do
     m[i,j]:=0;
 m[1,1]:=cos(45);
 m[2,2]:=cos(35.264);
 m[3,1]:=sin(45);
 m[1,2]:=sin(35.264)*sin(45);
 m[3,2]:=sin(35.264)*cos(45);
 m[4,4]:=1;
  {  for j:=1 to 4 do
      begin
        Summa:= 0;
        for l:= 1 to 4 do
          Summa:= Summa + vv[1,l]*m[l,j];
          mm[1,j] := Summa;
      end;
    for j:=1 to 4 do
      begin
        Summa:= 0;
        for l:= 1 to 4 do
          Summa:= Summa + vv[2,l]*m[l,j];
          mm[2,j] := Summa;
      end;
    for j:=1 to 4 do
      begin
        Summa:= 0;
        for l:= 1 to 4 do
          Summa:= Summa + vv[3,l]*m[l,j];
          mm[3,j] := Summa;
      end;
    for j:=1 to 4 do
      begin
        Summa:= 0;
        for l:= 1 to 4 do
          Summa:= Summa + vv[4,l]*m[l,j];
          mm[4,j] := Summa;
      end;
    for j:=1 to 4 do
      begin
        Summa:= 0;
        for l:= 1 to 4 do
          Summa:= Summa + vv[5,l]*m[l,j];
          mm[5,j] := Summa;
      end;
    for j:=1 to 4 do
      begin
        Summa:= 0;
        for l:= 1 to 4 do
          Summa:= Summa + vv[6,l]*m[l,j];
          mm[6,j] := Summa;
      end;
    for j:=1 to 4 do
      begin
        Summa:= 0;
        for l:= 1 to 4 do
          Summa:= Summa + vv[7,l]*m[l,j];
          mm[7,j] := Summa;
      end;
    for j:=1 to 4 do
      begin
        Summa:= 0;
        for l:= 1 to 4 do
          Summa:= Summa + vv[8,l]*m[l,j];
          mm[8,j] := Summa;
      end;
  vvv[0].x:=mm[1,1];
   vvv[0].y:=mm[1,2];
    vvv[0].z:=mm[1,3];
     vvv[1].x:=mm[2,1];
   vvv[1].y:=mm[2,2];
    vvv[1].z:=mm[2,3];
     vvv[2].x:=mm[3,1];
   vvv[2].y:=mm[3,2];
    vvv[2].z:=mm[3,3];
     vvv[3].x:=mm[4,1];
   vvv[3].y:=mm[4,2];
    vvv[3].z:=mm[4,3];
     vvv[4].x:=mm[5,1];
   vvv[4].y:=mm[5,2];
    vvv[4].z:=mm[5,3];
    vvv[5].x:=mm[6,1];
   vvv[5].y:=mm[6,2];
    vvv[5].z:=mm[6,3];
     vvv[6].x:=mm[7,1];
   vvv[6].y:=mm[7,2];
    vvv[6].z:=mm[7,3];
     vvv[7].x:=mm[8,1];
   vvv[7].y:=mm[8,2];
    vvv[7].z:=mm[8,3];
     DrawLine3(vvv[0],vvv[1]);
 DrawLine3(vvv[1],vvv[2]);
 DrawLine3(vvv[2],vvv[3]);
 DrawLine3(vvv[3],vvv[0]);
 DrawLine3(vvv[0],vvv[7]);
 DrawLine3(vvv[1],vvv[6]);
 DrawLine3(vvv[2],vvv[5]);
 DrawLine3(vvv[3],vvv[4]);
 DrawLine3(vvv[4],vvv[5]);
 DrawLine3(vvv[5],vvv[6]);
 DrawLine3(vvv[6],vvv[7]);
 DrawLine3(vvv[7],vvv[4]); }
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
 Form1.Canvas.Pen.Color:=clWhite;
 for i:=0 to 400 do
   Form1.Canvas.Line(0,i,1000,i);
 Form1.Canvas.Pen.Color:=clBlack;
   for i:=1 to 4 do
   for j:=1 to 4 do
     m[i,j]:=0;
 m[1,1]:=1;
 m[2,2]:=1;
 m[3,1]:=cos(3.14/4);
 m[3,2]:=sin(3.14/4);
 m[4,4]:=1;
    for j:=1 to 4 do
      begin
        Summa:= 0;
        for l:= 1 to 4 do
          Summa:= Summa + vv[1,l]*m[l,j];
          mm[1,j] := Summa;
      end;
    for j:=1 to 4 do
      begin
        Summa:= 0;
        for l:= 1 to 4 do
          Summa:= Summa + vv[2,l]*m[l,j];
          mm[2,j] := Summa;
      end;
    for j:=1 to 4 do
      begin
        Summa:= 0;
        for l:= 1 to 4 do
          Summa:= Summa + vv[3,l]*m[l,j];
          mm[3,j] := Summa;
      end;
    for j:=1 to 4 do
      begin
        Summa:= 0;
        for l:= 1 to 4 do
          Summa:= Summa + vv[4,l]*m[l,j];
          mm[4,j] := Summa;
      end;
    for j:=1 to 4 do
      begin
        Summa:= 0;
        for l:= 1 to 4 do
          Summa:= Summa + vv[5,l]*m[l,j];
          mm[5,j] := Summa;
      end;
    for j:=1 to 4 do
      begin
        Summa:= 0;
        for l:= 1 to 4 do
          Summa:= Summa + vv[6,l]*m[l,j];
          mm[6,j] := Summa;
      end;
    for j:=1 to 4 do
      begin
        Summa:= 0;
        for l:= 1 to 4 do
          Summa:= Summa + vv[7,l]*m[l,j];
          mm[7,j] := Summa;
      end;
    for j:=1 to 4 do
      begin
        Summa:= 0;
        for l:= 1 to 4 do
          Summa:= Summa + vv[8,l]*m[l,j];
          mm[8,j] := Summa;
      end;
  vvv[0].x:=mm[1,1];
   vvv[0].y:=mm[1,2];
    vvv[0].z:=mm[1,3];
     vvv[1].x:=mm[2,1];
   vvv[1].y:=mm[2,2];
    vvv[1].z:=mm[2,3];
     vvv[2].x:=mm[3,1];
   vvv[2].y:=mm[3,2];
    vvv[2].z:=mm[3,3];
     vvv[3].x:=mm[4,1];
   vvv[3].y:=mm[4,2];
    vvv[3].z:=mm[4,3];
     vvv[4].x:=mm[5,1];
   vvv[4].y:=mm[5,2];
    vvv[4].z:=mm[5,3];
    vvv[5].x:=mm[6,1];
   vvv[5].y:=mm[6,2];
    vvv[5].z:=mm[6,3];
     vvv[6].x:=mm[7,1];
   vvv[6].y:=mm[7,2];
    vvv[6].z:=mm[7,3];
     vvv[7].x:=mm[8,1];
   vvv[7].y:=mm[8,2];
    vvv[7].z:=mm[8,3];
     DrawLine1(vvv[0],vvv[1]);
 DrawLine1(vvv[1],vvv[2]);
 DrawLine1(vvv[2],vvv[3]);
 DrawLine1(vvv[3],vvv[0]);
 DrawLine1(vvv[0],vvv[7]);
 DrawLine1(vvv[1],vvv[6]);
 DrawLine1(vvv[2],vvv[5]);
 DrawLine1(vvv[3],vvv[4]);
 DrawLine1(vvv[4],vvv[5]);
 DrawLine1(vvv[5],vvv[6]);
 DrawLine1(vvv[6],vvv[7]);
 DrawLine1(vvv[7],vvv[4]);
 for i:=1 to 4 do
   for j:=1 to 4 do
     m[i,j]:=0;
 m[1,1]:=1;
 m[2,2]:=1;
 m[3,1]:=cos(3.14/4)*0.5;
 m[3,2]:=sin(3.14/4)*0.5;
 m[4,4]:=1;
    for j:=1 to 4 do
      begin
        Summa:= 0;
        for l:= 1 to 4 do
          Summa:= Summa + vv[1,l]*m[l,j];
          mm[1,j] := Summa;
      end;
    for j:=1 to 4 do
      begin
        Summa:= 0;
        for l:= 1 to 4 do
          Summa:= Summa + vv[2,l]*m[l,j];
          mm[2,j] := Summa;
      end;
    for j:=1 to 4 do
      begin
        Summa:= 0;
        for l:= 1 to 4 do
          Summa:= Summa + vv[3,l]*m[l,j];
          mm[3,j] := Summa;
      end;
    for j:=1 to 4 do
      begin
        Summa:= 0;
        for l:= 1 to 4 do
          Summa:= Summa + vv[4,l]*m[l,j];
          mm[4,j] := Summa;
      end;
    for j:=1 to 4 do
      begin
        Summa:= 0;
        for l:= 1 to 4 do
          Summa:= Summa + vv[5,l]*m[l,j];
          mm[5,j] := Summa;
      end;
    for j:=1 to 4 do
      begin
        Summa:= 0;
        for l:= 1 to 4 do
          Summa:= Summa + vv[6,l]*m[l,j];
          mm[6,j] := Summa;
      end;
    for j:=1 to 4 do
      begin
        Summa:= 0;
        for l:= 1 to 4 do
          Summa:= Summa + vv[7,l]*m[l,j];
          mm[7,j] := Summa;
      end;
    for j:=1 to 4 do
      begin
        Summa:= 0;
        for l:= 1 to 4 do
          Summa:= Summa + vv[8,l]*m[l,j];
          mm[8,j] := Summa;
      end;
  vvv[0].x:=mm[1,1];
   vvv[0].y:=mm[1,2];
    vvv[0].z:=mm[1,3];
     vvv[1].x:=mm[2,1];
   vvv[1].y:=mm[2,2];
    vvv[1].z:=mm[2,3];
     vvv[2].x:=mm[3,1];
   vvv[2].y:=mm[3,2];
    vvv[2].z:=mm[3,3];
     vvv[3].x:=mm[4,1];
   vvv[3].y:=mm[4,2];
    vvv[3].z:=mm[4,3];
     vvv[4].x:=mm[5,1];
   vvv[4].y:=mm[5,2];
    vvv[4].z:=mm[5,3];
    vvv[5].x:=mm[6,1];
   vvv[5].y:=mm[6,2];
    vvv[5].z:=mm[6,3];
     vvv[6].x:=mm[7,1];
   vvv[6].y:=mm[7,2];
    vvv[6].z:=mm[7,3];
     vvv[7].x:=mm[8,1];
   vvv[7].y:=mm[8,2];
    vvv[7].z:=mm[8,3];
     DrawLine3(vvv[0],vvv[1]);
 DrawLine3(vvv[1],vvv[2]);
 DrawLine3(vvv[2],vvv[3]);
 DrawLine3(vvv[3],vvv[0]);
 DrawLine3(vvv[0],vvv[7]);
 DrawLine3(vvv[1],vvv[6]);
 DrawLine3(vvv[2],vvv[5]);
 DrawLine3(vvv[3],vvv[4]);
 DrawLine3(vvv[4],vvv[5]);
 DrawLine3(vvv[5],vvv[6]);
 DrawLine3(vvv[6],vvv[7]);
 DrawLine3(vvv[7],vvv[4]);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

end.

