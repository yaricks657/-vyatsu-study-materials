unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids;

type
  TForm4 = class(TForm)
    lbl1: TLabel;
    grp1: TGroupBox;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    btn1: TButton;
    btn2: TButton;
    StringGrid1: TStringGrid;
    edt1: TEdit;
    lbl6: TLabel;
    lbl7: TLabel;
    edt2: TEdit;
    edt3: TEdit;
    Memo1: TMemo;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  e: real=0.00001;
  a: real=1.0;
  b: real=1.9;
  m, Mm: real;
implementation

uses Unit1;
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
FIter1:=1-(cos(x+0.5)-2)/k;
end;

{$R *.dfm}


procedure TForm4.btn1Click(Sender: TObject);
var s: string;
    fab: real;
begin
 if Form4.Btn1.Caption='��������� ������� M<=2m' then
 begin
 try
 a:=StrToFloat(Edt2.Text);
 b:=StrToFloat(Edt3.Text);
 except
 MessageDlg('�������� ������� �������', mtError, [mbOK], 0);
 Edt2.Text:='';
 Edt3.Text:='';
 Exit;
 end;
 if abs(F1(a))<abs(F1(b)) then m := abs(F1(a)) else m:= abs(F1(b));
 if abs(F2(a))>abs(F2(b)) then Mm :=abs(F2(a)) else Mm:= abs(F2(b));
 If Mm>2*m then
  begin
  Form4.Lbl4.Caption:='M='+FloatToStr(Mm);
  Form4.Lbl5.Caption:='m='+FloatToStr(m);
  Form4.lbl2.Caption:='������� M<=2m �� �����������';
  Form4.Btn1.Caption:='������ ��������';
  end
 else
  begin
  Form4.Lbl4.Caption:='M='+FloatToStr(Mm);
  Form4.Lbl5.Caption:='m='+FloatToStr(m);
  Form4.Lbl2.Caption:='������� M<=2m �����������';
  Form4.Btn2.Enabled:=true;
  end;
 end
else
 begin
 //while Mm > 2*m do
  //begin
  repeat
  fab:=(a+b)/2;
  if f(a)*f(fab)<0 then b:=fab else a:=fab;
  if F1(a)<F1(b) then m:=abs(F1(a)) else m:=abs(F1(b));
  if F2(a)>F2(b) then Mm:=F2(a) else Mm:=F2(b);
  Form4.Lbl4.Caption:='M='+FloatToStr(Mm);
  Form4.Lbl5.Caption:='m='+FloatToStr(m);
  until Mm<=2*m;
  //end;
 //Suzim;
 Form4.Lbl2.Caption:='������� M<=2m �����������';
 Form4.Lbl4.Caption:='M='+FloatToStr(Mm);
 Form4.Lbl5.Caption:='m='+FloatToStr(m);
 Str(a:5:3,s);
 Edt2.Text:=s;//FloatToStr(a);
 Str(b:5:3,s);
 Edt3.Text:=s;//FloatToStr(b);
 Btn2.Enabled:=true;
 end;
end;


procedure TForm4.btn2Click(Sender: TObject);
Var xn, xi: real;
    kk: byte;
    s1: string;
begin

Memo1.Lines.Add('������� ��������������� �������: ');
e:=StrToFloat(Form1.Edit6.Text);
kk:=1;
xn:=a; // nedostatok
xi:=b; //izbytok
with Form4.StringGrid1 do begin
Cells[0,0]:='�';
Cells[1,0]:='x �� ����������';
Cells[2,0]:='x �� �������';
if ((F1(a)<0) and (F2(a)>0)) or ((F1(a) > 0) and (F2(a) < 0)) then // ���� � ������
begin
Memo1.Lines.Add('���������� ����� ����� a');
Memo1.Lines.Add('X �� ���������� ������� ������� �����������');
Memo1.Lines.Add('X �� ������� ������� ������� ����');
while Abs(xn-xi)>e do
 begin
 xn:=xn-(F(xn)/F1(xn));
 xi:=xi-(xi-xn)*F(xi)/(F(xi) - F(xn));
 Cells[0,kk]:=IntToStr(kk);
 str(xn:9:5,s1);
 Cells[1,kk]:=s1;
 str(xi:9:5,s1);
 Cells[2,kk]:=s1;
 kk:=kk+1;
 RowCount:=kk;
 end;
end
else
begin
Memo1.Lines.Add('���������� ������ ����� b');
Memo1.Lines.Add('X �� ���������� ������� ������� ����');
Memo1.Lines.Add('X �� ������� ������� ������� �����������');
while Abs(xn-xi)>e do
 begin
 xn:=xn-(xi-xn)*F(xn)/(F(xi) - F(xn));
 xi:=xi-(F(xi)/F1(xi));
 Cells[0,kk]:=IntToStr(kk);
 str(xn:9:5,s1);
 Cells[1,kk]:=s1;
 str(xi:9:5,s1);
 Cells[2,kk]:=s1;
 kk:=kk+1;
 RowCount:=kk;
 end;
end;
str(xi:7:5,s1);
Form4.Edt1.Text:=s1;
Memo1.Lines.Add('�����: �='+s1+'');
Memo1.Lines.Add('***');
end // with
end;

end.
