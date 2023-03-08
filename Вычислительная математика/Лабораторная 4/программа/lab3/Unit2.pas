unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids;

type
  TForm2 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    strngrd1: TStringGrid;
    lbl5: TLabel;
    strngrd2: TStringGrid;
    lbl7: TLabel;
    btn1: TButton;
    procedure FormShow(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const n:integer = 7;
var
  Form2: TForm2;
  masx: array[1..8] of Real = (1.03,1.08,1.16,1.23,1.26,1.33,1.39,1.277);
  masy: array[1..8] of Real = (2.80107,2.94408 , 3.18993 , 3.42123,3.52542, 3.78104 ,4.01485,0);

implementation

{$R *.dfm}

procedure draw_table;
var
  i,j: byte; D,P:real; L:real;
begin
  // ���������� ��������� � �������
  P:=1;
  for i:=1 to n do
    for j:=1 to n do
      if i<>j then
      begin
        form2.strngrd2.Cells[j-1,i-1]:=FloatToStr(masx[i]-masx[j]);
      end
      else
      begin
        form2.strngrd2.Cells[j-1,i-1]:=FloatToStr(masx[8]-masx[i]);
        P:=P*(masx[8]-masx[i]);
      end;
  // ���������� ������� D
  L:=0;
  for i:=1 to n do
    begin
    D:=1;
    for j:=1 to n do
      D:=D*strtofloat(Form2.strngrd2.Cells[j-1,i-1]);
    Form2.strngrd2.Cells[7,i-1]:=FormatFloat('0.00000000',D);
    Form2.strngrd2.Cells[8,i-1]:=FormatFloat('0.00',masy[i]/D);
    L:=L+masy[i]/D;
    end;
    Form2.strngrd2.Cells[0,7]:='����� = ';
    form2.strngrd2.Cells[8,7]:=formatfloat('0.00',L);
    form2.lbl7.caption:='������������ ������������ ��������� =  '+formatfloat('0.00000000000000',P);
    Form2.lbl1.Caption:='�����:  Y  =  '+FormatFloat('0.000000',L*P)
end;

procedure TForm2.FormShow(Sender: TObject);
var
    L:real;
    i,j: Byte;
begin
  // ���������� �������� �������
  strngrd1.Cells[0,0]:='X';
  strngrd1.Cells[1,0]:='Y';
  for i:=1 to n do begin
  strngrd1.Cells[0,i]:=floattostr(masx[i]);
  strngrd1.Cells[1,i]:=floattostr(masy[i]);
  end;
  //���������� ��������� �������
  draw_table;
  Form2.lbl3.Caption:='�������:  X  =  '+floattostr(masx[8]);
end;

procedure TForm2.btn1Click(Sender: TObject);
begin
  Form2.Close;
end;

end.
