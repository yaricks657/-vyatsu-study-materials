unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids;

type
  TForm5 = class(TForm)
    grp1: TGroupBox;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    btn1: TButton;
    btn2: TButton;
    StringGrid1: TStringGrid;
    edt1: TEdit;
    edt2: TEdit;
    lbl5: TLabel;
    lbl6: TLabel;
    edt3: TEdit;
    edt4: TEdit;
    Memo1: TMemo;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
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

procedure TForm5.btn1Click(Sender: TObject);
begin
a:=StrToFloat(Edt3.Text);
b:=StrToFloat(Edt4.Text);
if Abs(FIter1(b))<1 then
 begin
 Btn2.Enabled:=true;
 Form5.Lbl1.Caption:='������� ��������';
 Form5.Memo1.Lines.Add('������������ ���������: y=x-(sin(x+0,5)-2*x+1,5)/'+FloatToStr(round(k))+'');
 end
else
 begin
 Btn2.Enabled:=false;
 Form5.Lbl1.Caption:='������� ����������';
 Form5.Memo1.Lines.Add('������������ ���������: y=x-(sin(x+0,5)-2*x+1,5)/'+FloatToStr(round(k))+'');
 end;
end;


procedure TForm5.btn2Click(Sender: TObject);
var x0, x1,bb: real;
   kk, it: integer;
    s1: string;
begin
e:=1;
form5.edt2.text:='1' ;
If Form5.Edt2.Text='' then
 begin
 ShowMessage('������� ��������� �����������');
 Exit;
 end
else begin
if Btn2.Enabled then
 begin
 bb:=StrToFloat(Form5.Edt2.Text);
Form5.Memo1.Lines.Add('������� ������� ��������: ');
with Form5.StringGrid1 do
begin
 Cells[1,0]:='x';
 Cells[0,0]:='�';
 x0:=bb-(F(bb))/k;
 Cells[0,1]:='1';
 str(x0:9:5,s1);
 Cells[1,1]:=s1;
 x1:=x0-(F(x0))/k;
 Cells[0,2]:='2';
 str(x1:9:5,s1);
 Cells[1,2]:=s1;
 kk:=3;
 it:=2;
 while Abs(x0-x1)>0.00001 do
  begin
  x0:=x1;
  x1:=x0-(F(x0))/k;
  Cells[0,kk]:=IntToStr(kk);
  str(x1:9:5,s1);
  Cells[1,kk]:=s1;
  Kk:=kk+1;
  RowCount:=kk;
  Inc(It);
  end;
str(x1:7:5,s1);
Form5.Edt1.Text:=s1;
Form5.Memo1.Lines.Add('����� ��������: '+IntToStr(it)+'');
Form5.Memo1.Lines.Add('�����: �='+s1+'');
Form5.Memo1.Lines.Add('***');
 end;
end;
end; // edit5
end;

end.
