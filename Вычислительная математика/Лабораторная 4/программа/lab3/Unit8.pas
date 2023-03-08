unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Series, TeEngine, ExtCtrls, TeeProcs, Chart;

type
  TForm8 = class(TForm)
    btn1: TButton;
    cht1: TChart;
    Series1: TLineSeries;
    Series2: TPointSeries;
    procedure btn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation
uses Unit7;
{$R *.dfm}

procedure TForm8.btn1Click(Sender: TObject);
begin
  Form8.Close;
end;

procedure TForm8.FormShow(Sender: TObject);
const
  A=-4.0565;
  B=5.9212;
var
  i:integer;
  x:real;
begin
Series1.Clear;
x:=1;
  for i:=1 to Unit7.n do
    begin
    Series2.AddXY(Unit7.masx[i],Unit7.masy[i],'',clRed);
    end;
 for i:=1 to 40 do
 begin
  Series1.AddXY(x,Exp(a+b*ln(x)),'',clGreen);
  x:=x+0.1;
 end;
end;

end.
