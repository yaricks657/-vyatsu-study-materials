unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, TeEngine, Series, ExtCtrls, TeeProcs, Chart;

type
  TForm4 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    btn1: TButton;
    cht1: TChart;
    Series1: TLineSeries;
    procedure btn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  mas4x : array[1..5] of real =
  (0.90618 ,0.538469,0,-0.538469 ,-0.90618 );
  mas7x : array[1..8] of Real =
  (0.96028986,0.79666648,0.52553242,0.18343464,-0.18343464,-0.52553242,-0.79666648,-0.96028986);
  mas4A : array[1..5] of Real =
  (0.23698,0.47863,0.56889,0.47863,0.23698);
  mas7A : array[1..8] of Real =
  (0.10122854,0.22238103,0.31370664,0.36268378,0.36268378,0.31370664,0.22238103,0.10122854);

implementation

{$R *.dfm}

procedure TForm4.btn1Click(Sender: TObject);
begin
  Form4.close
end;

function F(x:Real):real;
begin
  F:=(0.5*x+2)/sqrt(Sqr(x)+1)  ;
end;

procedure TForm4.FormShow(Sender: TObject);
const
  a = 0.8;
  b = 1.6;
var
  sum,temp:real;
  i:byte;
begin
  //График
  series1.Clear;
  for i:= 8 to 16 do
    Series1.AddXy(i/10,(0.5*i/10+2)/sqrt(Sqr(i/10)+1) ,'',clgreen);
  temp:= (b-a)/2;
  sum:=0;
  for i:=1 to 5 do
    begin
      sum:=sum+mas4A[i]*F((b+a)/2+((b-a)/2)*mas4x[i]);
    end;
  sum:=sum*temp;
  lbl3.Caption:='Ответ = ' + FormatFloat('0.000000000',sum);

  sum:=0;
  for i:=1 to 8 do
    begin
      sum:=sum+mas7A[i]*F((b+a)/2+((b-a)/2)*mas7x[i]);
    end;
  sum:=sum*temp;
  lbl5.Caption:='Ответ = ' + FormatFloat('0.000000000',sum);
end;

end.
