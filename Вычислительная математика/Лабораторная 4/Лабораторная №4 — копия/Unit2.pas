unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, TeeProcs, TeEngine, Chart, Grids, StdCtrls, Series,
  Buttons;

type
  TForm2 = class(TForm)
    Chart1: TChart;
    Panel1: TPanel;
    Edit1: TEdit;
    Label1: TLabel;
    Edit2: TEdit;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    Panel2: TPanel;
    StringGrid1: TStringGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Series1: TLineSeries;
    Label2: TLabel;
    Label3: TLabel;
    BitBtn4: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    function f(x,y:real):real;
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit1, Unit3;

{$R *.dfm}

function TForm2.f(x,y:real):real;
begin
f:=x*y/2;
end;

procedure TForm2.BitBtn2Click(Sender: TObject);
var i:integer;
    x,y:real;
begin
Chart1.Legend.Visible:=true;
i:=1;
While StringGrid1.Cells[0,i]<>'' do begin
x:=StrToFloat(StringGrid1.Cells[0,i]);
y:=StrToFloat(StringGrid1.Cells[1,i]);
Chart1.Series[0].AddXY(x,y);
i:=i+1;
end;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
StringGrid1.ColWidths[0]:=Round(StringGrid1.Width/2)-2;
StringGrid1.ColWidths[1]:=Round(StringGrid1.Width/2)-2;
StringGrid1.Cells[0,0]:='X';
StringGrid1.Cells[1,0]:='Y';
end;

procedure TForm2.BitBtn4Click(Sender: TObject);
begin
Form3.ShowModal;
end;

procedure TForm2.BitBtn1Click(Sender: TObject);
var i:integer;
    a,b,x,y,h,q,u,dy:real;
begin
a:=StrToFloat(Edit1.Text);
b:=StrToFloat(Edit2.Text);
y:=StrToFloat(LabeledEdit1.Text);
h:=StrToFloat(LabeledEdit2.Text);
x:=a;
i:=0;
repeat
i:=i+1;
Form3.StringGrid1.Cells[0,i]:=IntToStr(i-1);
StringGrid1.Cells[0,i]:=FloatToStrF(x,FFFixed,5,3);
Form3.StringGrid1.Cells[1,i]:=FloatToStrF(x,FFFixed,5,3);
StringGrid1.Cells[1,i]:=FloatToStrF(y,FFFixed,5,3);
Form3.StringGrid1.Cells[2,i]:=FloatToStrF(y,FFFixed,5,3);
q:=f(x,y);
x:=x+h;
a:=y+h*q;
u:=f(x,a);
dy:=h/2*(q+u);
y:=y+dy;
Form3.StringGrid1.RowCount:=i+1;
StringGrid1.RowCount:=i+1;
if i<11 then begin
Form3.StringGrid1.Cells[3,i]:=FloatToStrF(q,FFFixed,5,3);
Form3.StringGrid1.Cells[4,i]:=FloatToStrF(x,FFFixed,5,3);
Form3.StringGrid1.Cells[5,i]:=FloatToStrF(a,FFFixed,5,3);
Form3.StringGrid1.Cells[6,i]:=FloatToStrF(u,FFFixed,5,3);
Form3.StringGrid1.Cells[7,i]:=FloatToStrF(dy,FFFixed,5,3);
StringGrid1.ColWidths[0]:=Round(StringGrid1.Width/2)-10;
StringGrid1.ColWidths[1]:=Round(StringGrid1.Width/2)-10;
end;
until x >= b;
i:=i+1;
Form3.StringGrid1.RowCount:=i;
StringGrid1.RowCount:=i;
Form3.StringGrid1.Cells[0,i]:=IntToStr(i-1);
StringGrid1.Cells[0,i]:=FloatToStrF(x,FFFixed,5,3);
Form3.StringGrid1.Cells[1,i]:=FloatToStrF(x,FFFixed,5,3);
StringGrid1.Cells[1,i]:=FloatToStrF(y,FFFixed,5,3);
Form3.StringGrid1.Cells[2,i]:=FloatToStrF(y,FFFixed,5,3);
end;

procedure TForm2.BitBtn3Click(Sender: TObject);
begin
Close;
end;

end.
