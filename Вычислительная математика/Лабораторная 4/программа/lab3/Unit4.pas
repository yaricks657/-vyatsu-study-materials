unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,Math;

type
  TForm4 = class(TForm)
    lbl3: TLabel;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    lbl4: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    procedure btn5Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses Unit5, Unit6, Unit7, Unit8, Unit9;

{$R *.dfm}

procedure TForm4.btn5Click(Sender: TObject);
begin
  form4.Close;
end;

procedure TForm4.btn1Click(Sender: TObject);
begin
  form5.showmodal;
end;

procedure TForm4.btn3Click(Sender: TObject);
begin
  form9.showmodal;
end;

procedure TForm4.btn2Click(Sender: TObject);
begin
  form7.showmodal;
end;

procedure TForm4.btn4Click(Sender: TObject);
begin
  form8.showmodal;
end;

function arifm(a,b:real):real;
var c:real;
begin
c:=0.5*(a+b);
arifm:=c;
end;

function geom(a,b:real):real;
var c:real;
begin
c:=sqrt(a*b);
geom:=c;
end;

function garm(a,b:real):real;
var c:real;
begin
c:=(2*a*b)/(a+b);
garm:=c;
end;

procedure TForm4.FormShow(Sender: TObject);
var xa,ya,xg,yg,xgar,ygar, y1,y2,y3,E1,E2,E3,E4,E5,E6,E7:real;
begin
 xa:=arifm(unit5.masx[1] , unit5.masx[unit5.n]);
 ya:=arifm(unit5.masy[1] , unit5.masy[unit5.n]);
 xg:=geom(unit5.masx[1] , unit5.masx[unit5.n]);
 yg:=geom(unit5.masy[1] , unit5.masy[unit5.n]);
 xgar:=garm(unit5.masx[1] , unit5.masx[unit5.n]);
 ygar:=garm(unit5.masy[1] , unit5.masy[unit5.n]);
 lbl6.Caption:='� �������� ������� ����� ���������� ������ � ��������� ����� (' + floatToStr(unit5.masx[1])+';'+ floatToStr(unit5.masy[1]) + '), (' + floatToStr(unit5.masx[6]) +';'+ floatToStr(unit5.masy[6]) +'). ';
 lbl7.Caption:='X����.= '+ floatToStr(RoundTo(xa,-4) ) +'   Y����.= '+ floatToStr(RoundTo(ya,-2) );
 lbl8.Caption:='X����.= '+ floatToStr(RoundTo(xg,-4) ) +'   Y����.= '+ floatToStr(RoundTo(yg,-2) );
 lbl9.Caption:='X����.= '+ floatToStr(RoundTo(xgar,-4) ) +'   Y����.= '+ floatToStr(RoundTo(ygar,-2) );

y1:=92;
y2:=91.7;
y3:=91.7;

E1:=abs(y1-ya); E2:=abs(y1-yg); E3:=abs(y1-ygar);
E4:=abs(y2-ya); E5:=abs(y2-yg);
E6:=abs(y3-ya); E7:=abs(y3-yg);
label1.Caption:='E1= |Y1` - Y����|= '+ floatToStr( RoundTo(E1,-2) );
label2.Caption:='E2= |Y1` - Y����|= '+ floatToStr( RoundTo(E2,-2) );
label3.Caption:='E3= |Y1` - Y����|= '+ floatToStr( RoundTo(E3,-2) );
label4.Caption:='E4= |Y2` - Y����|= '+ floatToStr( RoundTo(E4,-2) );
label5.Caption:='E5= |Y2` - Y����|= '+ floatToStr( RoundTo(E5,-2) );
label6.Caption:='E6= |Y3` - Y����|= '+ floatToStr( RoundTo(E6,-2) );
label7.Caption:='E7= |Y3` - Y����|= '+ floatToStr( RoundTo(E7,-2) );
end;

end.
