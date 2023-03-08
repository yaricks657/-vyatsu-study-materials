unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Panel1: TPanel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation
CONST
    canvas_width  = 1000;
    canvas_height = 700;

TYPE
    Integer = int32;
    TCanvas = array[0..canvas_width, 0..canvas_height] of Integer;

VAR
    canvas : TCanvas;
    x, y  : integer;
    x1, y1, color1,
    x2, y2, color2,
    x3, y3, color3 : integer;
    a,b,c,d,e,f:integer;

{$R *.lfm}

PROCEDURE Swap(var x, y : Integer);
BEGIN
x := x + y;
y := x - y;
x := x - y;
END;

FUNCTION cR(x : Integer) : Integer;
BEGIN
cR := x shr 16;
END;

FUNCTION cG(x : Integer) : Integer;
BEGIN
cG := x shr 8 and 255;
END;

FUNCTION cB(x : Integer) : Integer;
BEGIN
cB := x and 255;
END;

FUNCTION RGB (r, g, b : Integer) : Integer;
BEGIN
RGB := r and 255 shl 16 + g and 255 shl 8 + b and 255;
END;

FUNCTION LinearInterpolate(x1, y1, x, x2, y2 : Integer) : Integer;
BEGIN
LinearInterpolate := y1 + (y2 - y1) * (x - x1) div (x2 - x1);
END;

PROCEDURE DrawLine({var canvas : TCanvas;} x1, color1, x2, color2, y : Integer);
VAR
    x : Integer;
BEGIN
if x1 = x2 then begin
    form1.Canvas.pixels[x1, y] := (color1 + color2) shr 1;
    exit;
    end;
if x1 > x2 then begin
    Swap(    x1,     x2);
    Swap(color1, color2);
    end;
for x := x1 to x2 do
    if (x >= 0) and (x <= canvas_width) and (y >= 0) and (y <= canvas_height) then
        form1.canvas.pixels[x, y] := RGB(
                        LinearInterpolate(x1, cR(color1), x, x2, cR(color2)),
                        LinearInterpolate(x1, cG(color1), x, x2, cG(color2)),
                        LinearInterpolate(x1, cB(color1), x, x2, cB(color2))
                        );
END;

PROCEDURE DrawTriangle({var canvas : TCanvas;}  x1, y1, color1,  x2, y2, color2,  x3, y3, color3 : Integer);
VAR
    y: Integer;
    x_line_A, color_line_A,
    x_line_B, color_line_B : Integer;
BEGIN
if (y1 > y2) or (y1 = y2) and (x1 > x2) then begin
    Swap(    x1,     x2);
    Swap(    y1,     y2);
    Swap(color1, color2);
    end;
if (y2 > y3) or (y2 = y3) and (x2 > x3) then begin
    Swap(    x2,     x3);
    Swap(    y2,     y3);
    Swap(color2, color3);
    end;
if (y1 > y2) or (y1 = y2) and (x1 > x2) then begin
    Swap(    x1,     x2);
    Swap(    y1,     y2);
    Swap(color1, color2);
    end;
if y1 = y3 then begin
    DrawLine({canvas,} x1, color1, x3, color3, y1);
    exit;
    end;
if y1 <> y2 then
    for y := y1 to y2 do begin
        x_line_A     := LinearInterpolate(y1, x1, y, y2, x2);
        color_line_A := RGB(
                        LinearInterpolate(y1, cR(color1), y, y2, cR(color2)),
                        LinearInterpolate(y1, cG(color1), y, y2, cG(color2)),
                        LinearInterpolate(y1, cB(color1), y, y2, cB(color2))
                        );
        x_line_B     := LinearInterpolate(y1, x1, y, y3, x3);
        color_line_B := RGB(
                        LinearInterpolate(y1, cR(color1), y, y3, cR(color3)),
                        LinearInterpolate(y1, cG(color1), y, y3, cG(color3)),
                        LinearInterpolate(y1, cB(color1), y, y3, cB(color3))
                        );
        DrawLine({canvas,} x_line_A, color_line_A, x_line_B, color_line_B, y);
        sleep(10);
        end;
if y2 <> y3 then
    for y := y2 to y3 do begin
        x_line_A     := LinearInterpolate(y2, x2, y, y3, x3);
        color_line_A := RGB(
                        LinearInterpolate(y2, cR(color2), y, y3, cR(color3)),
                        LinearInterpolate(y2, cG(color2), y, y3, cG(color3)),
                        LinearInterpolate(y2, cB(color2), y, y3, cB(color3))
                        );
        x_line_B     := LinearInterpolate(y1, x1, y, y3, x3);
        color_line_B := RGB(
                        LinearInterpolate(y1, cR(color1), y, y3, cR(color3)),
                        LinearInterpolate(y1, cG(color1), y, y3, cG(color3)),
                        LinearInterpolate(y1, cB(color1), y, y3, cB(color3))
                        );
        DrawLine({canvas,} x_line_A, color_line_A, x_line_B, color_line_B, y);
        sleep(10);
        end;
END;

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
x1 :=  STRTOINT(form1.edit1.text); y1 :=  STRTOINT(form1.edit2.text); color1 := RGB(STRTOINT(form1.edit7.text), a, b);        //255
x2 := STRTOINT(form1.edit3.text); y2 := STRTOINT(form1.edit4.text); color2 := RGB(c, STRTOINT(form1.edit8.text), d);
x3 := STRTOINT(form1.edit5.text); y3 := STRTOINT(form1.edit6.text); color3 := RGB(e, f, STRTOINT(form1.edit9.text));
DrawTriangle({canvas,} x1, y1, color1,  x2, y2, color2,  x3, y3, color3);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Randomize;
  Form1.Edit7.Text:=inttostr(random(255));
  Form1.Edit8.Text:=inttostr(random(255));
  Form1.Edit9.Text:=inttostr(random(255));
  a:=random(255);
   b:=random(255);
    c:=random(255);
     d:=random(255);
      e:=random(255);
       f:=random(255);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Randomize;
  Form1.Edit1.Text:=inttostr(random(1000));
  Form1.Edit3.Text:=inttostr(random(1000));
  Form1.Edit5.Text:=inttostr(random(1000));
  Form1.Edit2.Text:=inttostr(random(650));
  Form1.Edit4.Text:=inttostr(random(650));
  Form1.Edit6.Text:=inttostr(random(650));
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin

end;



end.

