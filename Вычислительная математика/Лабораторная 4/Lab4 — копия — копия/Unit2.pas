unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Math, TeEngine, Series, ExtCtrls, TeeProcs, Chart,
  Grids;

type
  TForm2 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    btn1: TButton;
    cht1: TChart;
    Series1: TLineSeries;
    strngrd1: TStringGrid;
    procedure FormShow(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit1;

{$R *.dfm}

function F(x: double): double;
begin
  F :=  sin(x)/(x+1);//начальная формула
end;

function f2(x: double): Double;
begin
  f2:=Abs(4*cos(x)+(2*x+1/2)*(-sin(x)));
end;

procedure TForm2.FormShow(Sender: TObject);
const
  a = 0.18;  //начало интервала
  b = 0.98;  //конец интервала
  e = 0.0001;
var
  i, n: Integer;
  h, s1, s2: Double;
begin
  // Построение графика
  Series1.Clear;
  for i:=4 to 12 do  //i - твой интервал
    Series1.AddXY(i/10,(2*i/10+0.5)*sin(i/10),'',clgreen);
  n:=0;
  repeat
    Inc(n)
  until Abs(e) > (f2(3.17)*power(b-a,3))/(12*n*n);
  h:=(b-a)/n;
  s1:=0;
  s2:=a;
  strngrd1.RowCount:=n+2;
  strngrd1.Cells[0,0]:='№';
  strngrd1.Cells[1,0]:='y_k';
  strngrd1.Cells[2,0]:='y_k+1';
  strngrd1.Cells[3,0]:='S_k';
  for i:=1 to n do
    begin
      s1:=s1+(f(s2)+(f(s2+h)))*h/2;
      strngrd1.Cells[0,i]:=IntToStr(i);
      strngrd1.Cells[1,i]:=FormatFloat('0.000000',f(s2));
      strngrd1.Cells[2,i]:=FormatFloat('0.000000',f(s2+h));
      strngrd1.Cells[3,i]:=FormatFloat('0.000000',(f(s2)+(f(s2+h)))*h/2);
      s2:=s2+h;
    end;
  lbl2.Caption:='Ответ = '+formatfloat('0.0000',s1)+' с шагом h = '+formatfloat('0.0000',h);
  s1:=0;
  for i:=1 to n do
    s1:=s1+strtofloat(strngrd1.Cells[3,i]);
  strngrd1.Cells[0,n+1]:='Sтрап';
  strngrd1.Cells[3,n+1]:=FloatToStr(s1);
end;

procedure TForm2.btn1Click(Sender: TObject);
begin
  form2.Close;
end;

end.
