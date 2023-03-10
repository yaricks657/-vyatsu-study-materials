unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids;

type
  TForm5 = class(TForm)
    btn1: TButton;
    strngrd1: TStringGrid;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    procedure btn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const n=6;
var
  Form5: TForm5;
  masx: array [1..6] of real =
  (4.0, 4.1, 4.2, 4.3, 4.4, 4.5);
  masy: array [1..6] of Real =
  (64.0, 73, 85, 97, 112, 128);

implementation

{$R *.dfm}

procedure TForm5.btn1Click(Sender: TObject);
begin
  Form5.Close;
end;

procedure TForm5.FormShow(Sender: TObject);
var
  i,j: byte;
  sum_x,sum_X2,sum_y,sum_xy,A,B,Y,delta2: real;
begin
  //????????? ?????????? ???????
  strngrd1.Cells[0,n+1]:='?????';
  strngrd1.Cells[0,0]:='k';
  strngrd1.Cells[1,0]:='1/x_k';
  strngrd1.Cells[2,0]:='1/y_k';
  for i:=1 to n do
    for j:=0 to 2 do
    begin
      if j=0 then strngrd1.Cells[j,i]:=IntToStr(i);
      if j=1 then strngrd1.Cells[j,i]:=FloatToStr(1/masx[i]);
      if j=2 then strngrd1.Cells[j,i]:=FloatToStr(1/masy[i]);
    end;
  //?????? ??????????? ??????????
  sum_x:=0;
  for i:=1 to n do
    sum_x:=sum_x+1/masx[i];
  strngrd1.Cells[1,n+1]:=FloatToStr(sum_x);
  sum_y:=0;
  for i:=1 to n do
  sum_y:=sum_y+1/masy[i];
   strngrd1.Cells[2,n+1]:=FloatToStr(sum_y);
  sum_xy:=0;
  strngrd1.Cells[3,0]:='1/XiYi';
  for i:=1 to n do
    begin
      strngrd1.Cells[3,i]:=FloatToStr(1/(masx[i]*masy[i]));
      sum_xy:=sum_xy+1/(masx[i]*masy[i]);
    end;
  strngrd1.Cells[3,n+1]:=FloatToStr(sum_xy);
  strngrd1.Cells[4,0]:='1/X^2';
  sum_x2:=0;
  for i:=1 to n do
    begin
      strngrd1.Cells[4,i]:=FloatToStr(1/(masx[i]*masx[i]));
      sum_x2:=sum_x2+1/(masx[i]*masx[i]);
    end;
  strngrd1.Cells[4,n+1]:=FloatToStr(sum_x2);

  //??????? A ? B
  lbl5.Caption:='?*' + strngrd1.Cells[4,n+1] + ' + B*' + strngrd1.Cells[1,n+1] + ' = ' + strngrd1.Cells[3,n+1];
  lbl6.Caption:='?*' + strngrd1.Cells[1,n+1] + ' + B*' + inttostr(n) + ' = ' + strngrd1.Cells[2,n+1];

  A:=0.282837;
  B:=-0.055301;
  strngrd1.Cells[5,0]:='Y????';
  for i:=1 to n do
  strngrd1.Cells[5,i]:=FloatToStr((B*masx[i]+A));
   strngrd1.Cells[6,0]:='Yk - Y????';
   strngrd1.Cells[7,0]:='(Yk - Y????)^2';
   delta2:=0;
  for i:=1 to n do
    begin
      strngrd1.Cells[6,i]:=FloatToStr(StrToFloat(strngrd1.Cells[2,i])-StrToFloat(strngrd1.Cells[5,i]));
      strngrd1.Cells[7,i]:=FloatToStr(sqr(StrToFloat(strngrd1.Cells[6,i])));
      delta2:=delta2+strtofloat(strngrd1.Cells[7,i]);
    end;
   strngrd1.Cells[7,n+1]:=FloatToStr(delta2);
   lbl1.Caption:='??????? ???????????? ?????????? = '+FloatToStr((Sqrt(delta2))/n);

lbl7.Caption:='?????: A= ' + floattostr(A) + ' ; B= ' + floattostr(B) +';';
lbl8.Caption:='?????????? ??????????? Y= '+ floattostr(A) + ' + x*(' + floattostr(B) + ').';


   end;

end.
