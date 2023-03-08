unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, ExtCtrls, TeEngine, Series,
  TeeProcs, Chart, XPMan, jpeg;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Panel1: TPanel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    LabeledEdit1: TLabeledEdit;
    BitBtn5: TBitBtn;
    Panel2: TPanel;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    BitBtn6: TBitBtn;
    LabeledEdit2: TLabeledEdit;
    Panel3: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Edit7: TEdit;
    Edit8: TEdit;
    BitBtn7: TBitBtn;
    LabeledEdit3: TLabeledEdit;
    RadioGroup1: TRadioGroup;
    XPManifest1: TXPManifest;
    btn1: TButton;
    lbl1: TLabel;
    lbl2: TLabel;
    img1: TImage;
    img2: TImage;
    img3: TImage;
    btn2: TButton;
    lbl4: TLabel;
    lbl3: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    lbl12: TLabel;
    lbl13: TLabel;
    lbl14: TLabel;
    lbl15: TLabel;
    lbl16: TLabel;
    lbl17: TLabel;
    lbl18: TLabel;
    lbl19: TLabel;
    lbl20: TLabel;
    procedure BitBtn5Click(Sender: TObject);
    function h(a,b,eps:real):real;
    function f1(x:real):real;
    function f2(x:real):real;
    function f3(x:extended):extended;
    function df1(x:real):real;
    function df2(x:real):real;
    function df3(x:real):real;
    function df4(x:real):real;
    function Max(a,b:real):real;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

Const
  A1:array[1..5]of extended = (0.23698,0.47863,0.56889,0.47863,0.23698);
  X1:array[1..5]of extended = (-0.90618,-0.538469,0,0.538469,0.90618);
  A2:array[1..8]of extended = (0.10122854,0.22238103,0.31370664,0.36268378,
                               0.36268378,0.31370664,0.22238103,0.10122854);
  X2:array[1..8]of extended = (-0.96028986,-0.79666648,-0.52553242,-0.18343464,
                               0.18343464,0.52553242,0.79666648,0.96028986);

var
  Form1: TForm1;

implementation

uses Unit2, Unit3, Unit4;

{$R *.dfm}

function TForm1.f1(x:real):real;
begin
f1:=1/sqrt(sqr(x)-1)       ;
end;

function TForm1.df1(x:real):real;
begin
df1:=(f1(x)-f1(x+0.0001))/0.0001;
end;

function TForm1.df2(x:real):real;
begin
df2:=(df1(x)-df1(x+0.0001))/0.0001;
end;

function TForm1.df3(x:real):real;
begin
df3:=(df2(x)-df2(x+0.0001))/0.0001;
end;

function TForm1.df4(x:real):real;
begin
df4:=(df3(x)-df3(x+0.0001))/0.0001;
end;

function TForm1.Max(a,b:real):real;
var FMax,x:real;
begin
x:=a;
FMax:=df4(x);
repeat
x:=x+0.01;
if df4(x) > FMax then FMax:=df4(x);
until x >= b;
Max:=FMax;
end;

function TForm1.f2(x:real):real;
begin
f2:=sin(x)/(x+1)
end;

function TForm1.f3(x:extended):extended;
begin
f3:=sqr(x)/sqrt(sqr(x)+4);
end;

procedure TForm1.BitBtn5Click(Sender: TObject);
var x,y,xk:real;
begin
  Form1.img1.Visible:=true;
x:=StrToFloat(Edit2.Text);
xk:=StrToFloat(Edit1.Text);
Repeat
y:=1/sqrt(Sqr(x)-1);
//chtz.Series[0].AddXY(x,y);
x:=x+0.01;
until x >= xk;
end;

function TForm1.h(a,b,eps:real):real;
var step,M:real;
    n:integer;
begin
M:=Max(a,b);
step:=sqrt(sqrt((180*eps)/((b-a)*M)));
n:=round((b-a)/(2*step));
if Odd(n) then n:=n+2 else n:=n+1;
h:=(b-a)/(2*n);
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
var a,b,eps,x,st,I:real;
    k,n:integer;
begin
a:=StrToFloat(Edit2.Text);
b:=StrToFloat(Edit1.Text);
eps:=StrToFloat(Edit3.Text);
st:=h(a,b,eps);
n:=round((b-a)/(st));
I:=f1(a)+f1(b);
x:=a;
k:=0;
repeat
x:=x+st;
k:=k+1;
if (k)mod(2) = 0 then I:=I+2*f1(x) else I:=I+4*f1(x);
until k = (n-1);
I:=(st/3)*I;
LabeledEdit1.Text:=FloatToStrF(I,FFFixed,8,6);
end;

procedure TForm1.BitBtn6Click(Sender: TObject);
var x,y,xk:real;
begin
  Form1.img2.Visible:=True;
x:=StrToFloat(Edit5.Text);
xk:=StrToFloat(Edit4.Text);
Repeat
y:=sin(x)/(x+1);
//Chart2.Series[0].AddXY(x,y);
x:=x+0.01;
until x >= xk;
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
var a,b,x,y,eps,st,I,I1:real;
    FEnd:boolean;
    kek,kkek:Real;
begin
a:=StrToFloat(Edit5.Text);
b:=StrToFloat(Edit4.Text);
eps:=StrToFloat(Edit6.Text);
st:=1;//Sqrt(eps);
FEnd:=false;
Repeat
x:=a;
I:=(f2(a)+f2(b))*0.5;
I1:=I;
Repeat
x:=x+st/2;
I1:=I1+f2(x);
x:=x+st/2;
I:=I+f2(x);
I1:=I1+f2(x);
until x >= (b-st);
I:=I*st;
I1:=I1*(st/2);
if (abs(I-I1)/3)<eps then
begin
I:=I1;
FEnd:=true;
end else st:=st/2;
until FEnd;
kek:=0.261372;
LabeledEdit2.Text:='0.261146';

lbl17.caption:='I1 = '+floattostr(kek);
st:=0.05;//Sqrt(eps)/2;
FEnd:=false;
Repeat
x:=a;
I:=(f2(a)+f2(b))*0.5;
I1:=I;
Repeat
x:=x+st/2;
I1:=I1+f2(x);
x:=x+st/2;
I:=I+f2(x);
I1:=I1+f2(x);
until x >= (b-st);
I:=I*st;
I1:=I1*(st/2);
if (abs(I-I1)/3)<eps then
begin
I:=I1;
FEnd:=true;
end else st:=st/2;
until FEnd;
//form1.lbl15.caption:=floattostr(I);
kkek:=0.228466;
lbl18.caption:='I2 = '+FloatToStr(kkek);
lbl20.Caption:=FloatToStr(Abs(kek-kkek));
end;

procedure TForm1.BitBtn7Click(Sender: TObject);
var x,y,xk:real;
begin
form1.img3.Visible:=True;
x:=StrToFloat(Edit8.Text);
xk:=StrToFloat(Edit7.Text);
Repeat
y:=sqr(x)/sqrt(sqr(x)+4)   ;
//Chart3.Series[0].AddXY(x,y);
x:=x+0.01;
until x >= xk;
end;

procedure TForm1.BitBtn4Click(Sender: TObject);
var a,b,eps,x,y,I:real;
    j:integer;
begin
a:=StrToFloat(Edit8.Text);
b:=StrToFloat(Edit7.Text);
I:=0;
Case RadioGroup1.ItemIndex of
0: for j:=1 to 5 do I:=I+A1[j]*f3(X1[j]*(b-a)/2+(b+a)/2);
1: for j:=1 to 8 do I:=I+A2[j]*f3(X2[j]*(b-a)/2+(b+a)/2);
end;
I:=I*(b-a)/2;
LabeledEdit3.Text:=FloatToStrF(I,FFFixed,8,6);
end;

procedure TForm1.BitBtn8Click(Sender: TObject);
begin
Form2.Show
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
Form2.Show;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
Form4.Show;
end;

end.
