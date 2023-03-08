unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus, ExtCtrls,
  StdCtrls, TAGraph;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button4: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Image1: TImage;
    Image2: TImage;
    Panel1: TPanel;
    Timer1: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
    procedure Edit6Change(Sender: TObject);
    procedure Edit7Change(Sender: TObject);
    procedure Edit8Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PaintBox1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation
var step,t,g,f:real;
  m,xn,yn,i,j:integer;
  kek:boolean;
  Rx:array [1..4] of integer;
   Ry:array [1..4] of integer;
    Px:array [1..4] of integer;
     Py:array [1..4] of integer;


{$R *.lfm}

{ TForm1 }

procedure TForm1.Button4Click(Sender: TObject);
begin
  Form1.Close;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Timer1.Enabled:=false;
//  Px[1]:=480;
  //Px[2]:=480;
  //Px[3]:=1440;
  //Px[4]:=1440;
  //Py[1]:=212;
  //Py[2]:=636;
  //Py[3]:=636;
 // Py[4]:=212;
end;

procedure TForm1.PaintBox1Click(Sender: TObject);
begin

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  timer1.Enabled:=false;
   Randomize;
  Edit1.Text:=InttoStr(random(1920));
   Edit3.Text:=InttoStr(random(1920));
    Edit5.Text:=InttoStr(random(1920));
     Edit7.Text:=InttoStr(random(1920));
       Edit2.Text:=InttoStr(random(850));
   Edit4.Text:=InttoStr(random(850));
    Edit6.Text:=InttoStr(random(850));
     Edit8.Text:=InttoStr(random(850));
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
     Image2.Visible:=false;
     timer1.Enabled:=false;
     kek:=true;
     i:=0;
     j:=0;
  m:=4;
  xn:=Px[1];
  yn:=Py[1];
  t:=0;
  g:=0;
  step:=0.01;
     Canvas.Pen.Color:=clWhite;
   for i:=0 to 1920 do
     begin
    Canvas.MoveTo(i,0);
    Canvas.LineTo(i,1001);
     end;
    Canvas.Pen.Color:=clBlack;
  Canvas.MoveTo(Px[1],Py[1]);
   Canvas.LineTo(Px[2],Py[2]);
   Canvas.MoveTo(Px[2],Py[2]);
   Canvas.LineTo(Px[3],Py[3]);
   Canvas.MoveTo(Px[3],Py[3]);
   Canvas.LineTo(Px[4],Py[4]);
   Canvas.MoveTo(Px[4],Py[4]);
   Canvas.LineTo(Px[1],Py[1]);
    timer1.Enabled:=true;
   end;

procedure TForm1.Button3Click(Sender: TObject);
begin

end;

procedure TForm1.Edit1Change(Sender: TObject);
begin
  Px[1]:=strtoint(Form1.Edit1.Text);
end;

procedure TForm1.Edit2Change(Sender: TObject);
begin
  Py[1]:=strtoint(Form1.Edit2.Text);
end;

procedure TForm1.Edit3Change(Sender: TObject);
begin
   Px[2]:=strtoint(Form1.Edit3.Text);
end;

procedure TForm1.Edit4Change(Sender: TObject);
begin
  Py[2]:=strtoint(Form1.Edit4.Text);
end;

procedure TForm1.Edit5Change(Sender: TObject);
begin
   Px[3]:=strtoint(Form1.Edit5.Text);
end;

procedure TForm1.Edit6Change(Sender: TObject);
begin
  Py[3]:=strtoint(Form1.Edit6.Text);
end;

procedure TForm1.Edit7Change(Sender: TObject);
begin
   Px[4]:=strtoint(Form1.Edit7.Text);
end;

procedure TForm1.Edit8Change(Sender: TObject);
begin
   Py[4]:=strtoint(Form1.Edit8.Text);
end;


procedure TForm1.Timer1Timer(Sender: TObject);
begin
   if t<1 then
  begin
  for i:=1 to m do
  begin
  Rx[i]:=Px[i];
  Ry[i]:=Py[i];
  end;
   for j:=m downto 2 do
   for i:=1 to j-1 do
   begin
   Randomize;
   Rx[i] := Rx[i] + round(t * (Rx[i + 1]-Rx[i]));
   Ry[i] := Ry[i] + round(t*(Ry[i + 1]-Ry[i]));
   Canvas.Pen.Color:=clRed;
    Canvas.MoveTo(xn,yn);
    Canvas.LineTo(Rx[1],Ry[1]);
   end;
   t:=t+step;
   xn:=Rx[1];
   yn:=Ry[1];
   end else
   if kek=true then
   begin
   Canvas.Pen.Color:=clWhite;
   for i:=0 to 1920 do
     begin
    Canvas.MoveTo(i,0);
    Canvas.LineTo(i,1001);
     end;
   kek:=false;
   end else
  // Image2.Visible:=true;
   if g<1 then
   begin
   Image2.Visible:=true;
    for i:=1 to m do
  begin
  Rx[i]:=Px[i];
  Ry[i]:=Py[i];
  end;
   for j:=m downto 2 do
   for i:=1 to j-1 do
   begin
   Randomize;
   Rx[i] := Rx[i] + round(g * (Rx[i + 1]-Rx[i]));
   Ry[i] := Ry[i] + round(g*(Ry[i + 1]-Ry[i]));
    Image1.Top:=Ry[1];
   Image1.Left:=Rx[1];
   end;
   g:=g+step;
   xn:=Rx[1];
   yn:=Ry[1];
   end;

   end;

end.

