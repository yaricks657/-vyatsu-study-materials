unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, XPMan, jpeg;

type
  TForm3 = class(TForm)
    strngrd1: TStringGrid;
    btn1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation
uses Unit6;
{$R *.dfm}

procedure TForm3.FormCreate(Sender: TObject);
begin

      strngrd1.Cells[0,0]:='N';
      strngrd1.Cells[1,0]:='X_N';
      strngrd1.Cells[2,0]:='X_N-1';
      strngrd1.Cells[3,0]:='(X_N)-(X_N-1)';
      //lbl2.Width:=form3.Width;
      strngrd1.DefaultColWidth:=round(Form3.Width/4);
end;

procedure TForm3.btn1Click(Sender: TObject);
begin
Form3.Close;
end;

procedure TForm3.btn2Click(Sender: TObject);
begin
  form6.show;
end;

end.
