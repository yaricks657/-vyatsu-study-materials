unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids;

type
  TForm5 = class(TForm)
    lbl1: TLabel;
    btn1: TButton;
    lbl2: TLabel;
    lbl3: TLabel;
    strngrd1: TStringGrid;
    lbl4: TLabel;
    lbl5: TLabel;
    btn2: TButton;
    lbl6: TLabel;
    lbl7: TLabel;
    Label1: TLabel;
    procedure btn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses Unit6;

{$R *.dfm}

function f(x,y: Real): real;
begin
  f:=x-exp(y-1.5)+4.8;
end;

function  g(x,y:  Real): real;
begin
   g:=y-sin(x);
end;

function  fx(x,y: Real):  real;
begin
  fx:=1;
end;

function  gy(x,y: Real):  real;
begin
  gy:=y;
end;

function  fy(x,y: Real): real;
begin
  fy:=-exp(y-1.5);
end;

function  gx(x,y: Real):  real;
begin
  gx:=-cos(x);
end;

function  dk(x,y: Real): Real;
begin
  dk:= fx(x,y)*gy(x,y) - fy(x,y)*gx(x,y);
end;

function  dkx(x,y: Real): real;
begin
  dkx:=f(x,y)*gy(x,y) - fy(x,y)*g(x,y);
end;

function  dky(x,y: Real): real;
begin
  dky:= fx(x,y)*g(x,y) - f(x,y)*gx(x,y);
end;

procedure drow1(x,y,x1,y1: real; count:Byte);
begin
  with form5 do
    begin
      strngrd1.Cells[0,count]:=IntToStr(count);
      strngrd1.Cells[1,count]:=FormatFloat('0.00000000',x);
      strngrd1.Cells[2,count]:=FormatFloat('0.00000000',x1);
      strngrd1.Cells[3,count]:=FormatFloat('0.00000000',Abs(x1-x));
      strngrd1.Cells[4,count]:=FormatFloat('0.00000000',y);
      strngrd1.Cells[5,count]:=FormatFloat('0.00000000',y1);
      strngrd1.Cells[6,count]:=FormatFloat('0.00000000',Abs(y1-y));
    end;
end;

procedure TForm5.btn1Click(Sender: TObject);
const
    some1 = -2;
    some2 = 1;
    err = 0.001;
var
  tempx, tempy: real;
  xk_1, yk_1: real;
  count: byte;
begin
   lbl2.Caption:='X = ';
   lbl3.Caption:='Y = ';
  xk_1:=some1;
  yk_1:=some2;
  count:=0;
  repeat
    inc(count);
    tempx:=xk_1;
    tempy:=yk_1;
    xk_1:=tempx - dkx(tempx,tempy)/dk(tempx,tempy);
    yk_1:=tempy - dky(tempx,tempy)/dk(tempx,tempy);
    drow1(tempx,tempy,xk_1,yk_1,count); // ??????????? ?????? ? ???????
  until Sqrt(Sqr(xk_1 - tempx) + Sqr(yk_1 - tempy)) <= err;
  lbl2.Caption:=lbl2.Caption + FormatFloat('0.000',xk_1);
  lbl3.Caption:=lbl3.caption + FormatFloat('0.000',yk_1);
end;

procedure TForm5.FormCreate(Sender: TObject);
begin
  strngrd1.Cells[0,0]:='e = 0.001';
  strngrd1.Cells[1,0]:='x_k';
  strngrd1.Cells[2,0]:='x_k+1';
  strngrd1.Cells[3,0]:='|x_k+1 - x_k|';
  strngrd1.Cells[4,0]:='y_k';
  strngrd1.Cells[5,0]:='y_k+1';
  strngrd1.Cells[6,0]:='|y_k+1 - y_k|';
end;

procedure TForm5.btn2Click(Sender: TObject);
begin
  form6.showmodal;
end;

end.
