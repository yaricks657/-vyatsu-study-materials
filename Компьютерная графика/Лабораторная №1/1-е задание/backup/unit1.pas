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
    Button3: TButton;
    Button4: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Panel1: TPanel;
    Timer1: TTimer;
    Timer2: TTimer;
    Timer3: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation
var x,y,x1,x2,y1,y2,dx,dy,s1,s2,e,kek,i,m:integer;
  lol:boolean;

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button4Click(Sender: TObject);
begin
  Form1.Close;
end;

function sign(x:integer): integer;
begin
  if x>=0 then sign:=1 else
    sign:= (-1);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
 // timer3.Enabled:=true;
 if x1<>x2 then
  begin
  m:=Round((y2-y1)/(x2-x1));
  y:=y1;
  for x:=x1 to x2 do
  begin
    Canvas.Pixels[x,Round(y)]:=clRed;
    y:=y+m;
    end;
  end else
  if y1=y2 then
  Canvas.Pixels[x1,y1]:=clRed else
    ShowMessage('Вертикально нельзя!');
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
 x:=x1;
 y:=y1;
 dx:=abs(x2-x1);
 dy:=abs(y2-y1);
 s1:=sign(x2-x1);
 s2:=sign(y2-y1);
// timer2.Enabled:=true;
 if dy<dx then lol:=false else
   begin
   kek:=dx;
   dx:=dy;
   dy:=kek;
   lol:=true;
   end;
 e:=2*dy-dx;
 for i:=1 to dx+dy do
 begin
   Canvas.Pixels[x,y]:=clRed;
   if e<0 then
   begin
   if lol=true then y:=y+s2 else x:=x+s1;
   e:=e+2*dy;
   end else
   begin
     if lol=true then x:=x+s1 else y:=y+s2;
     e:=e-2*dx;
   end;
 end;
 Canvas.Pixels[x,y]:=clRed;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  x:=x1;
  y:=y1;
  dx:=abs(x2-x1);
  dy:=abs(y2-y1);
  s1:=sign(x2-x1);
  s2:=sign(y2-y1);
  timer1.Enabled:=true;
 { if dy>dx then
  begin
  kek:=dx;
  dx:=dy;
  dy:=kek;
  lol:=true;
  end else lol:=false;
  e:=2*dy-dx;
  for i:=1 to dx do
  begin
    Canvas.Pixels[x,y]:=clRed;
    while e>=0 do
begin
 if lol=true then x:=x+s1 else y:=y+s2;
e:=e-2*dx;
end;
  if lol=true then y:=y+s2 else x:=x+s1;
  e:=e+2*dy;
  end;
Canvas.Pixels[x,y]:=clRed; }
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin
if Form1.Edit1.Text <> '' then
begin
if (strtoint(Edit1.Text)>10000) or (strtoint(Edit1.Text)<-10000)then
   begin
   showmessage('Можно вводить число в пределе от -10000 до 10000');
   Edit1.Text:='';
   end;
if Form1.Edit1.Text <> '' then
   x1:=strtoint(Edit1.Text);// else  Edit1.Text:='';
   end;
end;


procedure TForm1.Edit2Change(Sender: TObject);
begin
if Form1.Edit2.Text <> '' then
   begin
if (strtoint(Edit2.Text)>10000) or (strtoint(Edit2.Text)<-10000) then
   begin
   showmessage('Можно вводить число в пределе от -10000 до 10000');
   Edit2.Text:='';
   end;
if Form1.Edit2.Text <> '' then
  y1:=strtoint(Edit2.Text);
  end;
end;


procedure TForm1.Edit3Change(Sender: TObject);
begin
if Form1.Edit3.Text <> '' then
  begin
if (strtoint(Edit3.Text)>10000) or (strtoint(Edit3.Text)<-10000) then
   begin
   showmessage('Можно вводить число в пределе от -10000 до 10000');
   Edit3.Text:='';
   end;
if Form1.Edit3.Text <> '' then
  x2:=strtoint(Edit3.Text);
end;
end;

procedure TForm1.Edit4Change(Sender: TObject);
begin
if Form1.Edit4.Text <> '' then
  begin
if (strtoint(Edit4.Text)>10000) or (strtoint(Edit4.Text)<-10000) then
   begin
   showmessage('Можно вводить число в пределе от -10000 до 10000');
   Edit4.Text:='';
   end;
if Form1.Edit4.Text <> '' then
  y2:=strtoint(Edit4.Text);
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  timer1.Enabled:=false;
  timer2.Enabled:=false;
  timer3.Enabled:=false;
end;


procedure TForm1.FormPaint(Sender: TObject);
begin

end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
   if dy>dx then
  begin
  kek:=dx;
  dx:=dy;
  dy:=kek;
  lol:=true;
  end else lol:=false;
  e:=2*dy-dx;
  if i<dx then //for i:=1 to dx do
  begin
    Canvas.Pixels[x,y]:=clRed;
    if e>=0 then//while e>=0 do
begin
 if lol=true then x:=x+s1 else y:=y+s2;
e:=e-2*dx;
end;
  if lol=true then y:=y+s2 else x:=x+s1;
  e:=e+2*dy;
  i:=i+1;
  end;
Canvas.Pixels[x,y]:=clRed;
end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin
     if dy<dx then lol:=false else
   begin
   kek:=dx;
   dx:=dy;
   dy:=kek;
   lol:=true;
   end;
 e:=2*dy-dx;
 if i<(dx+dy) then  //for i:=1 to dx+dy do
 begin
   Canvas.Pixels[x,y]:=clRed;
   if e<0 then
   begin
   if lol=true then y:=y+s2 else x:=x+s1;
   e:=e+2*dy;
   end else
   begin
     if lol=true then x:=x+s1 else y:=y+s2;
     e:=e-2*dx;
   end;
   i:=i+1;
 end;
 Canvas.Pixels[x,y]:=clRed;
end;

procedure TForm1.Timer3Timer(Sender: TObject);
begin
 timer3.Enabled:=true;
  if x1<>x2 then
  begin
  m:=Round((y2-y1)/(x2-x1));
  y:=y1;
  if x<x2 then//for x:=x1 to x2 do
  begin
    Canvas.Pixels[x,Round(y)]:=clRed;
    y:=y+m;
    x:=x+1;
    end;
  end else
  if y1=y2 then
  Canvas.Pixels[x1,y1]:=clRed else
    ShowMessage('Вертикально нельзя!');
end;

end.

