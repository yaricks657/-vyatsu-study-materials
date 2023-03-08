unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, MCube;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    Edit3: TEdit;
    Label3: TLabel;
    Timer1: TTimer;
    Cube1: TCube;
    CheckBox1: TCheckBox;
    Label4: TLabel;
    procedure Timer1Timer(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  b:tbitmap;

implementation

{$R *.dfm}

procedure TForm1.Timer1Timer(Sender: TObject);
begin
b:=tbitmap.Create;
b.Width:=100;
b.Height:=100;
cube1.Rotate(strtofloatdef(edit1.Text,0)*pi/180,strtofloatdef(edit2.Text,0)*pi/180,strtofloatdef(edit3.Text,0)*pi/180);
cube1.Draw(b.Canvas);
canvas.Draw(0,0,b);
b.Free;
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
cube1.DrawBorders:=checkbox1.Checked;
end;

procedure TForm1.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var r:byte;
begin
r:=cube1.FaceAt(x,y);
case r of
 1:r:=1;
 2:r:=6;
 3:r:=2;
 4:r:=5;
 5:r:=3;
 6:r:=4;
end;
if r=0 then exit;
timer1.Enabled:=false;
showmessage('You have selected '+inttostr(r));;
timer1.Enabled:=true;
end;

procedure TForm1.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
if cube1.FaceAt(x,y)=0 then cursor:=crdefault else cursor:=crhandpoint;
end;

end.
