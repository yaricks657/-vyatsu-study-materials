unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, XPMan, Grids, TeeProcs, TeEngine,
  Chart, ComCtrls, Menus;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label6: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Image1: TImage;
    Image2: TImage;
    Edit6: TEdit;
    Button1: TButton;
    Button2: TButton;

    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  e: real=0.00001;
  a: real=1.0;
  b: real=1.9;
  m, Mm: real;
implementation

uses Unit4, Unit5, Unit2, Unit3;

function f(x:real): real;
begin
f:=sin(x+0.5)-2*x+1.5;
end;

function f1(x:real): real;
begin
f1:=cos(x+0.5)-2;
end;

function f2(x:real): real;
begin
f2:=-sin(x+0.5);
end;

function  k: real;
var max: real;
    fl: boolean;
begin
if abs(f1(a))>abs(f1(b)) then max:=f1(a) else max:=f1(b);
if max<0 then fl:=false else fl:=true;
if fl then k:=abs(max/2)+1
else k:=-(abs(max/2)+1);
end;

function FIter(x:real):real;
begin
FIter:=x-(sin(x+0.5)-2*x+1.5)/k;
end;

function Fiter1(x:real):real;
begin
FIter1:=1-(-sin(x+0.5))/k;
end;


{$R *.dfm}
procedure Line(x1,y1,x2,y2:integer);
begin
Form1.Image1.Canvas.MoveTo(x1,y1);
Form1.Image1.Canvas.LineTo(x2,y2);
end;


procedure Line2(x1,y1,x2,y2:integer);
begin
Form1.Image2.Canvas.MoveTo(x1,y1);
Form1.Image2.Canvas.LineTo(x2,y2);
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
Close;
end;

Procedure Suzim;
Var prir,na,ko,t,max1,max,min:real;
begin
na:=a;
ko:=b;
Repeat
max1:=abs(f1(na));
min:=abs(f1(na));
max:=abs(f2(na));
t:=na;
While t<=ko do begin
if  abs(f1(t))> max1 then
max1:=abs(f1(t));
If abs(f1(t))< min then
min:=abs(f1(t));
if abs(f2(t))> max then
max:=abs(f2(t)); t:=t+0.00001;
end;
prir:=(ko-na)/2;
If f(na)*F(na+prir)<0 then begin
na:=na;
ko:=na+prir;
end;
If f(na+prir)*F(ko)< 0 then begin
na:=na+prir;
ko:=ko;
end;
until max<= 2*min ;
a:=na;
b:=ko;
Form1.Edit1.Text:=floattostr(a);
Form1.Edit2.Text:=floattostr(b);
end;

procedure TForm1.FormActivate(Sender: TObject);
var x,y:real;
    xst:string;
begin
Form5.Lbl4.Caption:='������������ ���������:  y=x - (sin(x+0,5)-2*x+1,5)/2';
Form5.Memo1.ScrollBars:=ssVertical;
//Color:=$00ECFFF0;
Line(200,0,200,450);
Line(0,200,400,200);
Line(200,0,196,15);
Line(200,0,204,15);
Line(400,200,385,205);
Line(400,200,385,195);
x:=-5; ////////////////////////////////////////
with Form1.Image1.Canvas do begin
while x<=5 do begin
Line(200+round(x*90),202,200+round(x*90),197);
Line(202,200+round(x*90),198,200+round(x*90));
x:=x+0.2;
end;
x:=0;//////////////////////////////////////////
TextOut(194,203,'0');
while x<=5 do begin
Font.Name := 'Tahoma';
Font.Size :=6;
Brush.Style := bsClear;
xst:=FloatTostr(x);
if xst<>'0' then begin
TextOut(200+round(x*90)-7,205,xst);
TextOut(185, 200-round(x*90)-4,xst);
TextOut(200-round(x*90)-7,205,'-'+xst);
TextOut(185, 200+round(x*90)-4,'-'+xst);
end;
x:=x+0.2;
end;
x:=0.00001;
while x<=3 do begin
y:=f(x);
Pixels[200+round(x*90),200-round(y*90)]:=clred;
x:=x+0.001;
end;
end; //�� with
with Form1.Image2.Canvas do begin
x:=-5;
Line2(200,0,200,450);
Line2(0,200,400,200);
Line2(200,0,196,15);
Line2(200,0,204,15);
Line2(400,200,385,205);
Line2(400,200,385,195);
while x<=5 do begin
Line2(200+round(x*90),202,200+round(x*90),197);
Line2(202,200+round(x*90),198,200+round(x*90));
x:=x+0.2;
end;
x:=0;
TextOut(194,203,'0');
while x<=5 do begin
Font.Name := 'Tahoma';
Font.Size :=6;
Brush.Style := bsClear;
xst:=FloatTostr(x);
if xst<>'0' then begin
TextOut(200+round(x*90)-7,205,xst);
TextOut(185, 200-round(x*90)-4,xst);
TextOut(200-round(x*90)-7,205,'-'+xst);
TextOut(185, 200+round(x*90)-4,'-'+xst);
end;
x:=x+0.2;
end;
x:=0.000001;
while x<=3 do begin
y:=x-(f(x)/k);
Pixels[200+round(x*90),200-round(y*90)]:=clred;
x:=x+0.001;
end;
x:=-5;
while x<=5 do begin
y:=x;
Pixels[200+round(x*90),200-round(y*90)]:=clBlue;
x:=x+0.001;
end;
end; //�� with

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
e:=StrToFloat(Edit6.Text);
RePaint;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
Form4.ShowModal;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Form5.ShowModal;
end;


procedure TForm1.N3Click(Sender: TObject);
begin
Close;
end;

procedure TForm1.N2Click(Sender: TObject);
begin
Form2.ShowModal;
end;

procedure TForm1.N1Click(Sender: TObject);
begin
Form3.ShowModal;
end;

end.
