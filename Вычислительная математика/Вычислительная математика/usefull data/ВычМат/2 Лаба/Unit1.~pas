unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, Grids, TeeProcs, TeEngine, Chart,
  Series;

type
matr=array [1..4,1..5] of real;
 vec=array[1..4] of real;
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Open: TOpenDialog;
    StringGrid1: TStringGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    Edit17: TEdit;
    Edit18: TEdit;
    Edit19: TEdit;
    Edit20: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Panel2: TPanel;
    GroupBox4: TGroupBox;
    StringGrid2: TStringGrid;
    GroupBox5: TGroupBox;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Edit21: TEdit;
    Edit22: TEdit;
    Edit23: TEdit;
    Edit24: TEdit;
    Edit25: TEdit;
    Edit26: TEdit;
    Edit27: TEdit;
    Edit28: TEdit;
    Edit29: TEdit;
    Edit30: TEdit;
    Edit31: TEdit;
    Edit32: TEdit;
    Edit33: TEdit;
    Edit34: TEdit;
    Edit35: TEdit;
    Edit36: TEdit;
    Edit37: TEdit;
    Edit38: TEdit;
    Edit39: TEdit;
    Edit40: TEdit;
    GroupBox6: TGroupBox;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Panel3: TPanel;
    GroupBox7: TGroupBox;
    GroupBox8: TGroupBox;
    GroupBox9: TGroupBox;
    GroupBox10: TGroupBox;
    GroupBox11: TGroupBox;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    StringGrid3: TStringGrid;
    StringGrid4: TStringGrid;
    StringGrid5: TStringGrid;
    Edit41: TEdit;
    Edit42: TEdit;
    Edit43: TEdit;
    Edit44: TEdit;
    Edit45: TEdit;
    Edit46: TEdit;
    Edit47: TEdit;
    Edit48: TEdit;
    Edit49: TEdit;
    Edit50: TEdit;
    Edit51: TEdit;
    Edit52: TEdit;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Panel4: TPanel;
    GroupBox12: TGroupBox;
    GroupBox13: TGroupBox;
    Button11: TButton;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    StringGrid6: TStringGrid;
    Edit53: TEdit;
    Edit54: TEdit;
    GroupBox14: TGroupBox;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Chart1: TChart;
    Series1: TLineSeries;
    Series2: TLineSeries;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
    a,aa:matr;
implementation

{$R *.dfm}

function opr3(a:matr):real;
begin
opr3:=a[1,1]*a[2,2]*a[3,3]+a[1,2]*a[2,3]*a[3,1]+a[2,1]*a[3,2]*a[1,3]-a[3,1]*a[2,2]*a[1,3]-a[2,1]*a[1,2]*a[3,3]-a[3,2]*a[2,3]*a[1,1];
end;

function opr2(a:matr):real;
begin
opr2:=a[1,1]*a[2,2]-a[2,1]*a[1,2];
end;


procedure obr(a:matr; var aa:matr; var qwe:boolean);
var i,j,k,l,ax,ay:integer; a0,a2:matr; q,w,e,r:real;
begin
 qwe:=true;
 for i:=1 to 4 do
  for j:=1 to 5 do
   a0[i,j]:=0;
 a2:=a0;
 aa:=a0;
 ax:=1;
 ay:=1;
 q:=abs(opr3(a));
 if q<>0 then
  begin
   for i:=1 to 3 do
    for j:=1 to 3 do
     begin
      for k:=1 to 3 do
       for l:=1 to 3 do
        if ((k<>i) and (l<>j)) then
         begin
          a2[ax,ay]:=a[k,l];
          if ay=1 then ay:=2
           else begin ay:=1; ax:=2; end;
         end;
      ax:=1;
      ay:=1;
      w:=opr2(a2);
      a2:=a0;
      aa[i,j]:=w/q;
      e:=-1;
      if ((i+j) mod 2=1) then aa[i,j]:=e*aa[i,j];
     end;
  end
 else
  begin
   ShowMessage('Определитель равен 0! Система не имеет обратной матрицы.');
   qwe:=false;
  end;
end;


procedure TForm1.FormCreate(Sender: TObject);
 var b,a,dx,x,k1,k2:real;
    i:integer;
begin
StringGrid1.Cells[0,0]:='X1';
StringGrid1.Cells[1,0]:='X2';
StringGrid1.Cells[2,0]:='X3';
StringGrid1.Cells[3,0]:='X4';
StringGrid1.Cells[4,0]:='Своб. член';

StringGrid2.Cells[0,0]:='№';
StringGrid2.Cells[1,0]:='X1';
StringGrid2.Cells[2,0]:='X2';
StringGrid2.Cells[3,0]:='X3';
StringGrid2.Cells[4,0]:='X4';

a:=-5;
b:=5;
x:=a;
//Form7.Show;
dx:=(b-a)/100;

  for i:=1 to 100 do begin
   k1:=2.1-exp(-x);//exp(x)-1.3;
   k2:=-(x-1.7)*(x-1.7)*(x-1.7);//cos(x+2.9);

   Chart1.Series[0].AddXY(x,K2,'',clblue);
   Chart1.Series[1].AddXY(x,K1,'',clred);
   x:=x+dx;

  end;

end;

procedure TForm1.Button1Click(Sender: TObject);
var i,j:integer;
begin
if open.Execute then
begin
 AssignFile(input,open.FileName);
 reset(input);
  for i:=1 to 4 do
   for j:=1 to 5 do
    read(A[i,j]);
 closeFile(input);
 edit1.Text:=floattostr(A[1,1]);
 edit2.Text:=floattostr(A[1,2]);
 edit3.Text:=floattostr(A[1,3]);
 edit4.Text:=floattostr(A[1,4]);
 edit5.Text:=floattostr(A[1,5]);
 edit6.Text:=floattostr(A[2,1]);
 edit7.Text:=floattostr(A[2,2]);
 edit8.Text:=floattostr(A[2,3]);
 edit9.Text:=floattostr(A[2,4]);
 edit10.Text:=floattostr(A[2,5]);
 edit11.Text:=floattostr(A[3,1]);
 edit12.Text:=floattostr(A[3,2]);
 edit13.Text:=floattostr(A[3,3]);
 edit14.Text:=floattostr(A[3,4]);
 edit15.Text:=floattostr(A[3,5]);
 edit16.Text:=floattostr(A[4,1]);
 edit17.Text:=floattostr(A[4,2]);
 edit18.Text:=floattostr(A[4,3]);
 edit19.Text:=floattostr(A[4,4]);
 edit20.Text:=floattostr(A[4,5]);
end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var i,j:integer;
begin
edit1.Text:='';
edit2.Text:='';
edit3.Text:='';
edit4.Text:='';
edit5.Text:='';
edit6.Text:='';
edit7.Text:='';
edit8.Text:='';
edit9.Text:='';
edit10.Text:='';
edit11.Text:='';
edit12.Text:='';
edit13.Text:='';
edit14.Text:='';
edit15.Text:='';
edit16.Text:='';
edit17.Text:='';
edit18.Text:='';
edit19.Text:='';
edit20.Text:='';
label17.Caption:='X1 = ';
label18.Caption:='X2 = ';
label19.Caption:='X3 = ';
label20.Caption:='X4 = ';
for i:=1 to 18 do
 for j:=0 to 4 do
  StringGrid1.Cells[j,i]:='';
end;

procedure TForm1.Button4Click(Sender: TObject);
var i,j:integer;
begin
if open.Execute then
begin
 AssignFile(input,open.FileName);
 reset(input);
  for i:=1 to 4 do
   for j:=1 to 5 do
    read(A[i,j]);
 closeFile(input);
 edit21.Text:=floattostr(A[1,1]);
 edit22.Text:=floattostr(A[1,2]);
 edit23.Text:=floattostr(A[1,3]);
 edit24.Text:=floattostr(A[1,4]);
 edit25.Text:=floattostr(A[1,5]);
 edit26.Text:=floattostr(A[2,1]);
 edit27.Text:=floattostr(A[2,2]);
 edit28.Text:=floattostr(A[2,3]);
 edit29.Text:=floattostr(A[2,4]);
 edit30.Text:=floattostr(A[2,5]);
 edit31.Text:=floattostr(A[3,1]);
 edit32.Text:=floattostr(A[3,2]);
 edit33.Text:=floattostr(A[3,3]);
 edit34.Text:=floattostr(A[3,4]);
 edit35.Text:=floattostr(A[3,5]);
 edit36.Text:=floattostr(A[4,1]);
 edit37.Text:=floattostr(A[4,2]);
 edit38.Text:=floattostr(A[4,3]);
 edit39.Text:=floattostr(A[4,4]);
 edit40.Text:=floattostr(A[4,5]);
end;

end;

procedure TForm1.Button5Click(Sender: TObject);
var i,j:integer;
begin
edit21.Text:='';
edit22.Text:='';
edit23.Text:='';
edit24.Text:='';
edit25.Text:='';
edit26.Text:='';
edit27.Text:='';
edit28.Text:='';
edit29.Text:='';
edit30.Text:='';
edit31.Text:='';
edit32.Text:='';
edit33.Text:='';
edit34.Text:='';
edit35.Text:='';
edit36.Text:='';
edit37.Text:='';
edit38.Text:='';
edit39.Text:='';
edit40.Text:='';
label37.Caption:='X1 = ';
label38.Caption:='X2 = ';
label39.Caption:='X3 = ';
label40.Caption:='X4 = ';
for i:=1 to 13 do
 for j:=0 to 4 do
  StringGrid2.Cells[j,i]:='';
end;

procedure TForm1.Button7Click(Sender: TObject);
var i,j:integer;
begin
if open.Execute then
begin
 AssignFile(input,open.FileName);
 reset(input);
  for i:=1 to 3 do
   for j:=1 to 4 do
    read(A[i,j]);
 closeFile(input);
 edit41.Text:=floattostr(A[1,1]);
 edit42.Text:=floattostr(A[1,2]);
 edit43.Text:=floattostr(A[1,3]);
 edit44.Text:=floattostr(A[1,4]);
 edit45.Text:=floattostr(A[2,1]);
 edit46.Text:=floattostr(A[2,2]);
 edit47.Text:=floattostr(A[2,3]);
 edit48.Text:=floattostr(A[2,4]);
 edit49.Text:=floattostr(A[3,1]);
 edit50.Text:=floattostr(A[3,2]);
 edit51.Text:=floattostr(A[3,3]);
 edit52.Text:=floattostr(A[3,4]);
end;

end;

procedure TForm1.Button8Click(Sender: TObject);
var i,j:integer;
begin
 edit41.Text:='';
 edit42.Text:='';
 edit43.Text:='';
 edit44.Text:='';
 edit45.Text:='';
 edit46.Text:='';
 edit47.Text:='';
 edit48.Text:='';
 edit49.Text:='';
 edit50.Text:='';
 edit51.Text:='';
 edit52.Text:='';
 label54.Caption:='X1 = ';
 label55.Caption:='X2 = ';
 label56.Caption:='X3 = ';
 for i:=0 to 2 do
  for j:=0 to 3  do
   StringGrid3.Cells[j,i]:='';
 for i:=0 to 2 do
  for j:=0 to 2  do
   StringGrid5.Cells[j,i]:='';
end;

procedure TForm1.Button3Click(Sender: TObject);
var i,j,k,l:integer; b:array [1..7] of real; x1,x2,x3,x4,y1,y2,y3,y4:real;
begin
a[1,1]:=strtofloat(edit1.Text);
a[1,2]:=strtofloat(edit2.Text);
a[1,3]:=strtofloat(edit3.Text);
a[1,4]:=strtofloat(edit4.Text);
a[1,5]:=strtofloat(edit5.Text);
a[2,1]:=strtofloat(edit6.Text);
a[2,2]:=strtofloat(edit7.Text);
a[2,3]:=strtofloat(edit8.Text);
a[2,4]:=strtofloat(edit9.Text);
a[2,5]:=strtofloat(edit10.Text);
a[3,1]:=strtofloat(edit11.Text);
a[3,2]:=strtofloat(edit12.Text);
a[3,3]:=strtofloat(edit13.Text);
a[3,4]:=strtofloat(edit14.Text);
a[3,5]:=strtofloat(edit15.Text);
a[4,1]:=strtofloat(edit16.Text);
a[4,2]:=strtofloat(edit17.Text);
a[4,3]:=strtofloat(edit18.Text);
a[4,4]:=strtofloat(edit19.Text);
a[4,5]:=strtofloat(edit20.Text);
 for i:=1 to 4 do
  for j:=1 to 5 do
   StringGrid1.Cells[j-1,i]:=floattostrf(a[i,j],fffixed,8,4);

 k:=6;
 for i:=5 downto 1 do
  begin
   b[i]:=a[1,i]/a[1,1];
   StringGrid1.Cells[i-1,k]:=floattostrf(a[1,i]/a[1,1],fffixed,8,4);
  end;
 inc(k);

 for i:=2 to 4 do
  for j:=2 to 5 do
   begin
    a[i,j]:=a[i,j]-b[j]*a[i,1];
    StringGrid1.Cells[j-1,k+i-2]:=floattostrf(a[i,j],fffixed,8,4);
   end;
  k:=11;

 for i:=5 downto 2 do
  begin
   b[i]:=a[2,i]/a[2,2];
   StringGrid1.Cells[i-1,k]:=floattostrf(b[i],fffixed,8,4);
  end;
 inc(k);

 for i:=3 to 4 do
  for j:=3 to 5 do
   begin
    a[i,j]:=a[i,j]-b[j]*a[i,2];
    StringGrid1.Cells[j-1,k+i-3]:=floattostrf(a[i,j],fffixed,8,4);
   end;
  k:=15;

 for i:=5 downto 3 do
  begin
   b[i]:=a[3,i]/a[3,3];
   StringGrid1.Cells[i-1,k]:=floattostrf(b[i],fffixed,8,4);
  end;
 inc(k);

 for i:=4 to 4 do
  for j:=4 to 5 do
   begin
    a[i,j]:=a[i,j]-b[j]*a[i,3];
    StringGrid1.Cells[j-1,k+i-4]:=floattostrf(a[i,j],fffixed,8,4);
   end;
 k:=17;

 StringGrid1.Cells[3,k]:=floattostr(1);
 StringGrid1.Cells[4,k]:=floattostrf(a[4,5]/a[4,4],fffixed,8,4);
 x4:=a[4,5]/a[4,4];
 x3:=strtofloat(StringGrid1.Cells[4,15])-strtofloat(StringGrid1.Cells[3,15])*x4;
 x2:=strtofloat(StringGrid1.Cells[4,11])-strtofloat(StringGrid1.Cells[3,11])*x4-strtofloat(StringGrid1.Cells[2,11])*x3;
 x1:=strtofloat(StringGrid1.Cells[4,6])-strtofloat(StringGrid1.Cells[3,6])*x4-strtofloat(StringGrid1.Cells[2,6])*x3-strtofloat(StringGrid1.Cells[1,6])*x2;
 Label17.Caption:=Label17.Caption+FloatToStrF(x1, fffixed, 8, 4);
 Label18.Caption:=Label18.Caption+FloatToStrF(x2, fffixed, 8, 4);
 Label19.Caption:=Label19.Caption+FloatToStrF(x3, fffixed, 8, 4);
 Label20.Caption:=Label20.Caption+FloatToStrF(x4, fffixed, 8, 4);
 y1:=x1*strtofloat(edit1.Text)+x2*strtofloat(edit2.Text)+x3*strtofloat(edit3.Text)+x4*strtofloat(edit4.Text);
 y2:=x1*strtofloat(edit6.Text)+x2*strtofloat(edit7.Text)+x3*strtofloat(edit8.Text)+x4*strtofloat(edit9.Text);
 y3:=x1*strtofloat(edit11.Text)+x2*strtofloat(edit12.Text)+x3*strtofloat(edit13.Text)+x4*strtofloat(edit14.Text);
 y4:=x1*strtofloat(edit16.Text)+x2*strtofloat(edit17.Text)+x3*strtofloat(edit18.Text)+x4*strtofloat(edit19.Text);
 ShowMessage(floattostrf(y1,fffixed,8,4)+' = '+edit5.Text+#13+floattostrf(y2,fffixed,8,4)+' = '+edit10.Text+#13+
 floattostrf(y3,fffixed,8,4)+' = '+edit15.Text+#13+floattostrf(y4,fffixed,8,4)+' = '+edit20.Text);

{ label50.Caption:=floattostr(x1*strtofloat(edit1.Text)+x2*strtofloat(edit2.Text)+x3*strtofloat(edit3.Text)+x4*strtofloat(edit4.Text));
 label51.Caption:=floattostr(x1*strtofloat(edit6.Text)+x2*strtofloat(edit7.Text)+x3*strtofloat(edit8.Text)+x4*strtofloat(edit9.Text));
 label52.Caption:=floattostr(x1*strtofloat(edit11.Text)+x2*strtofloat(edit12.Text)+x3*strtofloat(edit13.Text)+x4*strtofloat(edit14.Text));
 label53.Caption:=floattostr(x1*strtofloat(edit16.Text)+x2*strtofloat(edit17.Text)+x3*strtofloat(edit18.Text)+x4*strtofloat(edit19.Text));
}
end;


function xx1(x1,x2,x3,x4:real):real;
begin
xx1:=(a[1,1]*x1+a[1,2]*x2+a[1,3]*x3+a[1,4]*x4+a[1,5]);///a[1,1];
end;

function xx2(x1,x2,x3,x4:real):real;
begin
xx2:=(a[2,1]*x1+a[2,2]*x2+a[2,3]*x3+a[2,4]*x4+a[2,5]);///a[2,2];
end;

function xx3(x1,x2,x3,x4:real):real;
begin
xx3:=(a[3,1]*x1+a[3,2]*x2+a[3,3]*x3+a[3,4]*x4+a[3,5]);///a[3,3];
end;

function xx4(x1,x2,x3,x4:real):real;
begin
xx4:=(a[4,1]*x1+a[4,2]*x2+a[4,3]*x3+a[4,4]*x4+a[4,5]);///a[4,4];
end;

procedure TForm1.Button6Click(Sender: TObject);
var i,j,k,n:integer; e,x1,x2,x3,x4,y1,y2,y3,y4:real;
begin
a[1,1]:=strtofloat(edit21.Text);
a[1,2]:=strtofloat(edit22.Text);
a[1,3]:=strtofloat(edit23.Text);
a[1,4]:=strtofloat(edit24.Text);
a[1,5]:=strtofloat(edit25.Text);
a[2,1]:=strtofloat(edit26.Text);
a[2,2]:=strtofloat(edit27.Text);
a[2,3]:=strtofloat(edit28.Text);
a[2,4]:=strtofloat(edit29.Text);
a[2,5]:=strtofloat(edit30.Text);
a[3,1]:=strtofloat(edit31.Text);
a[3,2]:=strtofloat(edit32.Text);
a[3,3]:=strtofloat(edit33.Text);
a[3,4]:=strtofloat(edit34.Text);
a[3,5]:=strtofloat(edit35.Text);
a[4,1]:=strtofloat(edit36.Text);
a[4,2]:=strtofloat(edit37.Text);
a[4,3]:=strtofloat(edit38.Text);
a[4,4]:=strtofloat(edit39.Text);
a[4,5]:=strtofloat(edit40.Text);
k:=1;
e:=0.000001;
x1:=a[1,5]/a[1,1];
x2:=a[2,5]/a[2,2];
x3:=a[3,5]/a[3,3];
x4:=a[4,5]/a[4,4];
StringGrid2.Cells[1,k]:=floattostrf(x1,fffixed,8,4);
StringGrid2.Cells[2,k]:=floattostrf(x2,fffixed,8,4);
StringGrid2.Cells[3,k]:=floattostrf(x3,fffixed,8,4);
StringGrid2.Cells[4,k]:=floattostrf(x4,fffixed,8,4);
StringGrid2.Cells[0,k]:=floattostr(k);
inc(k);
y1:=xx1(x1,x2,x3,x4);
y2:=xx2(x1,x2,x3,x4);
y3:=xx3(x1,x2,x3,x4);
y4:=xx4(x1,x2,x3,x4);
while ((abs(x1-y1)>e) or (abs(x2-y2)>e) or (abs(x3-y3)>e) or (abs(x4-y4)>e)) do
 begin
  x1:=y1;
  x2:=y2;
  x3:=y3;
  x4:=y4;
  StringGrid2.Cells[1,k]:=floattostrf(x1,fffixed,8,4);
  StringGrid2.Cells[2,k]:=floattostrf(x2,fffixed,8,4);
  StringGrid2.Cells[3,k]:=floattostrf(x3,fffixed,8,4);
  StringGrid2.Cells[4,k]:=floattostrf(x4,fffixed,8,4);
  StringGrid2.Cells[0,k]:=floattostr(k);
  inc(k);
  y1:=xx1(x1,x2,x3,x4);
  y2:=xx2(x1,x2,x3,x4);
  y3:=xx3(x1,x2,x3,x4);
  y4:=xx4(x1,x2,x3,x4);
 end;
x1:=y1;
x2:=y2;
x3:=y3;
x4:=y4;
StringGrid2.Cells[1,k]:=floattostrf(x1,fffixed,8,4);
StringGrid2.Cells[2,k]:=floattostrf(x2,fffixed,8,4);
StringGrid2.Cells[3,k]:=floattostrf(x3,fffixed,8,4);
StringGrid2.Cells[4,k]:=floattostrf(x4,fffixed,8,4);
StringGrid2.Cells[0,k]:=floattostr(k);
y1:=x1*a[1,1]+x2*a[1,2]+x3*a[1,3]+x4*a[1,4]+a[1,5];
y2:=x1*a[2,1]+x2*a[2,2]+x3*a[2,3]+x4*a[2,4]+a[2,5];
y3:=x1*a[3,1]+x2*a[3,2]+x3*a[3,3]+x4*a[3,4]+a[3,5];
y4:=x1*a[4,1]+x2*a[4,2]+x3*a[4,3]+x4*a[4,4]+a[4,5];
label37.Caption:=Label37.Caption+FloatToStrF(x1, fffixed, 8, 4);
label38.Caption:=Label38.Caption+FloatToStrF(x2, fffixed, 8, 4);
label39.Caption:=Label39.Caption+FloatToStrF(x3, fffixed, 8, 4);
label40.Caption:=Label40.Caption+FloatToStrF(x4, fffixed, 8, 4);
ShowMessage('X1 = '+floattostrf(y1,fffixed,8,4)+#13+'X2 = '+floattostrf(y2,fffixed,8,4)+#13+'X3 = '+floattostrf(y3,fffixed,8,4)+#13+'X4 = '+floattostrf(y4,fffixed,8,4));
end;

procedure TForm1.Button9Click(Sender: TObject);
var x1,x2,x3,y1,y2,y3:real; i,j:integer; qwe:boolean; aaa:matr;
begin
 a[1,1]:=strtofloat(edit41.Text);
 a[1,2]:=strtofloat(edit42.Text);
 a[1,3]:=strtofloat(edit43.Text);
 a[1,4]:=strtofloat(edit44.Text);
 a[2,1]:=strtofloat(edit45.Text);
 a[2,2]:=strtofloat(edit46.Text);
 a[2,3]:=strtofloat(edit47.Text);
 a[2,4]:=strtofloat(edit48.Text);
 a[3,1]:=strtofloat(edit49.Text);
 a[3,2]:=strtofloat(edit50.Text);
 a[3,3]:=strtofloat(edit51.Text);
 a[3,4]:=strtofloat(edit52.Text);

for i:=1 to 3 do
 for j:=1 to 4 do
  StringGrid3.Cells[j-1,i-1]:=floattostrf(a[i,j],fffixed,8,4);

obr(a,aa,qwe);
x1:=0;
x2:=0;
x3:=0;
if qwe then
begin
 for i:=1 to 3 do
  for j:=1 to 3 do
   aaa[i,j]:=aa[j,i];
 aa:=aaa;
 for j:=1 to 3 do
  x1:=x1+aa[1,j]*a[j,4];
 for j:=1 to 3 do
  x2:=x2+aa[2,j]*a[j,4];
 for j:=1 to 3 do
  x3:=x3+aa[3,j]*a[j,4];

 for i:=1 to 3 do
  for j:=1 to 3 do
   StringGrid5.Cells[j-1,i-1]:=floattostrf(aa[i,j],fffixed,8,4);

 label54.Caption:=label54.Caption+floattostrf(x1,fffixed,8,4);
 label55.Caption:=label55.Caption+floattostrf(x2,fffixed,8,4);
 label56.Caption:=label56.Caption+floattostrf(x3,fffixed,8,4);
 y1:=x1*a[1,1]+x2*a[1,2]+x3*a[1,3];
 y2:=x1*a[2,1]+x2*a[2,2]+x3*a[2,3];
 y3:=x1*a[3,1]+x2*a[3,2]+x3*a[3,3];
 ShowMessage(floattostrf(y1,fffixed,8,4)+' = '+edit44.Text+#13+floattostrf(y2,fffixed,8,4)+' = '+edit48.Text+#13+floattostrf(y3,fffixed,8,4)+' = '+edit52.Text);
end;

end;

procedure TForm1.Button11Click(Sender: TObject);
const eps=0.001;
var x:vec;
  i,j,n,k,m:integer;   koef,m2,a:matr;
  l:integer;
c,sum:real;
    Nev:Vec;
    count:integer;
    max,r:real;

procedure Gauss(n:integer; var x:vec);
var
k,l,i,j:integer;
c,sum:real;
begin
 m2:=a;
 for k:=1 to (n-1) do begin
  for i:=k+1 to n do
   for j:=k+1 to (n+1) do
    a[i,j]:=a[i,j]-a[i,k]*a[k,j]/a[k,k];
    c:=a[k,k];
     for l:=1 to (n+1) do
      a[k,l]:=a[k,l]/c;
 end;
   X[n]:=a[n,n+1]/a[n,n];
   for k:=n-1 downto 1 do
    begin
     Sum:=0;
     for j:=k+1 to n do
      Sum:=Sum+a[k,j]*X[j];
     X[k]:=(a[k,n+1]-Sum)/a[k,k];
    end;
end;

procedure Newton(n:integer; var X:vec);
const eps=0.001;
var
k,l:integer;
c,sum:real;
    Nev:Vec;
    i,count:integer;
    max,r:real;

Function F1(x,y:real):real;
begin
F1:=35*sqr(x)+4*sqr(y)-1;//x-ln(y+1.3);
end;

Function F2(x,y:real):real;
begin
F2:=sin(4.2*x-0.6*y)+6*x;//y-cos(x+2.9);
end;

Function F1X(x,y:real):real;
begin
F1X:=70*x;;
end;

Function F1Y(x,y:real):real;
begin
F1Y:=8*y;//-1/(y+1.3);
end;

Function F2X(x,y:real):real;
begin
F2X:= 4.2*cos(4.2*x-0.6*y)+6;//sin(x+2.9);
end;

Function F2Y(x,y:real):real;
begin
F2Y:=-0.6*cos(4.2*x-0.6*y);
end;

begin
 count:=0;

StringGrid6.Cells[0,1]:='0';
 for i:=1 to n do
  StringGrid6.Cells[i+2,1]:=FloatToStrF(X[i],ffFixed,20,3);
 Repeat
    a[1,1]:=F1X(X[1],X[2]);
    a[1,2]:=F1Y(X[1],X[2]);
    a[2,1]:=F2X(X[1],X[2]);
    a[2,2]:=F2Y(X[1],X[2]);
    a[1,3]:=-F1(X[1],X[2]);
    a[2,3]:=-F2(X[1],X[2]);

     Gauss(n,nev);

     for i:=1 to n do X[i]:=X[i]+Nev[i];
     if abs(Nev[1])>abs(Nev[2]) then max:=sqr(Nev[1])
      else max:=sqr(Nev[2]);

     count:=count+1;
     With StringGrid6 do begin
       RowCount:=RowCount+1;
       Cells[0,Count+1]:=IntToStr(Count);
       Cells[1,count+1]:=FloatToStrF(Nev[1],ffFixed,20,3);
       Cells[2,count+1]:=FloatToStrF(Nev[2],ffFixed,20,3);
       Cells[3,count+1]:=FloatToStrF(X[1],ffFixed,20,3);
       Cells[4,count+1]:=FloatToStrF(X[2],ffFixed,20,3);
     end;
 Until (max<eps) or (count>30);

end;

begin
StringGrid6.Cells[0,0]:='  №';
StringGrid6.Cells[1,0]:='  Невязка X';
StringGrid6.Cells[2,0]:='  Невязка Y';
StringGrid6.Cells[3,0]:='        X';
StringGrid6.Cells[4,0]:='        Y';
 n:=2;
X[1]:=StrToFloat(Edit53.Text);
X[2]:=StrToFloat(Edit54.Text);
Newton(n,X);

Label59.Caption:=Label59.Caption+FloatToStrF(X[1],ffFixed,8,4);
Label60.Caption:=Label60.Caption+FloatToStrF(X[2],ffFixed,8,4);

end;


end.
