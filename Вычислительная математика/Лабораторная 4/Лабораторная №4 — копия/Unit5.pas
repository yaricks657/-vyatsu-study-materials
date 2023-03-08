unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, ExtCtrls, TeeProcs, TeEngine, Chart, Series,
  Buttons;

type
  TForm5 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    strngrd1: TStringGrid;
    lbl3: TLabel;
    strngrd2: TStringGrid;
    btn1: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses Unit1;

{$R *.dfm}

function delta(x,y: Real):real;
var
  i,j:byte;
begin
  delta:=y/x-sqr(y);
end;
procedure TForm5.FormShow(Sender: TObject);
var
  i,j,k:byte;
  temp,y,Deltay,K1,K2,K3,K4,Yi,x,e:real;
begin
  //начальное заполнение

    strngrd1.Cells[0,0]:='K';
 strngrd1.Cells[1,0]:='X_k';
  strngrd1.Cells[2,0]:='Y_k';
  strngrd1.Cells[7,0]:='Delta_y';
  strngrd1.Cells[8,0]:='yi=y+Delta_y';
  strngrd1.Cells[3,0]:='K1';
  strngrd1.Cells[4,0]:='K2';
  strngrd1.Cells[5,0]:='K3';
  strngrd1.Cells[6,0]:='K4';

  strngrd2.Cells[0,0]:='K';
  strngrd2.Cells[1,0]:='X_k';
  strngrd2.Cells[2,0]:='Y_k';
  strngrd2.Cells[7,0]:='Delta_y';
  strngrd2.Cells[8,0]:='yi=y+Delta_y';
  strngrd2.Cells[3,0]:='K1';
  strngrd2.Cells[4,0]:='K2';
  strngrd2.Cells[5,0]:='K3';
  strngrd2.Cells[6,0]:='K4';
   y:=1;
   yi:=1;
   x:=1;
  temp:=1;

  e:=0.000001;
    i:=1;
    repeat
    y:=yi;
     k1:=0.2*delta(x,y);
     k2:=0.2*delta(x+0.1,y+k1/2);
     k3:=0.2*delta(x+0.1,y+k2/2);
     k4:=0.2*delta(x+0.2,y+k3);
     Deltay:=(1/6)*(k1+2*k2+2*k3+k4);
  strngrd1.Cells[0,i]:=FloatToStr(i);
  strngrd1.Cells[1,i]:=FloatToStr(x);
  strngrd1.Cells[2,i]:= FloatToStr(y);
  strngrd1.Cells[7,i]:=FloatToStr(Deltay);
  strngrd1.Cells[8,i]:=FloatToStr(y+Deltay);
  strngrd1.Cells[3,i]:=FloatToStr(k1);
  strngrd1.Cells[4,i]:=FloatToStr(k2);
  strngrd1.Cells[5,i]:= FloatToStr(k3);
  strngrd1.Cells[6,i]:= FloatToStr(k4);
   x:=x+0.2;
      yi:=y+Deltay;
      i:=i+1;
    until i>6;
     y:=1;
  //Для шага 0,1
  x:=1;
    yi:=1;
    i:=1;
    repeat
    y:=yi;
     k1:=0.1*delta(x,y);
     k2:=0.1*delta(x+0.05,y+k1/2);
     k3:=0.1*delta(x+0.05,y+k2/2);
     k4:=0.1*delta(x+0.1,y+k3);
     Deltay:=(1/6)*(k1+2*k2+2*k3+k4);
  strngrd2.Cells[0,i]:=FloatToStr(i);
  strngrd2.Cells[1,i]:=FloatToStr(x);
  strngrd2.Cells[2,i]:= FloatToStr(y);
  strngrd2.Cells[7,i]:=FloatToStr(Deltay);
  strngrd2.Cells[8,i]:=FloatToStr(y+Deltay);
  strngrd2.Cells[3,i]:=FloatToStr(k1);
  strngrd2.Cells[4,i]:=FloatToStr(k2);
  strngrd2.Cells[5,i]:= FloatToStr(k3);
  strngrd2.Cells[6,i]:= FloatToStr(k4);
      yi:=y+Deltay;
      x:=x+0.1;
      i:=i+1;
    until i>11;
    //Построение графика
     end;

procedure TForm5.btn1Click(Sender: TObject);
begin
 Form5.Close;
end;

end.
