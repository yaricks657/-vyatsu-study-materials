unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, XPMan, Grids;

type
  Ta= array[1..4,1..4] of Real;
  Tb= array[1..4] of Real;
  Tx= array[1..4] of Real;
  TForm3 = class(TForm)
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
    lbl5: TLabel;
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
    lbl18: TLabel;
    lbl19: TLabel;
    lbl20: TLabel;
    btn1: TButton;
    lbl21: TLabel;
    lbl22: TLabel;
    lbl23: TLabel;
    lbl24: TLabel;
    lbl25: TLabel;
    lbl26: TLabel;
    lbl27: TLabel;
    lbl28: TLabel;
    lbl29: TLabel;
    lbl30: TLabel;
    lbl31: TLabel;
    lbl32: TLabel;
    lbl33: TLabel;
    strngrd1: TStringGrid;
    lbl34: TLabel;
    lbl35: TLabel;
    lbl36: TLabel;
    procedure btn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure drow(tmp,x:Tx; count:byte);
var p,k: Byte;
begin
  with form3 do
  begin;
    p:=1;
    k:=1;
    while p<=12 do
      begin
        strngrd1.Cells[0,count]:=IntToStr(count);
        strngrd1.Cells[p,count]:=FormatFloat('0.0000000',x[k]);
        strngrd1.Cells[p+1,count]:=FormatFloat('0.0000000',tmp[k]);
        strngrd1.Cells[p+2,count]:=FormatFloat('0.0000000',Abs(tmp[k]-x[k]));
        p:=p+3;
        Inc(k);
      end;
  end;
end;

procedure iteration(a: Ta; b:Tb; x:Tx; e:real);
var
  tmp,rez: Tx;
  i,j: Byte;
  sum: real;
  stop: boolean;
  count: byte;
begin

  for i:=1 to 4 do
    tmp[i]:=x[i];
  stop:=False;
  count:=0;
  while not stop do
    begin
      Inc(count);
      for i:=1 to 4 do
        begin
          sum:=0;
          for j:=1 to 4 do
              sum:=sum+tmp[j]*a[i,j];
          rez[i]:=sum+b[i];
        end;
      for i:=1 to 4 do
        tmp[i]:=rez[i];
      drow(tmp,x,count); // ���������� �������
      if (Abs(TMP[3]-x[3])<=e) then stop:=true
      else
        for i:=1 to 4 do
          x[i]:=tmp[i];
    end;

    with form3 do
      begin
        lbl21.caption:=lbl21.caption+FormatFloat('0.0000',tmp[1]);
        lbl22.caption:=lbl22.caption+FormatFloat('0.0000',tmp[2]);
        lbl23.caption:=lbl23.caption+FormatFloat('0.0000',tmp[3]);
        lbl24.caption:=lbl24.caption+FormatFloat('0.0000',tmp[4]);
        lbl30.caption:=FormatFloat('0.0000',tmp[1]);
        lbl31.caption:=FormatFloat('0.0000',tmp[2]);
        lbl32.caption:=FormatFloat('0.0000',tmp[3]);
        lbl33.caption:=FormatFloat('0.0000',tmp[4]);
        for i:=1 to 4 do
          begin
            sum:=0;
            for j:=1 to 4 do
              sum:=sum+a[i,j]*tmp[j];
            sum:=sum+b[i];
            if i=1 then lbl25.Caption:=FormatFloat('0.0000',sum)+'  =  ';
            if i=2 then lbl26.Caption:=FormatFloat('0.0000',sum)+'  =  ';
            if i=3 then lbl27.Caption:=FormatFloat('0.0000',sum)+'  =  ';
            if i=4 then lbl28.Caption:=FormatFloat('0.0000',sum)+'  =  ';
          end;
      end;
end;


procedure TForm3.btn1Click(Sender: TObject);
var
    a:Ta;
    b:Tb;
    x,sum:Tx;
    e,max:real;
    i,j: Byte;
begin
   lbl21.caption:='X1 = ';
   lbl22.caption:='X2 = ';
   lbl23.caption:='X3 = ';
   lbl24.caption:='X4 = ';
  e:=0.0001;
  a[1,1]:=strtofloat(edt1.Text);
  a[1,2]:=strtofloat(edt2.Text);
  a[1,3]:=strtofloat(edt3.Text);
  a[1,4]:=strtofloat(edt4.Text);
  a[2,1]:=strtofloat(edt6.Text);
  a[2,2]:=strtofloat(edt7.Text);
  a[2,3]:=strtofloat(edt8.Text);
  a[2,4]:=strtofloat(edt9.Text);
  a[3,1]:=strtofloat(edt11.Text);
  a[3,2]:=strtofloat(edt12.Text);
  a[3,3]:=strtofloat(edt13.Text);
  a[3,4]:=strtofloat(edt14.Text);
  a[4,1]:=strtofloat(edt16.Text);
  a[4,2]:=strtofloat(edt17.Text);
  a[4,3]:=strtofloat(edt18.Text);
  a[4,4]:=strtofloat(edt19.Text);

  b[1]:=strtofloat(edt5.Text);
  b[2]:=strtofloat(edt10.Text);
  b[3]:=strtofloat(edt15.Text);
  b[4]:=strtofloat(edt20.Text);

  for i:=1 to 4 do
    sum[i]:=0;
  for i:=1 to 4 do
      for j:=1 to 4 do
        sum[i]:=sum[i]+abs(a[i,j]);
  max:=sum[1];
  for i:=2 to 4 do
    if max < sum[i] then max:=sum[i];
  if max < 1 then lbl36.Caption:=('����� �������� ����� �� �������||a|| '+ FloatToStr(max)+' < 1')
    else
     begin
      for i:=1 to 4 do
      sum[i]:=0;
      for j:=1 to 4 do
          for i:=1 to 4 do
            sum[j]:=sum[j]+abs(a[i,j]);
      max:=sum[1];
      for i:=2 to 4 do
        if max < sum[i] then max:=sum[i];
      if max < 1 then lbl36.Caption:=('����� �������� ����� �� �������� ||a||'+ FloatToStr(max)+' < 1')
      else lbl36.Caption:=('����� �����������  ||a|| '+ FloatToStr(max)+' > 1')
     end;
  x[1]:=strtofloat(edt5.Text);
  x[2]:=strtofloat(edt10.Text);
  x[3]:=strtofloat(edt15.Text);
  x[4]:=strtofloat(edt20.Text);

  iteration(a,b,x,e);
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
  strngrd1.Cells[0,0]:='e=0.0001';
  strngrd1.Cells[1,0]:='x1_k';
  strngrd1.Cells[2,0]:='x1_k+1';
  strngrd1.Cells[3,0]:='delta_1';
  strngrd1.Cells[4,0]:='x2_k';
  strngrd1.Cells[5,0]:='x2_k+1';
  strngrd1.Cells[6,0]:='delta_2';
  strngrd1.Cells[7,0]:='x3_k';
  strngrd1.Cells[8,0]:='x3_k+1';
  strngrd1.Cells[9,0]:='delta_3';
  strngrd1.Cells[10,0]:='x4_k';
  strngrd1.Cells[11,0]:='x4_k+1';
  strngrd1.Cells[12,0]:='delta_4';
end;

end.
