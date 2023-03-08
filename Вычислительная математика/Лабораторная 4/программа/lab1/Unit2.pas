unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, XPMan;

type
  TForm2 = class(TForm)
    strngrd1: TStringGrid;
    btn1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.FormCreate(Sender: TObject);
begin
    begin
      strngrd1.Cells[0,1]:='A';
      strngrd1.Cells[0,2]:='B';
      strngrd1.Cells[0,3]:='|B-A|';
    end;
end;

procedure TForm2.btn1Click(Sender: TObject);
begin
Form2.Close;
end;

end.
