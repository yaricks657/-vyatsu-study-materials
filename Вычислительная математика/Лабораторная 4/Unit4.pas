unit Unit4;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, TeEngine, Series, ExtCtrls, TeeProcs, Chart,math,
  Grids;

type
  TForm4 = class(TForm)
    strngrd: TStringGrid;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  const
    e = 0.0001;
    a = 0.18;//начало интервала
  b = 0.98;//конец интервала

var
  Form4: TForm4;

implementation

{$R *.dfm}

function F(x: double): double;
begin
  F :=  sin(x)/(x+1);//начальная формула
end;

function f2(x: double): Double;
begin
  f2:=Abs(4*cos(x)+(2*x+1/2)*(-sin(x)));
end;

procedure TForm4.FormCreate(Sender: TObject);
var
  i, n: Integer;
  h, s1, s2: Double;
begin
  n:=0;
  repeat
    Inc(n)
  until Abs(e) > (f2(3.17)*power(b-a,3))/(12*n*n);
  h:=(b-a)/n;
  s1:=0;
  s2:=a;
  strngrd.RowCount:=n+2;
  strngrd.Cells[0,0]:='№';
  strngrd.Cells[1,0]:='y_k';
  strngrd.Cells[2,0]:='y_k+1';
  strngrd.Cells[3,0]:='S_k';
  for i:=1 to n do
    begin
      s1:=s1+(f(s2)+(f(s2+h)))*h/2;
      strngrd.Cells[0,i]:=IntToStr(i);
      strngrd.Cells[1,i]:=FormatFloat('0.000000',f(s2));
      strngrd.Cells[2,i]:=FormatFloat('0.000000',f(s2+h));
      strngrd.Cells[3,i]:=FormatFloat('0.000000',(f(s2)+(f(s2+h)))*h/2);
      s2:=s2+h;
    end;
 // lbl2.Caption:='Ответ = '+formatfloat('0.0000',s1)+' с шагом h = '+formatfloat('0.0000',h);
  s1:=0;
  for i:=1 to n do
    s1:=s1+strtofloat(strngrd.Cells[3,i]);
  strngrd.Cells[0,n+1]:='Sтрап';
  strngrd.Cells[3,n+1]:=FloatToStr(s1);
end;

end.
