unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, XPMan;

type
  Ta = array [1..4,1..5] of real;
  Tx = array [1..4] of real;
  TForm2 = class(TForm)
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
    edt13: TEdit;
    edt14: TEdit;
    edt15: TEdit;
    edt16: TEdit;
    edt17: TEdit;
    edt18: TEdit;
    edt19: TEdit;
    edt20: TEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    lbl12: TLabel;
    lbl13: TLabel;
    lbl14: TLabel;
    lbl15: TLabel;
    lbl16: TLabel;
    lbl17: TLabel;
    btn1: TButton;
    lbl5: TLabel;
    lbl18: TLabel;
    lbl19: TLabel;
    lbl20: TLabel;
    lbl30: TLabel;
    mmo1: TMemo;
    mmo2: TMemo;
    mmo3: TMemo;
    lbl31: TLabel;
    lbl32: TLabel;
    lbl33: TLabel;
    lbl35: TLabel;
    lbl36: TLabel;
    lbl37: TLabel;
    lbl39: TLabel;
    lbl40: TLabel;
    lbl41: TLabel;
    mmo0: TMemo;
    lbl34: TLabel;
    procedure btn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure step(a: Ta; i:integer);
var j:byte;
begin
  with form2 do
  begin
  lbl30.Visible:=true;
  case i of
  0: begin
        mmo0.Visible:=true;
        for j:=1 to 4 do
        mmo0.Lines[j-1]:=FormatFloat('0.000',a[j,1])+'  '+FormatFloat('0.000',a[j,2])+'  '+FormatFloat('0.000',a[j,3])+'  '+FormatFloat('0.000',a[j,4])+'  '+FormatFloat('0.000',a[j,5])+#13+#10;
      end;
  1:
      begin
        mmo1.Visible:=true;
        for j:=1 to 4 do
          mmo1.Lines[j-1]:=FormatFloat('0.000',a[j,1])+'  '+FormatFloat('0.000',a[j,2])+'  '+FormatFloat('0.000',a[j,3])+'  '+FormatFloat('0.000',a[j,4])+'  '+FormatFloat('0.000',a[j,5])+#13+#10;
      end;
  2:  begin
        mmo2.Visible:=true;
        for j:=1 to 4 do
          mmo2.Lines[j-1]:=FormatFloat('0.000',a[j,1])+'  '+FormatFloat('0.000',a[j,2])+'  '+FormatFloat('0.000',a[j,3])+'  '+FormatFloat('0.000',a[j,4])+'  '+FormatFloat('0.000',a[j,5])+#13+#10;
      end;
  3:  begin
        mmo3.Visible:=true;
        for j:=1 to 4 do
          mmo3.Lines[j-1]:=FormatFloat('0.000',a[j,1])+'  '+FormatFloat('0.000',a[j,2])+'  '+FormatFloat('0.000',a[j,3])+'  '+FormatFloat('0.000',a[j,4])+'  '+FormatFloat('0.000',a[j,5])+#13+#10;
      end;
  end;
  end;
end;

procedure sign(i,j: byte; x1,x2: Real);
begin
  case i of
    1:
        begin
          case j of
            2: form2.lbl35.Caption:=' - |*'+formatfloat('0.000',x1)+'/'+formatfloat('0.000',x2);
            3: form2.lbl36.Caption:=' - |*'+formatfloat('0.000',x1)+'/'+formatfloat('0.000',x2);
            4: form2.lbl37.Caption:=' - |*'+formatfloat('0.000',x1)+'/'+formatfloat('0.000',x2);
          end;
        end;
    2:  begin
          case j of
            3: form2.lbl39.Caption:=' - ||*'+formatfloat('0.000',x1)+'/'+formatfloat('0.000',x2);
            4: form2.lbl40.Caption:=' - ||*'+formatfloat('0.000',x1)+'/'+formatfloat('0.000',x2);
          end;
        end;
    3: begin
          case j of
            4: form2.lbl41.Caption:=' - |||*'+formatfloat('0.000',x1)+'/'+formatfloat('0.000',x2);
          end;
        end;
  end;
end;

procedure Gaus( a : Ta; var x: Tx; det:real);
const n = 5;
var i,j,k: byte;  temp: Real;
begin
  // Прямой ход
  step(a,0);
  for i:=1 to n-2 do
    begin
      for j:=i+1 to n-1 do
        begin
          temp:=a[j,i]/a[i,i];
          Sign(i,j,a[j,i],a[i,i]); // пояснительные подписи
          for k:=i to n do
            begin
              a[j,k]:=a[j,k]-a[i,k]*temp;
            end;
        end;
      step(a,i); // ступенчатый вид
    end;

    // Вычисление определителя
    for i:=1 to n-1 do
      det:=det*a[i,i];
    if det<>0 then form2.lbl32.Caption:='Определитель det(A) = '+formatfloat('0.000',det)
    else
      begin
        form2.lbl32.Caption:='Определитель det(A) = 0';
        Exit;
      end;
    Form2.lbl33.Caption:='СЛАУ имеет единственное решение';
    Form2.lbl34.Caption:='т.к Ранг расширенной = рангу основной матрицы';
    //Обратный ход
    for i:=n-1 downto 1 do
      begin
        for j:=n-1 downto i+1 do
          begin
            a[i,j]:= a[i,j]*x[j];
            a[i,n]:=a[i,n]-a[i,j];
          end;
        x[i]:= a[i,n]/a[i,i];
      end;
end;

procedure TForm2.btn1Click(Sender: TObject);
var
    a: Ta; x,mas: Tx;
    i,j: byte;
    sum,det: real;
begin
      lbl5.Caption:= 'X1 = ';
  lbl18.Caption:= 'X2 = ';
  lbl19.Caption:= 'X3 = ';
  lbl20.Caption:='X4 = ';
  mmo1.Text:='';
  mmo2.Text:='';
  mmo0.Text:='';
  mmo3.Text:='';
  det:=1;
  form2.Height:=500;
  a[1,1]:=strtofloat(edt1.Text);
  a[1,2]:=strtofloat(edt2.Text);
  a[1,3]:=strtofloat(edt3.Text);
  a[1,4]:=strtofloat(edt4.Text);
  a[1,5]:=strtofloat(edt5.Text);
  a[2,1]:=strtofloat(edt6.Text);
  a[2,2]:=strtofloat(edt7.Text);
  a[2,3]:=strtofloat(edt8.Text);
  a[2,4]:=strtofloat(edt9.Text);
  a[2,5]:=strtofloat(edt10.Text);
  a[3,1]:=strtofloat(edt11.Text);
  a[3,2]:=strtofloat(edt12.Text);
  a[3,3]:=strtofloat(edt13.Text);
  a[3,4]:=strtofloat(edt14.Text);
  a[3,5]:=strtofloat(edt15.Text);
  a[4,1]:=strtofloat(edt16.Text);
  a[4,2]:=strtofloat(edt17.Text);
  a[4,3]:=strtofloat(edt18.Text);
  a[4,4]:=strtofloat(edt19.Text);
  a[4,5]:=strtofloat(edt20.Text);

  Gaus(a,x,det);
  if det=0 then Exit;

  lbl5.Caption:=lbl5.Caption+formatfloat('0.000', x[1]);
  lbl18.Caption:=lbl18.Caption+formatfloat('0.000',x[2]);
  lbl19.Caption:=lbl19.Caption+formatfloat('0.000',x[3]);
  lbl20.Caption:=lbl20.Caption+formatfloat('0.000',x[4]);

end;

procedure TForm2.FormShow(Sender: TObject);
begin
  form2.height:=250;
end;

end.
