unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, TeEngine, Series, ExtCtrls, TeeProcs, Chart,math,
  Grids;

type
  TForm3 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    btn2: TButton;
    cht1: TChart;
    Series1: TLineSeries;
    strngrd1: TStringGrid;
    procedure btn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.btn2Click(Sender: TObject);
begin
  form3.Close;
end;

function F(x: double): double;
begin
  F :=  1/sqrt(3+sqr(x)) ;//начальная формула
end;

procedure TForm3.FormShow(Sender: TObject);
const
  a = 0.4;//начало интервала
  b = 1.2;//конец интервала
  epsilon = 0.0001;
var
  i, n: Integer;
  h, s,s2,temp1,temp2: Double;
  x: Double;
begin
  //Построение графика
  series1.Clear;
  for i:=4 to 12 do  //i - твой интервал
    Series1.AddXY((i/10), 1/sqrt(3+sqr(i/10))   ,'',clGreen);
    strngrd1.Cells[1,0]:='h = '+formatfloat('0.0000',Power(epsilon,1/4));
    strngrd1.Cells[2,0]:='h/2 = '+formatfloat('0.0000',Power(epsilon,1/4)/2);
    strngrd1.Cells[0,2]:='2*sum(y_2n-2)';
    strngrd1.Cells[0,1]:='4*sum(y_2n-1)';
    strngrd1.Cells[0,3]:='Ответ = ';
    repeat
      h:=Power(epsilon,1/4);
      s:=0; x:=a+h;
      temp1:=0;
      temp2:=0;
      while x<b do
      begin
        s:=s+4*f(x);
        temp1:=temp1+4*f(x);
        x:=x+h;
        s:=s+2*f(x);
        temp2:=temp2+2*f(x);
        x:=x+h;
      end;
      s:=h/3*(s+f(a)-f(b));
      h:=h/2;
      strngrd1.Cells[1,1]:=formatfloat('0.000000',temp1);
      strngrd1.cells[1,2]:=formatfloat('0.000000',temp2);
      temp1:=0;
      temp2:=0;
      s2:=0; x:=a+h;
      while x<b do
      begin
        s2:=s2+4*f(x);
        temp1:=temp1+4*f(x);
        x:=x+h;
        s2:=s2+2*f(x);
        temp2:=temp2+2*f(x);
        x:=x+h;
      end;
      s2:=h/3*(s2+f(a)-f(b));
      strngrd1.Cells[2,1]:=formatfloat('0.000000',temp1);
      strngrd1.cells[2,2]:=formatfloat('0.000000',temp2);
    until epsilon > Abs(s2-s)/15;
  //ответ
  lbl2.Caption:='Ответ = '+formatfloat('0.00000000',s2);
  strngrd1.Cells[1,3]:=FormatFloat('0.000000',s);
  strngrd1.Cells[2,3]:=FormatFloat('0.000000',s2)
end;

end.
