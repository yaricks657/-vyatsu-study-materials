unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, TeEngine, Series, TeeProcs, Chart,math,
  TeeFunci;

type
  TForm6 = class(TForm)
    btn1: TButton;
    cht1: TChart;
    Series1: TLineSeries;
    Series2: TPointSeries;
    TeeFunction1: TAddTeeFunction;
    lnsrsSeries3: TLineSeries;
    sbtrctfnctnTeeFunction2: TSubtractTeeFunction;
    procedure btn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation
 uses Unit5;
{$R *.dfm}

procedure TForm6.btn1Click(Sender: TObject);
begin
  form6.Close;
end;

procedure TForm6.FormShow(Sender: TObject);
var
  i:integer;
  x,A,B:real;

begin
  A:=0.282837;
  B:=-0.055301;

Series1.Clear;
x:=0.1;
  for i:=1 to Unit5.n do
    begin
    Series2.AddXY(Unit5.masx[i],Unit5.masy[i],'',clRed);
    end;
 for i:=1 to 50 do
 begin
  Series1.AddXY(x, (x/(A*x+B)) ,'',clGreen);
  x:=x+0.1;
 end;
end;

end.
