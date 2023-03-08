unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids;

type
  TForm7 = class(TForm)
    btn1: TButton;
    strngrd1: TStringGrid;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    procedure btn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  const n=6;
var
  Form7: TForm7;
  masx: array [1..6] of real =
  (4.0, 4.1, 4.2, 4.3, 4.4, 4.5);
  masy: array [1..6] of Real =
  (64.0, 73, 85, 97, 112, 128);
  
implementation
{$R *.dfm}

procedure TForm7.btn1Click(Sender: TObject);
begin
  Form7.Close;
end;

procedure TForm7.FormShow(Sender: TObject);
var
  i,j: byte;
  sum_x,sum_X2,sum_y,sum_xy,A,B,Y,delta2: real;
begin
  //��������� ���������� �������
  strngrd1.Cells[0,n+1]:='�����';
  strngrd1.Cells[0,0]:='k';
  strngrd1.Cells[1,0]:='ln(x_k)';
  strngrd1.Cells[2,0]:='ln(y_k)';
  for i:=1 to n do
    for j:=0 to 2 do
    begin
      if j=0 then strngrd1.Cells[j,i]:=IntToStr(i);
      if j=1 then strngrd1.Cells[j,i]:=FloatToStr(ln(masx[i]));
      if j=2 then strngrd1.Cells[j,i]:=FloatToStr(ln(masy[i]));
    end;
  //������ ����������� ����������
  sum_x:=0;
  for i:=1 to n do
    sum_x:=sum_x+ln(masx[i]);
  strngrd1.Cells[1,n+1]:=FloatToStr(sum_x);
  sum_y:=0;
  for i:=1 to n do
    sum_y:=sum_y+ln(masy[i]);
   strngrd1.Cells[2,n+1]:=FloatToStr(sum_y);
  sum_xy:=0;
  strngrd1.Cells[3,0]:='ln(Xi)ln(Yi)';
  for i:=1 to n do
    begin
      strngrd1.Cells[3,i]:=FloatToStr(ln(masx[i])*ln(masy[i]));
      sum_xy:=sum_xy+ln(masx[i])*ln(masy[i]);
    end;
  strngrd1.Cells[3,n+1]:=FloatToStr(sum_xy);
  strngrd1.Cells[4,0]:='ln(X^2)';
  sum_x2:=0;
  for i:=1 to n do
    begin
      strngrd1.Cells[4,i]:=FloatToStr(ln(masx[i])*ln(masx[i]));
      sum_x2:=sum_x2+ln(masx[i])*ln(masx[i]);
    end;
  strngrd1.Cells[4,n+1]:=FloatToStr(sum_x2);

  lbl5.Caption:='b*' + strngrd1.Cells[1,n+1] + ' + a*' + inttostr(n) + ' = ' + strngrd1.Cells[2,n+1];
  lbl6.Caption:='a*' + strngrd1.Cells[1,n+1] + ' + b*' + strngrd1.Cells[4,n+1] + ' = ' + strngrd1.Cells[3,n+1];

  A:=-4.0565;
  B:=5.9212;
  strngrd1.Cells[5,0]:='Y����';
  for i:=1 to n do
    strngrd1.Cells[5,i]:=FloatToStr(Exp(a+b*ln(masx[i])));
   strngrd1.Cells[6,0]:='Yk - Y����';
   strngrd1.Cells[7,0]:='(Yk - Y����)^2';
   delta2:=0;
  for i:=1 to n do
    begin
      strngrd1.Cells[6,i]:=FloatToStr(masy[i]-StrToFloat(strngrd1.Cells[5,i]));
      strngrd1.Cells[7,i]:=FloatToStr(sqr(StrToFloat(strngrd1.Cells[6,i])));
      delta2:=delta2+strtofloat(strngrd1.Cells[7,i]);
    end;
   strngrd1.Cells[7,n+1]:=FloatToStr(delta2);
   lbl1.Caption:='������� ������������ ���������� = '+FloatToStr((Sqrt(delta2))/n);

lbl3.Caption:='�����: a= ' + floattostr(A) + ' ; b= ' + floattostr(B) +';';
lbl4.Caption:='���������� ����������� y= '+ floattostr(A) + '*(x^' + floattostr(B) + ').';
   end;

end.
