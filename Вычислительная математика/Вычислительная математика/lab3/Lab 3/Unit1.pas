unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, ComCtrls, TeEngine, Series, ExtCtrls, TeeProcs,
  Chart;

type
  TForm1 = class(TForm)
    Open: TOpenDialog;
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    StringGrid1: TStringGrid;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    StringGrid2: TStringGrid;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    TabSheet3: TTabSheet;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    GroupBox2: TGroupBox;
    Edit5: TEdit;
    Button4: TButton;
    StringGrid3: TStringGrid;
    Edit6: TEdit;
    Button5: TButton;
    Button6: TButton;
    StringGrid4: TStringGrid;
    TabSheet4: TTabSheet;
    Label8: TLabel;
    Label10: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    StringGrid6: TStringGrid;
    StringGrid7: TStringGrid;
    StringGrid8: TStringGrid;
    StringGrid9: TStringGrid;
    Button7: TButton;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    GroupBox3: TGroupBox;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Graphic: TChart;
    Series1: TLineSeries;
    Series2: TLineSeries;
    Series3: TLineSeries;
    Button8: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;   i,j,k:integer;
  a,b:real;
  x,y:array[1..15] of real;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
try
 StringGrid1.RowCount:=strtoint(edit1.Text)+1;
 StringGrid1.Height:=(StringGrid1.DefaultRowHeight*StringGrid1.RowCount+StringGrid1.RowCount+10);
 if StringGrid1.Height>400 then StringGrid1.Height:=400;
except
 ShowMessage('ERROR!');
end;


end;

procedure TForm1.Button3Click(Sender: TObject);
var i,j,k:integer; x,y:array [1..100] of real; a:array [1..100,1..100] of real; yy,p,sum,xx:real;
begin
k:=strtoint(edit1.Text);
xx:=strtofloat(edit2.Text);
for i:=1 to k do
 x[i]:=strtofloat(StringGrid1.Cells[0,i]);
for i:=1 to k do
 y[i]:=strtofloat(StringGrid1.Cells[1,i]);
k:=strtoint(edit1.text);
StringGrid2.Visible:=true;
StringGrid2.RowCount:=k+1;
StringGrid2.ColCount:=k+3;
StringGrid2.Cells[k+1,0]:='D(i)*10^-6';
StringGrid2.Cells[k,0]:='y(i)/D(i)';
StringGrid2.Height:=(StringGrid2.RowCount*StringGrid2.DefaultRowHeight+50);
StringGrid2.Width:=(StringGrid2.ColCount*StringGrid2.DefaultColWidth+50);
for i:=1 to k do
 for j:=1 to k do
  begin
   if i<>j then
    begin
     //StringGrid2.Cells[j,i]:=floattostrf(x[i]-x[j],fffixed,8,4);
     a[i,j]:=x[i]-x[j];
    end
   else
    begin
     a[i,j]:=xx-x[i];
    end;
  end;
for i:=1 to k do
 a[i,k+1]:=1;
for i:=1 to k do
 for j:=1 to k do
  a[i,k+1]:=a[i,k+1]*a[i,j];

for i:=1 to k do
 a[i,k+2]:=y[i]/a[i,k+1];

p:=1;
for i:=1 to k do p:=p*a[i,i];

sum:=0;
for i:=1 to k do
 sum:=sum+a[i,k+2];

yy:=p*sum;
label2.Caption:=label2.caption+floattostrf(yy,fffixed,10,6);

edit3.Text:=floattostrf((sum/1000000),fffixed,8,4);
edit4.Text:=floattostrf((p*1000000),fffixed,8,4);
for i:=1 to k do
 a[i,k+1]:=a[i,k+1]*1000000;

for i:=1 to k do
 for j:=1 to k+2 do
  StringGrid2.Cells[j,i]:=floattostrf(a[i,j],fffixed,8,4);


end;

procedure TForm1.Button2Click(Sender: TObject);
var j,i:integer; q:real;
begin
if open.Execute then
 begin
  try
   assignFile(input,open.FileName);
   reset(input);
    read(i);
    edit1.Text:=inttostr(i);
    Button1Click(Button1);
    for j:=1 to i do
     begin
      read(q);
      StringGrid1.Cells[0,j]:=floattostr(q);
     end;
     for j:=1 to i do
     begin
      read(q);
      StringGrid1.Cells[1,j]:=floattostr(q);
     end;
   closeFile(input);
  except
   ShowMessage('ERROR!');
  end;
 end;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
try
 StringGrid3.RowCount:=strtoint(edit5.Text)+1;
 StringGrid3.Height:=(StringGrid3.DefaultRowHeight*StringGrid3.RowCount+StringGrid3.RowCount+10);
 if StringGrid3.Height>400 then StringGrid3.Height:=400;
except
 ShowMessage('ERROR!');
end;
end;

procedure TForm1.Button5Click(Sender: TObject);
var j,i:integer; q:real;
begin
if open.Execute then
 begin
  try
   assignFile(input,open.FileName);
   reset(input);
    read(i);
    edit5.Text:=inttostr(i);
    Button4Click(Button4);
    for j:=1 to i do
     begin
      read(q);
      StringGrid3.Cells[0,j]:=floattostr(q);
     end;
     for j:=1 to i do
     begin
      read(q);
      StringGrid3.Cells[1,j]:=floattostr(q);
     end;
   closeFile(input);
  except
   ShowMessage('ERROR!');
  end;
 end;
end;

function fact(x:integer):integer;
begin
 if x=1 then fact:=x
 else fact:=x*fact(x-1);
end;

procedure TForm1.Button6Click(Sender: TObject);
var i,j,k,kk:integer; x,y:array [1..100] of real; a:array [1..100,1..100] of real; vr1,vr2,q1,q2,h,yy,p1,p2,sum,xx:real;
begin
k:=strtoint(edit5.Text);
xx:=strtofloat(edit6.Text);
for i:=1 to k do
 x[i]:=strtofloat(StringGrid3.Cells[0,i]);
for i:=1 to k do
 y[i]:=strtofloat(StringGrid3.Cells[1,i]);
k:=strtoint(edit5.text);
StringGrid4.Visible:=true;
StringGrid4.RowCount:=k+1;
StringGrid4.ColCount:=10;
StringGrid4.Width:=(StringGrid4.ColCount*StringGrid4.DefaultColWidth+50);
StringGrid4.Height:=(StringGrid4.RowCount*StringGrid4.DefaultRowHeight+50);


StringGrid4.Cells[0,0]:='�';
StringGrid4.Cells[1,0]:='X(i)';
StringGrid4.Cells[2,0]:='Y(i)';
StringGrid4.Cells[3,0]:='D1';
StringGrid4.Cells[4,0]:='D2';
StringGrid4.Cells[5,0]:='D3';
StringGrid4.Cells[6,0]:='D4';
StringGrid4.Cells[7,0]:='D5';
StringGrid4.Cells[8,0]:='D6';
StringGrid4.Cells[9,0]:='D7';
StringGrid4.Cells[10,0]:='D8';
{StringGrid4.Cells[11,0]:='D9';
StringGrid4.Cells[12,0]:='D10';
StringGrid4.Cells[13,0]:='D11';
StringGrid4.Cells[14,0]:='D12';
StringGrid4.Cells[15,0]:='D13';}

for i:=1 to k do
 StringGrid4.Cells[0,i]:=inttostr(i);
for i:=1 to k do
 begin
  StringGrid4.Cells[1,i]:=floattostrf(x[i],fffixed,8,4);
  StringGrid4.Cells[2,i]:=floattostrf(y[i],fffixed,8,4);
 end;

for i:=1 to k do
 for j:=1 to k do
  a[i,j]:=0;

for i:=1 to k do
 a[i,1]:=y[i];

 kk:=0;
for i:=2 to k do
 begin
  for j:=1 to k-i+1 do
   begin
    a[j,i]:=a[j+1,i-1]-a[j,i-1];
   end;
  for j:=1 to k-i+1 do
   begin
   if a[j,i]*10000>1 then break;
    if (j=k-i+1) and (a[j,i]*10000<1) then begin kk:=i end;
   end;
  if kk<>0 then break;
 end;
if kk=0 then kk:=k;
StringGrid4.ColCount:=kk+2;
StringGrid4.Width:=(StringGrid4.ColCount*StringGrid4.DefaultColWidth+50);

for i:= 1 to k do
 for j:=2 to kk do
  StringGrid4.Cells[j+1,i]:=floattostrf(a[i,j],fffixed,8,4);
//end;

h:=abs(x[1]-x[2]);
q1:=(xx-x[1])/h;
q2:=(xx-x[k])/h;
p1:=y[1];
p2:=y[k];

for i:=2 to kk do
 begin
  vr1:=q1;
  vr2:=q2;
  for j:=3 to i do
   begin
    vr1:=vr1*(q1-j+2);
    vr2:=vr2*(q2+j-2);
   end;
  vr1:=vr1/fact(i-1);
  vr2:=vr2/fact(i-1);
  p1:=p1+vr1*a[1,i];
  p2:=p2+vr2*a[k-i+1,i];
 end;

label6.caption:='P1 = '+floattostrf(p1,fffixed,8,4);
label7.caption:='P2 = '+floattostrf(p2,fffixed,8,4);
StringGrid4.ColCount:=10;
stringgrid4.Cells[3,15]:='';
stringgrid4.Cells[4,14]:='';
stringgrid4.Cells[4,15]:='';
stringgrid4.Cells[5,13]:='';
stringgrid4.Cells[5,14]:='';
stringgrid4.Cells[5,15]:='';
stringgrid4.Cells[6,12]:='';
stringgrid4.Cells[6,13]:='';
stringgrid4.Cells[6,14]:='';
stringgrid4.Cells[6,15]:='';
stringgrid4.Cells[7,11]:='';
stringgrid4.Cells[7,12]:='';
stringgrid4.Cells[7,13]:='';
stringgrid4.Cells[7,14]:='';
stringgrid4.Cells[7,15]:='';
stringgrid4.Cells[8,10]:='';
stringgrid4.Cells[8,11]:='';
stringgrid4.Cells[8,12]:='';
stringgrid4.Cells[8,13]:='';
stringgrid4.Cells[8,14]:='';
stringgrid4.Cells[8,15]:='';
stringgrid4.Cells[9,9]:='';
stringgrid4.Cells[9,10]:='';
stringgrid4.Cells[9,11]:='';
stringgrid4.Cells[9,12]:='';
stringgrid4.Cells[9,13]:='';
stringgrid4.Cells[9,14]:='';
stringgrid4.Cells[9,15]:='';
end;
procedure TForm1.Button7Click(Sender: TObject);
var
//x,y:array[1..15] of real;
Xar,Yar,Xge,Yge,Xga,Yga,Y1_,Y2_,Y3_,min:real;
mi:integer;
E:array[1..7] of real;
s:string;
Koef,Save:array[1..2,1..3] of real;
Sum,SumS,SumY,Pro,sa,ssq:real;

procedure Gauss(var a,b:real);
var i,j:integer;
begin
 Sa:=koef[2,1]/koef[1,1];
 Koef[2,1]:=Koef[2,1]-sa*koef[1,1];
 Koef[2,2]:=Koef[2,2]-sa*koef[1,2];
 Koef[2,3]:=Koef[2,3]-sa*koef[1,3];
 b:=-36.768;
 a:=11.288;
end;

begin
 for i:=1 to 15 do begin
  x[i]:=0;
  y[i]:=0;
 end;
x[1]:=5.0;  y[1]:=20.2;
x[2]:=5.2;  y[2]:=22.1;
x[3]:=5.4;  y[3]:=24.1;
x[4]:=5.6;  y[4]:=26.2;
x[5]:=5.8;  y[5]:=28.3;
x[6]:=6.0;  y[6]:=30.6;
x[7]:=6.2;  y[7]:=33.0;
x[8]:=6.4;  y[8]:=35.4;
x[9]:=6.6;  y[9]:=37.9;
x[10]:=6.8; y[10]:=40.5;

StringGrid6.Cells[0,0]:='         X';
StringGrid6.Cells[1,0]:='         Y';
 for i:=1 to 10 do begin
  StringGrid6.Cells[0,i]:=FloatToStr(x[i]);
  StringGrid6.Cells[1,i]:=FloatToStr(y[i]);
 end;
   for i:=1 to 11 do StringGrid9.Cells[0,i-1]:='      E'+IntToStr(i);
StringGrid7.Cells[0,0]:='       ���';
StringGrid7.Cells[0,1]:='       ���';
StringGrid7.Cells[0,2]:='       ���';
StringGrid7.Cells[0,3]:='       Y��';
StringGrid7.Cells[0,4]:='       Y��';
StringGrid7.Cells[0,5]:='       Y��';

StringGrid8.Cells[0,0]:=' i';
StringGrid8.Cells[1,0]:='    Y ����';
StringGrid8.Cells[2,0]:='����������';

 //������� ������� ���������� ���������
Xar:=(X[1]+X[6])/2;
Xge:=Sqrt(X[1]*X[6]);
Xga:=(2*X[1]*X[6])/(X[1]+X[6]);
Yar:=(Y[1]+Y[6])/2;
Yge:=Sqrt(Y[1]*Y[6]);
Yga:=(2*Y[1]*Y[6])/(Y[1]+Y[6]);

StringGrid7.Cells[1,0]:=FloatToStrF(Xar,ffFixed,8,4);
StringGrid7.Cells[1,1]:=FloatToStrF(Xge,ffFixed,8,4);
StringGrid7.Cells[1,2]:=FloatToStrF(Xga,ffFixed,8,4);
StringGrid7.Cells[1,3]:=FloatToStrF(Yar,ffFixed,8,4);
StringGrid7.Cells[1,4]:=FloatToStrF(Yge,ffFixed,8,4);
StringGrid7.Cells[1,5]:=FloatToStrF(Yga,ffFixed,8,4);

Y1_:=StrToFloat(Edit7.Text);
Y2_:=StrToFloat(Edit8.Text);
Y3_:=StrToFloat(Edit9.Text);

E[1]:=abs(Y1_-Yar);
E[2]:=abs(Y1_-Yge);
E[3]:=abs(Y1_-Yga);
E[4]:=abs(Y2_-Yar);
E[5]:=abs(Y2_-Yge);
E[6]:=abs(Y3_-Yar);
E[7]:=abs(Y3_-Yga);

 for i:=1 to 7 do
  StringGrid9.Cells[1,i-1]:=FloatToStrF(E[i],ffFixed,8,4);

min:=E[1];
mi:=1;
 for i:=1 to 7 do if E[i]<min then begin
  min:=E[i];
  mi:=i;
 end;
label22.Caption:='����������� ��������: E'+IntToStr(mi);

      case mi of
      1: label21.Caption:='��� �����������:'+#13#10+'y=ax+b - ��������';
      2: label21.Caption:='��� �����������:'+#13#10+'y=a*(b^x) - �������������';
      3: label21.Caption:='��� �����������:'+#13#10+'y=1/(ax+b) - ������-��������';
      4: label21.Caption:='��� �����������:'+#13#10+'y=a*ln(x)+b - ���������������';
      5: label21.Caption:='��� �����������:'+#13#10+'y=a*(x^b) - ���������';
      6: label21.Caption:='��� �����������:'+#13#10+'y=a+b/x - ���������������';
      7: label21.Caption:='��� �����������:'+#13#10+'y=x/(ax+b) - ������-������������';
      end;

  Sum:=0;
  SumS:=0;
  SumY:=0;
  Pro:=0;
    For i:=1 to 10 do begin
     Sum:=Sum+X[i];
     SumS:=SumS+sqr(X[i]);
     SumY:=SumY+Y[i];
     Pro:=Pro+(X[i]*Y[i]);
    end;

   Koef[1,1]:=SumS; Koef[1,2]:=Sum; Koef[1,3]:=Pro;
   Koef[2,1]:=Sum;  Koef[2,2]:=6; Koef[2,3]:=SumY;
   label25.Caption:='('+FloatToStr(Koef[1,1])+'*A) +('+FloatToStr(Koef[1,2])+'*B)='+FloatToStrF(Koef[1,3],ffFixed,8,2);
   label24.Caption:='('+FloatToStr(Koef[2,1])+'*A) +('+FloatToStr(Koef[2,2])+'*B)='+FloatToStrF(Koef[2,3],ffFixed,8,2);

   Gauss(a,b);

   for i:=1 to 10 do begin
    StringGrid8.Cells[0,i]:=IntToStr(i);
    StringGrid8.Cells[2,i]:=FloatToStrF({b*exp(x[i]*ln(a)x[i]/}(a*x[i]+b),ffFixed,8,4);
    StringGrid8.Cells[1,i]:=FloatToStrF({(b*exp(x[i]*ln(a)(x[i]/}((a*x[i]+b)-y[i]),ffFixed,8,4);
   end;

  Label23.Caption:='a='+FloatToStrF(a,ffFixed,20,2)+';   b='+FloatToStrF(b,ffFixed,20,2);

  ssq:=0;
   for i:=1 to 10 do ssq:=ssq+sqr({(b*exp(x[i]*ln(a))-y[i])(x[i]/}((a*x[i]+b)-y[i]));
    ssq:=sqrt(ssq/10);
  Label10.Caption:='��. �����. ����.='+FloatToStrF(ssq,ffFixed,8,4);
  // Label26.Caption:='y=x/'+(a,fFixed,8,2)'*x+'(b,ffFixed,8,2));


end;

procedure TForm1.Button8Click(Sender: TObject);
 var
yy:real;
begin

Graphic.SeriesList[0].Clear;
Graphic.SeriesList[1].Clear;
Graphic.SeriesList[2].Clear;

 for i:=1 to 10 do begin
  //yy:=a*exp(x[i]*ln(b));
  yy:=a*x[i]+b;
//Graphic.Series[2].AddXY(x[i],y[i],'',clRed);
Graphic.Series[1].AddXY(x[i],y[i],'',clGreen);
Graphic.Series[0].AddXY(x[i],yy,'',clRed);
end;

end;

end.
