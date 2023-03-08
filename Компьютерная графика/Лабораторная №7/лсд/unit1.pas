unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls, Types;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Panel1: TPanel;
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
  private

  public

  end;

  Type
  TXYZ = Record
    X, Y, Z: real;
  End;


var
  Form1: TForm1;
  m:array [1..4,1..4] of real;
   mm:array [1..8,1..4] of real;
    help:array[0..7] of TXYZ= (
(x:-15;y: 5;z:-35),
(x:-15;y:-25;z:-35),
(x: 15;y:-25;z:-35),
(x: 15;y: 5;z:-35),
(x: 15;y: 5;z: -15),
(x: 15;y:-25;z: -15),
(x:-15;y:-25;z: -15),
(x:-15;y: 5;z: -15));
  V:array[0..7] of TXYZ= (
  (x:-100; y:-80; z: 0),
         (x:-100; y:  0; z: 0),
         (x:  0; y:  0; z: 0),
         (x:  0; y:-80; z: 0),
         (x:  0; y:-80; z:90),
         (x:  0; y:  0; z:90),
         (x:-100; y:  0; z:90),
         (x:-100; y:-80; z:90));
  VVV:array[0..7] of TXYZ= (
  (x:-100; y:-80; z: 0),
         (x:-100; y:  0; z: 0),
         (x:  0; y:  0; z: 0),
         (x:  0; y:-80; z: 0),
         (x:  0; y:-80; z:90),
         (x:  0; y:  0; z:90),
         (x:-100; y:  0; z:90),
         (x:-100; y:-80; z:90));
  i,j,k,l,x,y,z:integer;
  VV:array [1..8,1..4] of real =((-100,-80,0,1),(-100,0,0,1),(0,0,0,1),
  (0,-80,0,1),(0,-80,90,1),(0,0,90,1),(-100,0,90,1),(-100,-80,90,1));
  summa:real;
  mmm,nnn,lll,xxx,yyy,zzz:real;
  kx,ky,kz:real;

implementation

{$R *.lfm}

{ TForm1 }

Procedure DrawLine1( a, b: TXYZ);
Function cX( X, Z : real ) : real;
   Begin
     cX := (X + ((Form1.Width-50)Div 2)) - Z;
   End;
 Function cY( Y, Z : real ) : real;
   Begin
     cY := ((Form1.Top+550) Div 2) - Y + Z;
   End;
 begin
  Form1.Canvas.Line(round(cX(a.x, a.Z)), round(cY(a.y, a.Z)), round(cX(b.x, b.Z)), round(cY(b.y, b.Z)));
end;

procedure osi;
begin
 Form1.Canvas.Pen.color:=clred;;
 Form1.Canvas.Line(500,325,500,0);
 Form1.Canvas.Line(500,325,1000,325);
 Form1.Canvas.Line(500,325,0,650);
end;





procedure TForm1.FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
   Form1.Canvas.Pen.Color:=clWhite;
  for i:=0 to 750 do
   Form1.Canvas.Line(0,i,1000,i);
  Form1.Canvas.Pen.Color:=clBlack;
 for i:=1 to 4 do
   for j:=1 to 4 do
     m[i,j]:=0;
 kx:=1.15;
  ky:=1.15;
  kz:=1.15;
  m[1,1]:=kx;
 m[2,2]:=ky;
 m[3,3]:=kz;
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

    vv[1,1]:=mm[1,1];
   vv[1,2]:=mm[1,2];
    vv[1,3]:=mm[1,3];
     vv[2,1]:=mm[2,1];
   vv[2,2]:=mm[2,2];
    vv[2,3]:=mm[2,3];
     vv[3,1]:=mm[3,1];
   vv[3,2]:=mm[3,2];
    vv[3,3]:=mm[3,3];
     vv[4,1]:=mm[4,1];
   vv[4,2]:=mm[4,2];
    vv[4,3]:=mm[4,3];
     vv[5,1]:=mm[5,1];
   vv[5,2]:=mm[5,2];
    vv[5,3]:=mm[5,3];
    vv[6,1]:=mm[6,1];
   vv[6,2]:=mm[6,2];
    vv[6,3]:=mm[6,3];
     vv[7,1]:=mm[7,1];
   vv[7,2]:=mm[7,2];
    vv[7,3]:=mm[7,3];
     vv[8,1]:=mm[8,1];
   vv[8,2]:=mm[8,2];
    vv[8,3]:=mm[8,3];
end;



procedure TForm1.Button2Click(Sender: TObject);
begin
  Form1.Close;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
    Form1.Canvas.Pen.Color:=clWhite;
  for i:=0 to 750 do
   Form1.Canvas.Line(0,i,1000,i);
 lll:=5;
  Form1.Canvas.Pen.Color:=clBlack;
 for i:=1 to 4 do
   for j:=1 to 4 do
     m[i,j]:=0;
  m[1,1]:=1;
 m[2,2]:=1;
 m[3,3]:=1;
 m[4,4]:=1;
  m[4,3]:=lll;
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

    vv[1,1]:=mm[1,1];
   vv[1,2]:=mm[1,2];
    vv[1,3]:=mm[1,3];
     vv[2,1]:=mm[2,1];
   vv[2,2]:=mm[2,2];
    vv[2,3]:=mm[2,3];
     vv[3,1]:=mm[3,1];
   vv[3,2]:=mm[3,2];
    vv[3,3]:=mm[3,3];
     vv[4,1]:=mm[4,1];
   vv[4,2]:=mm[4,2];
    vv[4,3]:=mm[4,3];
     vv[5,1]:=mm[5,1];
   vv[5,2]:=mm[5,2];
    vv[5,3]:=mm[5,3];
    vv[6,1]:=mm[6,1];
   vv[6,2]:=mm[6,2];
    vv[6,3]:=mm[6,3];
     vv[7,1]:=mm[7,1];
   vv[7,2]:=mm[7,2];
    vv[7,3]:=mm[7,3];
     vv[8,1]:=mm[8,1];
   vv[8,2]:=mm[8,2];
    vv[8,3]:=mm[8,3];
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
   Form1.Canvas.Pen.Color:=clWhite;
 for i:=0 to 750 do
   Form1.Canvas.Line(0,i,1000,i);
 nnn:=5;
  Form1.Canvas.Pen.Color:=clBlack;
 for i:=1 to 4 do
   for j:=1 to 4 do
     m[i,j]:=0;
  m[1,1]:=1;
 m[2,2]:=1;
 m[3,3]:=1;
 m[4,4]:=1;
  m[4,2]:=nnn;
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

    vv[1,1]:=mm[1,1];
   vv[1,2]:=mm[1,2];
    vv[1,3]:=mm[1,3];
     vv[2,1]:=mm[2,1];
   vv[2,2]:=mm[2,2];
    vv[2,3]:=mm[2,3];
     vv[3,1]:=mm[3,1];
   vv[3,2]:=mm[3,2];
    vv[3,3]:=mm[3,3];
     vv[4,1]:=mm[4,1];
   vv[4,2]:=mm[4,2];
    vv[4,3]:=mm[4,3];
     vv[5,1]:=mm[5,1];
   vv[5,2]:=mm[5,2];
    vv[5,3]:=mm[5,3];
    vv[6,1]:=mm[6,1];
   vv[6,2]:=mm[6,2];
    vv[6,3]:=mm[6,3];
     vv[7,1]:=mm[7,1];
   vv[7,2]:=mm[7,2];
    vv[7,3]:=mm[7,3];
     vv[8,1]:=mm[8,1];
   vv[8,2]:=mm[8,2];
    vv[8,3]:=mm[8,3];
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
   Form1.Canvas.Pen.Color:=clWhite;
 for i:=0 to 750 do
   Form1.Canvas.Line(0,i,1000,i);
 nnn:=-5;
  Form1.Canvas.Pen.Color:=clBlack;
 for i:=1 to 4 do
   for j:=1 to 4 do
     m[i,j]:=0;
  m[1,1]:=1;
 m[2,2]:=1;
 m[3,3]:=1;
 m[4,4]:=1;
  m[4,2]:=nnn;
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

    vv[1,1]:=mm[1,1];
   vv[1,2]:=mm[1,2];
    vv[1,3]:=mm[1,3];
     vv[2,1]:=mm[2,1];
   vv[2,2]:=mm[2,2];
    vv[2,3]:=mm[2,3];
     vv[3,1]:=mm[3,1];
   vv[3,2]:=mm[3,2];
    vv[3,3]:=mm[3,3];
     vv[4,1]:=mm[4,1];
   vv[4,2]:=mm[4,2];
    vv[4,3]:=mm[4,3];
     vv[5,1]:=mm[5,1];
   vv[5,2]:=mm[5,2];
    vv[5,3]:=mm[5,3];
    vv[6,1]:=mm[6,1];
   vv[6,2]:=mm[6,2];
    vv[6,3]:=mm[6,3];
     vv[7,1]:=mm[7,1];
   vv[7,2]:=mm[7,2];
    vv[7,3]:=mm[7,3];
     vv[8,1]:=mm[8,1];
   vv[8,2]:=mm[8,2];
    vv[8,3]:=mm[8,3];
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
   Form1.Canvas.Pen.Color:=clWhite;
  for i:=0 to 750 do
   Form1.Canvas.Line(0,i,1000,i);
 mmm:=5;
  Form1.Canvas.Pen.Color:=clBlack;
 for i:=1 to 4 do
   for j:=1 to 4 do
     m[i,j]:=0;
  m[1,1]:=1;
 m[2,2]:=1;
 m[3,3]:=1;
 m[4,4]:=1;
  m[4,1]:=mmm;
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

    vv[1,1]:=mm[1,1];
   vv[1,2]:=mm[1,2];
    vv[1,3]:=mm[1,3];
     vv[2,1]:=mm[2,1];
   vv[2,2]:=mm[2,2];
    vv[2,3]:=mm[2,3];
     vv[3,1]:=mm[3,1];
   vv[3,2]:=mm[3,2];
    vv[3,3]:=mm[3,3];
     vv[4,1]:=mm[4,1];
   vv[4,2]:=mm[4,2];
    vv[4,3]:=mm[4,3];
     vv[5,1]:=mm[5,1];
   vv[5,2]:=mm[5,2];
    vv[5,3]:=mm[5,3];
    vv[6,1]:=mm[6,1];
   vv[6,2]:=mm[6,2];
    vv[6,3]:=mm[6,3];
     vv[7,1]:=mm[7,1];
   vv[7,2]:=mm[7,2];
    vv[7,3]:=mm[7,3];
     vv[8,1]:=mm[8,1];
   vv[8,2]:=mm[8,2];
    vv[8,3]:=mm[8,3];
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
   Form1.Canvas.Pen.Color:=clWhite;
  for i:=0 to 750 do
   Form1.Canvas.Line(0,i,1000,i);
 mmm:=-5;
  Form1.Canvas.Pen.Color:=clBlack;
 for i:=1 to 4 do
   for j:=1 to 4 do
     m[i,j]:=0;
  m[1,1]:=1;
 m[2,2]:=1;
 m[3,3]:=1;
 m[4,4]:=1;
  m[4,1]:=mmm;
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

    vv[1,1]:=mm[1,1];
   vv[1,2]:=mm[1,2];
    vv[1,3]:=mm[1,3];
     vv[2,1]:=mm[2,1];
   vv[2,2]:=mm[2,2];
    vv[2,3]:=mm[2,3];
     vv[3,1]:=mm[3,1];
   vv[3,2]:=mm[3,2];
    vv[3,3]:=mm[3,3];
     vv[4,1]:=mm[4,1];
   vv[4,2]:=mm[4,2];
    vv[4,3]:=mm[4,3];
     vv[5,1]:=mm[5,1];
   vv[5,2]:=mm[5,2];
    vv[5,3]:=mm[5,3];
    vv[6,1]:=mm[6,1];
   vv[6,2]:=mm[6,2];
    vv[6,3]:=mm[6,3];
     vv[7,1]:=mm[7,1];
   vv[7,2]:=mm[7,2];
    vv[7,3]:=mm[7,3];
     vv[8,1]:=mm[8,1];
   vv[8,2]:=mm[8,2];
    vv[8,3]:=mm[8,3];
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
    Form1.Canvas.Pen.Color:=clWhite;
  for i:=0 to 750 do
   Form1.Canvas.Line(0,i,1000,i);
 lll:=-5;
  Form1.Canvas.Pen.Color:=clBlack;
 for i:=1 to 4 do
   for j:=1 to 4 do
     m[i,j]:=0;
  m[1,1]:=1;
 m[2,2]:=1;
 m[3,3]:=1;
 m[4,4]:=1;
  m[4,3]:=lll;
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

    vv[1,1]:=mm[1,1];
   vv[1,2]:=mm[1,2];
    vv[1,3]:=mm[1,3];
     vv[2,1]:=mm[2,1];
   vv[2,2]:=mm[2,2];
    vv[2,3]:=mm[2,3];
     vv[3,1]:=mm[3,1];
   vv[3,2]:=mm[3,2];
    vv[3,3]:=mm[3,3];
     vv[4,1]:=mm[4,1];
   vv[4,2]:=mm[4,2];
    vv[4,3]:=mm[4,3];
     vv[5,1]:=mm[5,1];
   vv[5,2]:=mm[5,2];
    vv[5,3]:=mm[5,3];
    vv[6,1]:=mm[6,1];
   vv[6,2]:=mm[6,2];
    vv[6,3]:=mm[6,3];
     vv[7,1]:=mm[7,1];
   vv[7,2]:=mm[7,2];
    vv[7,3]:=mm[7,3];
     vv[8,1]:=mm[8,1];
   vv[8,2]:=mm[8,2];
    vv[8,3]:=mm[8,3];
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
  Form1.Canvas.Pen.Color:=clWhite;
  for i:=0 to 750 do
   Form1.Canvas.Line(0,i,1000,i);
 xxx:=-3.14/10;
  Form1.Canvas.Pen.Color:=clBlack;
for i:=1 to 4 do
   for j:=1 to 4 do
     m[i,j]:=0;
  m[1,1]:=1;
 m[2,2]:=cos(xxx);
 m[3,3]:=cos(xxx);
 m[4,4]:=1;
 m[3,2]:=(-sin(xxx));
 m[2,3]:=sin(xxx);
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

    vv[1,1]:=mm[1,1];
   vv[1,2]:=mm[1,2];
    vv[1,3]:=mm[1,3];
     vv[2,1]:=mm[2,1];
   vv[2,2]:=mm[2,2];
    vv[2,3]:=mm[2,3];
     vv[3,1]:=mm[3,1];
   vv[3,2]:=mm[3,2];
    vv[3,3]:=mm[3,3];
     vv[4,1]:=mm[4,1];
   vv[4,2]:=mm[4,2];
    vv[4,3]:=mm[4,3];
     vv[5,1]:=mm[5,1];
   vv[5,2]:=mm[5,2];
    vv[5,3]:=mm[5,3];
    vv[6,1]:=mm[6,1];
   vv[6,2]:=mm[6,2];
    vv[6,3]:=mm[6,3];
     vv[7,1]:=mm[7,1];
   vv[7,2]:=mm[7,2];
    vv[7,3]:=mm[7,3];
     vv[8,1]:=mm[8,1];
   vv[8,2]:=mm[8,2];
    vv[8,3]:=mm[8,3];
end;

procedure TForm1.FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
   Form1.Canvas.Pen.Color:=clWhite;
  for i:=0 to 750 do
   Form1.Canvas.Line(0,i,1000,i);
  Form1.Canvas.Pen.Color:=clBlack;
 for i:=1 to 4 do
   for j:=1 to 4 do
     m[i,j]:=0;
 kx:=0.85;
  ky:=0.85;
  kz:=0.85;
  m[1,1]:=kx;
 m[2,2]:=ky;
 m[3,3]:=kz;
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

    vv[1,1]:=mm[1,1];
   vv[1,2]:=mm[1,2];
    vv[1,3]:=mm[1,3];
     vv[2,1]:=mm[2,1];
   vv[2,2]:=mm[2,2];
    vv[2,3]:=mm[2,3];
     vv[3,1]:=mm[3,1];
   vv[3,2]:=mm[3,2];
    vv[3,3]:=mm[3,3];
     vv[4,1]:=mm[4,1];
   vv[4,2]:=mm[4,2];
    vv[4,3]:=mm[4,3];
     vv[5,1]:=mm[5,1];
   vv[5,2]:=mm[5,2];
    vv[5,3]:=mm[5,3];
    vv[6,1]:=mm[6,1];
   vv[6,2]:=mm[6,2];
    vv[6,3]:=mm[6,3];
     vv[7,1]:=mm[7,1];
   vv[7,2]:=mm[7,2];
    vv[7,3]:=mm[7,3];
     vv[8,1]:=mm[8,1];
   vv[8,2]:=mm[8,2];
    vv[8,3]:=mm[8,3];
end;

procedure TForm1.Button1Click(Sender: TObject);
var xx,xy:integer;
begin
 Form1.Canvas.Pen.Color:=clWhite;
 for i:=0 to 750 do
    Form1.Canvas.Line(0,i,1000,i);
 // osi;
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

procedure TForm1.Button15Click(Sender: TObject);
begin
  Form1.Canvas.Pen.Color:=clWhite;
  for i:=0 to 750 do
   Form1.Canvas.Line(0,i,1000,i);
 //mmm:=1;
  Form1.Canvas.Pen.Color:=clBlack;
 for i:=1 to 4 do
   for j:=1 to 4 do
     m[i,j]:=0;
  m[1,1]:=1;
 m[2,2]:=1;
 m[3,3]:=-1;
 m[4,4]:=1;
  //m[4,1]:=mmm;
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

    vv[1,1]:=mm[1,1];
   vv[1,2]:=mm[1,2];
    vv[1,3]:=mm[1,3];
     vv[2,1]:=mm[2,1];
   vv[2,2]:=mm[2,2];
    vv[2,3]:=mm[2,3];
     vv[3,1]:=mm[3,1];
   vv[3,2]:=mm[3,2];
    vv[3,3]:=mm[3,3];
     vv[4,1]:=mm[4,1];
   vv[4,2]:=mm[4,2];
    vv[4,3]:=mm[4,3];
     vv[5,1]:=mm[5,1];
   vv[5,2]:=mm[5,2];
    vv[5,3]:=mm[5,3];
    vv[6,1]:=mm[6,1];
   vv[6,2]:=mm[6,2];
    vv[6,3]:=mm[6,3];
     vv[7,1]:=mm[7,1];
   vv[7,2]:=mm[7,2];
    vv[7,3]:=mm[7,3];
     vv[8,1]:=mm[8,1];
   vv[8,2]:=mm[8,2];
    vv[8,3]:=mm[8,3];
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
    Form1.Canvas.Pen.Color:=clWhite;
      for i:=0 to 750 do
       Form1.Canvas.Line(0,i,1000,i);
     xxx:=3.14/10;
      Form1.Canvas.Pen.Color:=clBlack;
     for i:=1 to 4 do
       for j:=1 to 4 do
         m[i,j]:=0;
      m[1,1]:=1;
     m[2,2]:=cos(xxx);
     m[3,3]:=cos(xxx);
     m[4,4]:=1;
     m[3,2]:=-sin(xxx);
     m[2,3]:=sin(xxx);
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

        vv[1,1]:=mm[1,1];
       vv[1,2]:=mm[1,2];
        vv[1,3]:=mm[1,3];
         vv[2,1]:=mm[2,1];
       vv[2,2]:=mm[2,2];
        vv[2,3]:=mm[2,3];
         vv[3,1]:=mm[3,1];
       vv[3,2]:=mm[3,2];
        vv[3,3]:=mm[3,3];
         vv[4,1]:=mm[4,1];
       vv[4,2]:=mm[4,2];
        vv[4,3]:=mm[4,3];
         vv[5,1]:=mm[5,1];
       vv[5,2]:=mm[5,2];
        vv[5,3]:=mm[5,3];
        vv[6,1]:=mm[6,1];
       vv[6,2]:=mm[6,2];
        vv[6,3]:=mm[6,3];
         vv[7,1]:=mm[7,1];
       vv[7,2]:=mm[7,2];
        vv[7,3]:=mm[7,3];
         vv[8,1]:=mm[8,1];
       vv[8,2]:=mm[8,2];
        vv[8,3]:=mm[8,3];
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
 Form1.Canvas.Pen.Color:=clWhite;
  for i:=0 to 750 do
   Form1.Canvas.Line(0,i,1000,i);
 yyy:=-3.14/10;
  Form1.Canvas.Pen.Color:=clBlack;
 for i:=1 to 4 do
   for j:=1 to 4 do
     m[i,j]:=0;
  m[1,1]:=cos(yyy);
 m[2,2]:=1;
 m[3,3]:=cos(yyy);
 m[4,4]:=1;
 m[3,1]:=sin(yyy);
 m[1,3]:=-sin(yyy);
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

    vv[1,1]:=mm[1,1];
   vv[1,2]:=mm[1,2];
    vv[1,3]:=mm[1,3];
     vv[2,1]:=mm[2,1];
   vv[2,2]:=mm[2,2];
    vv[2,3]:=mm[2,3];
     vv[3,1]:=mm[3,1];
   vv[3,2]:=mm[3,2];
    vv[3,3]:=mm[3,3];
     vv[4,1]:=mm[4,1];
   vv[4,2]:=mm[4,2];
    vv[4,3]:=mm[4,3];
     vv[5,1]:=mm[5,1];
   vv[5,2]:=mm[5,2];
    vv[5,3]:=mm[5,3];
    vv[6,1]:=mm[6,1];
   vv[6,2]:=mm[6,2];
    vv[6,3]:=mm[6,3];
     vv[7,1]:=mm[7,1];
   vv[7,2]:=mm[7,2];
    vv[7,3]:=mm[7,3];
     vv[8,1]:=mm[8,1];
   vv[8,2]:=mm[8,2];
    vv[8,3]:=mm[8,3];
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
  Form1.Canvas.Pen.Color:=clWhite;
  for i:=0 to 750 do
   Form1.Canvas.Line(0,i,1000,i);
 yyy:=3.14/10;
  Form1.Canvas.Pen.Color:=clBlack;
 for i:=1 to 4 do
   for j:=1 to 4 do
     m[i,j]:=0;
  m[1,1]:=cos(yyy);
 m[2,2]:=1;
 m[3,3]:=cos(yyy);
 m[4,4]:=1;
 m[3,1]:=sin(yyy);
 m[1,3]:=-sin(yyy);
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

    vv[1,1]:=mm[1,1];
   vv[1,2]:=mm[1,2];
    vv[1,3]:=mm[1,3];
     vv[2,1]:=mm[2,1];
   vv[2,2]:=mm[2,2];
    vv[2,3]:=mm[2,3];
     vv[3,1]:=mm[3,1];
   vv[3,2]:=mm[3,2];
    vv[3,3]:=mm[3,3];
     vv[4,1]:=mm[4,1];
   vv[4,2]:=mm[4,2];
    vv[4,3]:=mm[4,3];
     vv[5,1]:=mm[5,1];
   vv[5,2]:=mm[5,2];
    vv[5,3]:=mm[5,3];
    vv[6,1]:=mm[6,1];
   vv[6,2]:=mm[6,2];
    vv[6,3]:=mm[6,3];
     vv[7,1]:=mm[7,1];
   vv[7,2]:=mm[7,2];
    vv[7,3]:=mm[7,3];
     vv[8,1]:=mm[8,1];
   vv[8,2]:=mm[8,2];
    vv[8,3]:=mm[8,3];
end;

procedure TForm1.Button13Click(Sender: TObject);
begin
    Form1.Canvas.Pen.Color:=clWhite;
      for i:=0 to 750 do
       Form1.Canvas.Line(0,i,1000,i);
     zzz:=-3.14/10;
      Form1.Canvas.Pen.Color:=clBlack;
     for i:=1 to 4 do
       for j:=1 to 4 do
         m[i,j]:=0;
      m[1,1]:=cos(zzz);
     m[2,2]:=cos(zzz);
     m[3,3]:=1;
     m[4,4]:=1;
     m[2,1]:=-sin(zzz);
     m[1,2]:=sin(zzz);
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

        vv[1,1]:=mm[1,1];
       vv[1,2]:=mm[1,2];
        vv[1,3]:=mm[1,3];
         vv[2,1]:=mm[2,1];
       vv[2,2]:=mm[2,2];
        vv[2,3]:=mm[2,3];
         vv[3,1]:=mm[3,1];
       vv[3,2]:=mm[3,2];
        vv[3,3]:=mm[3,3];
         vv[4,1]:=mm[4,1];
       vv[4,2]:=mm[4,2];
        vv[4,3]:=mm[4,3];
         vv[5,1]:=mm[5,1];
       vv[5,2]:=mm[5,2];
        vv[5,3]:=mm[5,3];
        vv[6,1]:=mm[6,1];
       vv[6,2]:=mm[6,2];
        vv[6,3]:=mm[6,3];
         vv[7,1]:=mm[7,1];
       vv[7,2]:=mm[7,2];
        vv[7,3]:=mm[7,3];
         vv[8,1]:=mm[8,1];
       vv[8,2]:=mm[8,2];
        vv[8,3]:=mm[8,3];
end;

procedure TForm1.Button14Click(Sender: TObject);
begin
  Form1.Canvas.Pen.Color:=clWhite;
      for i:=0 to 750 do
       Form1.Canvas.Line(0,i,1000,i);
     zzz:=3.14/10;
      Form1.Canvas.Pen.Color:=clBlack;
     for i:=1 to 4 do
       for j:=1 to 4 do
         m[i,j]:=0;
      m[1,1]:=cos(zzz);
     m[2,2]:=cos(zzz);
     m[3,3]:=1;
     m[4,4]:=1;
     m[2,1]:=-sin(zzz);
     m[1,2]:=sin(zzz);
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

        vv[1,1]:=mm[1,1];
       vv[1,2]:=mm[1,2];
        vv[1,3]:=mm[1,3];
         vv[2,1]:=mm[2,1];
       vv[2,2]:=mm[2,2];
        vv[2,3]:=mm[2,3];
         vv[3,1]:=mm[3,1];
       vv[3,2]:=mm[3,2];
        vv[3,3]:=mm[3,3];
         vv[4,1]:=mm[4,1];
       vv[4,2]:=mm[4,2];
        vv[4,3]:=mm[4,3];
         vv[5,1]:=mm[5,1];
       vv[5,2]:=mm[5,2];
        vv[5,3]:=mm[5,3];
        vv[6,1]:=mm[6,1];
       vv[6,2]:=mm[6,2];
        vv[6,3]:=mm[6,3];
         vv[7,1]:=mm[7,1];
       vv[7,2]:=mm[7,2];
        vv[7,3]:=mm[7,3];
         vv[8,1]:=mm[8,1];
       vv[8,2]:=mm[8,2];
        vv[8,3]:=mm[8,3];
end;

procedure TForm1.Button16Click(Sender: TObject);
begin
  Form1.Canvas.Pen.Color:=clWhite;
  for i:=0 to 750 do
   Form1.Canvas.Line(0,i,1000,i);
 //mmm:=-1;
  Form1.Canvas.Pen.Color:=clBlack;
 for i:=1 to 4 do
   for j:=1 to 4 do
     m[i,j]:=0;
  m[1,1]:=1;
 m[2,2]:=-1;
 m[3,3]:=1;
 m[4,4]:=1;
 // m[4,1]:=mmm;
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

    vv[1,1]:=mm[1,1];
   vv[1,2]:=mm[1,2];
    vv[1,3]:=mm[1,3];
     vv[2,1]:=mm[2,1];
   vv[2,2]:=mm[2,2];
    vv[2,3]:=mm[2,3];
     vv[3,1]:=mm[3,1];
   vv[3,2]:=mm[3,2];
    vv[3,3]:=mm[3,3];
     vv[4,1]:=mm[4,1];
   vv[4,2]:=mm[4,2];
    vv[4,3]:=mm[4,3];
     vv[5,1]:=mm[5,1];
   vv[5,2]:=mm[5,2];
    vv[5,3]:=mm[5,3];
    vv[6,1]:=mm[6,1];
   vv[6,2]:=mm[6,2];
    vv[6,3]:=mm[6,3];
     vv[7,1]:=mm[7,1];
   vv[7,2]:=mm[7,2];
    vv[7,3]:=mm[7,3];
     vv[8,1]:=mm[8,1];
   vv[8,2]:=mm[8,2];
    vv[8,3]:=mm[8,3];
end;

procedure TForm1.Button17Click(Sender: TObject);
begin
  Form1.Canvas.Pen.Color:=clWhite;
  for i:=0 to 750 do
   Form1.Canvas.Line(0,i,1000,i);
 //mmm:=-1;
  Form1.Canvas.Pen.Color:=clBlack;
 for i:=1 to 4 do
   for j:=1 to 4 do
     m[i,j]:=0;
  m[1,1]:=-1;
 m[2,2]:=1;
 m[3,3]:=1;
 m[4,4]:=1;
 // m[4,1]:=mmm;
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

    vv[1,1]:=mm[1,1];
   vv[1,2]:=mm[1,2];
    vv[1,3]:=mm[1,3];
     vv[2,1]:=mm[2,1];
   vv[2,2]:=mm[2,2];
    vv[2,3]:=mm[2,3];
     vv[3,1]:=mm[3,1];
   vv[3,2]:=mm[3,2];
    vv[3,3]:=mm[3,3];
     vv[4,1]:=mm[4,1];
   vv[4,2]:=mm[4,2];
    vv[4,3]:=mm[4,3];
     vv[5,1]:=mm[5,1];
   vv[5,2]:=mm[5,2];
    vv[5,3]:=mm[5,3];
    vv[6,1]:=mm[6,1];
   vv[6,2]:=mm[6,2];
    vv[6,3]:=mm[6,3];
     vv[7,1]:=mm[7,1];
   vv[7,2]:=mm[7,2];
    vv[7,3]:=mm[7,3];
     vv[8,1]:=mm[8,1];
   vv[8,2]:=mm[8,2];
    vv[8,3]:=mm[8,3];
end;

end.

