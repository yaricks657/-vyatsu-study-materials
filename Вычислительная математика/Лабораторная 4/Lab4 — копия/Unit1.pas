unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XPMan, StdCtrls;

type
  TForm1 = class(TForm)
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit3, Unit4, Unit5;

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
  form2.showmodal;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  form3.showmodal;
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
  form4.showmodal;
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
  form5.showmodal;
end;

end.
