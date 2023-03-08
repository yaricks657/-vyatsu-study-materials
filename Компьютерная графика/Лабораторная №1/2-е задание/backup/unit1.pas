unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus, ExtCtrls,
  StdCtrls, TAGraph;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button4: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Panel1: TPanel;
    Timer1: TTimer;
    Timer2: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation
var x,y,x1,x2,y1,y2,dx,dy,s1,s2,e,kek,i,m,rad,xc,yc:integer;

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button4Click(Sender: TObject);
begin
  Form1.Close;
end;


procedure TForm1.Button1Click(Sender: TObject);
begin
x:=Form1.Width div 2; ;
y:=(Form1.Height-Panel1.Height) div 2;
timer1.Enabled:=true;

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
x:=0;
y:=rad;
e:=3-2*rad;
timer2.Enabled:=true;
{while x<=y do
begin
Canvas.Pixels[x+xc,y+yc]:=clRed;
Canvas.Pixels[y+xc,x+yc]:=clRed;
Canvas.Pixels[y+xc,-x+yc]:=clRed;
Canvas.Pixels[x+xc,-y+yc]:=clRed;
Canvas.Pixels[-x+xc,-y+yc]:=clRed;
Canvas.Pixels[-y+xc,-x+yc]:=clRed;
Canvas.Pixels[-y+xc,x+yc]:=clRed;
Canvas.Pixels[-x+xc,y+yc]:=clRed;
if e<0 then e:=e+4*x+6 else
  begin
  e:=e+4*(x-y)+10;
  y:=y-1;
  end;
x:=x+1;
end; }
end;

procedure TForm1.Button3Click(Sender: TObject);
begin

end;

procedure TForm1.Edit1Change(Sender: TObject);
begin
if Form1.Edit1.Text <> '' then
begin
if (strtoint(Edit1.Text)>10000) or (strtoint(Edit1.Text)<-10000) then
   begin
   showmessage('Можно вводить число в пределе от -10000 до 10000');
   Edit1.Text:='';
   end;
if Form1.Edit1.Text <> '' then
   rad:=strtoint(Edit1.Text);
   end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  xc:=Form1.Width div 2;
 yc:=(Form1.Height-Panel1.Height) div 2;
 timer1.enabled:=false;
 timer2.Enabled:=false;
end;


procedure TForm1.FormPaint(Sender: TObject);
begin

end;

procedure TForm1.Label1Click(Sender: TObject);
begin
  Timer1.Enabled:=false;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var points: array [1..8] of integer;
aa:integer;
begin
x:=0;
aa:=round(rad/sqrt(2));
while x<aa do
begin
points[1]:=round(x+Form1.Width div 2);  //450
points[2]:=round(sqrt(rad*rad-x*x)+(Form1.Height-Panel1.Height) div 2);//200
points[3]:=round(sqrt(rad*rad-x*x)+Form1.Width div 2); // 450
points[4]:=round(x+(Form1.Height-Panel1.Height) div 2); //200
points[5]:=round(-x+(Form1.Height-Panel1.Height) div 2);  //200
points[6]:=round(-sqrt(rad*rad-x*x)+(Form1.Height-Panel1.Height) div 2);//200
points[7]:=round(-x+Form1.Width div 2);  //450
points[8]:=round(-sqrt(rad*rad-x*x)+Form1.Width div 2);// 450
Canvas.Pixels[points[1],points[2]]:=clRed;
sleep(10);
Canvas.Pixels[points[3],points[4]]:=clRed;
sleep(10);
Canvas.Pixels[points[3],points[5]]:=clRed;
sleep(10);
Canvas.Pixels[points[1],points[6]]:=clRed;
sleep(10);
Canvas.Pixels[points[7],points[6]]:=clRed;
sleep(10);
Canvas.Pixels[points[8],points[5]]:=clRed;
sleep(10);
Canvas.Pixels[points[8],points[4]]:=clRed;
sleep(10);
Canvas.Pixels[points[7],points[2]]:=clRed;
sleep(10);
x:=x+1;
end;
timer1.enabled:=false;
end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin
if x<=y then
   begin
  Canvas.Pixels[x+xc,y+yc]:=clRed;
Canvas.Pixels[y+xc,x+yc]:=clRed;
Canvas.Pixels[y+xc,-x+yc]:=clRed;
Canvas.Pixels[x+xc,-y+yc]:=clRed;
Canvas.Pixels[-x+xc,-y+yc]:=clRed;
Canvas.Pixels[-y+xc,-x+yc]:=clRed;
Canvas.Pixels[-y+xc,x+yc]:=clRed;
Canvas.Pixels[-x+xc,y+yc]:=clRed;
if e<0 then e:=e+4*x+6 else
  begin
  e:=e+4*(x-y)+10;
  y:=y-1;
  end;
x:=x+1;
end else timer2.enabled:=false;
end;

end.

