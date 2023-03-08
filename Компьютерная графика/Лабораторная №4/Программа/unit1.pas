unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus, ExtCtrls,
  StdCtrls, ColorBox, TAGraph;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    ColorListBox1: TColorListBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Panel1: TPanel;
    Timer1: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);


    procedure Button4Click(Sender: TObject);
    procedure ColorListBox1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
    procedure Edit6Change(Sender: TObject);
    procedure Edit7Change(Sender: TObject);
    procedure Edit8Change(Sender: TObject);
    procedure FormClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Panel1Click(Sender: TObject);

  private

  public

  end;

var
  Form1: TForm1;

implementation
type
    pitem = ^item;
    item = record
        data: integer;
        prev: pitem
    end;
var step,t,g,f:real;
  m,xn,yn,i,j:integer;
  kek:boolean;
  Rx:array [1..4] of integer;
   Ry:array [1..4] of integer;
    Px:array [1..4] of integer;
     Py:array [1..4] of integer;
    topx,topy, pxx,pyy: pitem;
    n, k,x,y,xw,xr,xl,xb: integer;
    kk:int32;


{$R *.lfm}

{ TForm1 }

procedure TForm1.Button4Click(Sender: TObject);
begin
  Form1.Close;
end;

procedure TForm1.ColorListBox1Click(Sender: TObject);
begin
  kk:=ColorListbox1.Selected;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Timer1.Enabled:=false;
end;

procedure TForm1.Panel1Click(Sender: TObject);
begin

end;

procedure Pushx(x:integer);
begin
    new(pxx);
    pxx^.data := x;
    pxx^.prev := topx;
    topx := pxx;
end;

procedure Pushy(y:integer);
begin
    new(pyy);
    pyy^.data := y;
    pyy^.prev := topy;
    topy := pyy;
end;

Procedure Popy(Var u : pitem; Var y : integer);
Var
  yy :pitem;
Begin
  y := u^.Data;
  yy := u;
  u := u^.prev;
  dispose(yy);
End;

Procedure Popx(Var u : pitem; Var x : integer);
Var
  xx :pitem;
Begin
  x := u^.Data;
  xx := u;
  u := u^.prev;
  dispose(xx);
End;

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
  // for i:=0 to 1920 do
    // begin
    //Canvas.MoveTo(i,0);
    //Canvas.LineTo(i,1001);
    // end;
    Canvas.Pen.Color:=clBlack;
  Canvas.MoveTo(Px[1],Py[1]);
   Canvas.LineTo(Px[2],Py[2]);
   Canvas.MoveTo(Px[2],Py[2]);
   Canvas.LineTo(Px[3],Py[3]);
   Canvas.MoveTo(Px[3],Py[3]);
   Canvas.LineTo(Px[4],Py[4]);
   Canvas.MoveTo(Px[4],Py[4]);
   Canvas.LineTo(Px[1],Py[1]);
   // timer1.Enabled:=true;
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

procedure TForm1.FormClick(Sender: TObject);
var p:Tpoint;
  x,y,j:integer;
  fl:boolean;
begin
  p := Mouse.CursorPos;
  p := ScreenToClient(p);
  x := p.X;
  y := p.Y;
  Pushx(x);
  Pushy(y);
  while (topx<>nil)and(topy<>nil) do
begin
 Popx(topx,x);
 Popy(topy,y);
 Form1.Canvas.Pixels[x,y]:=kk;
 xw:=x;
 x:=x+1;
 while Form1.Canvas.Pixels[x,y]<>clBlack do
begin
 Form1.Canvas.Pixels[x,y]:=kk;
 x:=x+1;
 end;
 xr:=x-1;
 x:=xw;
 x:=x-1;
 while Form1.Canvas.Pixels[x,y]<>clBlack do
begin
 Form1.Canvas.Pixels[x,y]:=kk;
 x:=x-1;
end;
 xl:=x+1;
 j:=-1;
 while j<=2 do
begin
 x:=xl;
 y:=y+j;
 while x<=xr do
  begin
   fl:=false;
   while (Form1.Canvas.Pixels[x,y]<>clBlack) and (Form1.Canvas.Pixels[x,y]<>kk) and (x<xr) do
    begin
     x:=x+1;
     if (not fl)=true then fl:=true
     end;
   if fl=true then
   begin
   if (x=xr) and (Form1.Canvas.Pixels[x,y]<>clBlack) and (Form1.Canvas.Pixels[x,y]<>kk) then
   begin
   Pushx(x);
   Pushy(y);
   end else
   begin
    Pushx(x-1);
   Pushy(y);
    end;
   fl:=false;
   end;
   xb:=x;
   while (Form1.Canvas.Pixels[x,y]=clBlack) or (Form1.Canvas.Pixels[x,y]=kk) and (x<xr) do
    x:=x+1;
   if x=xb then x:=x+1;
   end;
  j:=j+3;
 end;
end;

end;

end.

