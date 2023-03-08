unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids;

type
  TForm3 = class(TForm)
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    strngrd1: TStringGrid;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    lbl12: TLabel;
    lbl13: TLabel;
    btn1: TButton;
    procedure FormShow(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const n = 11;
var
  Form3: TForm3;
  masx: array[0..11] of Real =
  (0.15,0.16,0.17,0.18,0.19,0.20,0.21,0.22,0.23,0.24,0.25,0.26);
  masy: array[0..11] of Real =
  (4.4817,4.9530,5.4739,6.0496,6.6859,7.3891,8.1662,9.0250,9.9742,11.0232,12.1825,13.4637);
  X: array[0..3] of Real = (0.1539,0.2569,0.1400,0.2665);
  delta_y: array[0..11,0..11] of real;
implementation

{$R *.dfm}

procedure comp_delta;
var
  i,j: byte;
begin
  form3.strngrd1.Cells[0,0]:='k';
  form3.strngrd1.Cells[1,0]:='X_k';
  form3.strngrd1.Cells[2,0]:='Y_k';
  for i:=0 to n do
    for j:=0 to 2 do
    begin
      if j=0 then Form3.strngrd1.cells[j,i+1]:=inttostr(i);
      if j=1 then Form3.strngrd1.cells[j,i+1]:=FloatToStr(masx[i]);
      if j=2 then Form3.strngrd1.cells[j,i+1]:=FloatToStr(masy[i]);
    end;
  for i:=0 to n do
  begin
    for j:=0 to n-i do
    begin
      if i=0 then
      begin
        delta_y[i,j]:=masy[j];
        Form3.strngrd1.Cells[j+3,i]:='delta_'+inttostr(j+1)+'y';
      end
      else
      begin
        delta_y[i,j]:=delta_y[i-1,j+1] - delta_y[i-1,j];
        form3.strngrd1.Cells[i+2,j+1]:=FormatFloat('0.00000000',delta_y[i,j]);
      end;
    end;
  end;
end;

function factorial(x: integer):Int64;
var
  i:Byte;
  F:int64;
begin
  F:=1;
  for i:=x downto 2 do
  begin
    F:=F*i;
  end;
  factorial:=F;
end;


procedure TForm3.FormShow(Sender: TObject);
var
   i,j,k: byte;
   q,h,temp,tempq,P:real;
   flag1:boolean;
begin
  comp_delta;
  for k:=0 to 3 do
  begin
    if (Abs(X[k]-masx[0]))<(Abs(X[k]-masx[n])) then flag1:=true
    else flag1:=false;
    h:=masx[1]-masx[0];
    if flag1 then
    begin
      q:=(X[k]-masx[0])/h;
      P:=delta_y[0,0]+q*delta_y[1,0];
    end
    else
    begin
      q:=(X[k]-masx[n])/h;
      P:=delta_y[0,n]+q*delta_y[1,n-1];
    end;
    for i:=2 to n do
      begin
        if flag1 then temp:= (q*delta_y[i,0])/factorial(i)
        else temp:= (q*delta_y[i,n-i])/factorial(i);
        tempq:=1;
        for j:=2 to i do
        begin
          if flag1 then tempq:=tempq*(q-j+1)
          else tempq:=tempq*(q+j-1);
        end;
        temp:=temp*tempq;
        P:=P+temp;
      end;
      if k=0 then lbl10.caption:='Y1  =  '+formatfloat('0.000000',P);
      if k=1 then lbl11.caption:='Y2  =  '+formatfloat('0.000000',P);
      if k=2 then lbl12.caption:='Y3  =  '+formatfloat('0.000000',P);
      if k=3 then lbl13.caption:='Y4  =  '+formatfloat('0.000000',P);
  end;

lbl6.caption:='X1  =  '+floatTostr(x[0]);
lbl7.caption:='X2  =  '+floatTostr(x[1]);
lbl8.caption:='X3  =  '+floatTostr(x[2]);
lbl9.caption:='X4  =  '+floatTostr(x[3]);
end;

procedure TForm3.btn1Click(Sender: TObject);
begin
  form3.Close;
end;

end.
