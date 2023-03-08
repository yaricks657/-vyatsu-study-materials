unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  Ta= array[1..3,1..3] of real;
  Tb = array[1..4] of Real;
  TForm4 = class(TForm)
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    edt6: TEdit;
    edt7: TEdit;
    edt8: TEdit;
    edt9: TEdit;
    edt10: TEdit;
    edt11: TEdit;
    edt12: TEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    lbl12: TLabel;
    btn1: TButton;
    lbl13: TLabel;
    lbl14: TLabel;
    lbl15: TLabel;
    lbl16: TLabel;
    mmo1: TMemo;
    lbl17: TLabel;
    mmo2: TMemo;
    img1: TImage;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses Unit1;

{$R *.dfm}

procedure calculate_det(a: Ta; var det: Real);
var
    i,j,k:byte;
    temp:real;
begin
  // Метод Гаусса прямой ход
  for i:=1 to 3 do
    for j:=i+1 to 3 do
      begin
      temp:=a[j,i]/a[i,i];
      for k:=i to 3 do
        begin
          a[j,k]:=a[j,k]-a[i,k]*temp;
        end;
      end;
  // Определитель
  det:=1;
  for i:=1 to 3 do
    det:=det*a[i,i];
end;

procedure matrix_additions(a:Ta; var ha: Ta);
var
    i,j,k,x,y,met: byte;
    temp: array[1..4] of real;
begin
  for x:=1 to 3 do
    for y:=1 to 3 do
      begin
        met:=1;
        for i:=1 to 3 do
            for j:=1 to 3 do
                if (i<>x) and (j<>y) then
                  begin
                    temp[met]:=a[i,j];
                    Inc(met);
                  end;
        ha[x,y]:=temp[1]*temp[4]-temp[2]*temp[3];
        if (((x+y) mod 2) =1) then ha[x,y]:=-(ha[x,y]);
      end;
      for i:=1 to 3 do
        for j:=1 to 3 do
          form4.mmo1.Lines[i-1]:=Form4.mmo1.Lines[i-1]+'  '+formatfloat('0.000',ha[i,j]);
end;

procedure transposition(var ha,a: Ta);
var
    i,j: Byte;
    temp:real;
begin
  for i:=1 to 3 do
    for j:=1 to 3 do
            a[i,j]:=ha[j,i];
  for i:=1 to 3 do
    for j:=1 to 3 do
      form4.mmo2.Lines[i-1]:=Form4.mmo2.Lines[i-1]+'  '+formatfloat('0.000',a[i,j]);
end;

procedure multy(ha: Ta; var b,x: Tb);
var
    i,j: Byte;
begin
  for i:=1 to 3 do
    x[i]:=0;
  for i:=1 to 3 do
    for j:=1 to 3 do
      x[i]:=x[i]+ha[i,j]*b[j];
end;

procedure chit(var a:Ta; var b: Tb);
begin
  with form4 do
  begin
    a[1,1]:=StrToFloat(edt1.text);
    a[1,2]:=StrToFloat(edt2.text);
    a[1,3]:=StrToFloat(edt3.text);

    a[2,1]:=StrToFloat(edt4.text);
    a[2,2]:=StrToFloat(edt5.text);
    a[2,3]:=StrToFloat(edt6.text);

    a[3,1]:=StrToFloat(edt7.text);
    a[3,2]:=StrToFloat(edt8.text);
    a[3,3]:=StrToFloat(edt9.text);

    b[1]:=strtofloat(edt10.Text);
    b[2]:=strtofloat(edt11.Text);
    b[3]:=strtofloat(edt12.Text);
  end;
end;

procedure TForm4.btn1Click(Sender: TObject);
var
    a,ha: Ta;
    b,x: Tb;
    det,sum:real;
    i,j: byte;
begin
   lbl10.Caption:='X1 = ';
  lbl11.Caption:='X2 = ';
  lbl12.Caption:='X3 = ';
  mmo1.Text:='';
  mmo2.Text:='';
   chit(a,b);
  // Вычисление определителя
  calculate_det(a,det);
  if det<>0 then form4.lbl14.Caption:='Определитель = ' + FloatToStr(det)
  else
    begin
     form4.lbl14.Caption:='Определитель = 0, решений много!';
     Exit;
    end;

  // Формирование матрицы дополнений
  matrix_additions(a,ha);

  // Транспонирование матрицы
  transposition(ha,a);

  // Умножение матрицы
  multy(a,b,x);

  //Результат
  for i:=1 to 3 do
    x[i]:=x[i]/(det);
  lbl10.Caption:=lbl10.Caption+formatfloat('0.0000',x[1]);
  lbl11.Caption:=lbl11.Caption+formatfloat('0.0000',x[2]);
  lbl12.Caption:=lbl12.Caption+formatfloat('0.0000',x[3]);
end;
end.
