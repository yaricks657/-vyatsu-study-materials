unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids;

type
  TForm3 = class(TForm)
    StringGrid1: TStringGrid;
    BitBtn1: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit1, Unit2;

{$R *.dfm}

procedure TForm3.FormCreate(Sender: TObject);
begin
StringGrid1.Cells[0,0]:='иру';
StringGrid1.Cells[1,0]:='Xi';
StringGrid1.Cells[2,0]:='Yi';
StringGrid1.Cells[3,0]:='F(Xi,Yi)';
StringGrid1.Cells[4,0]:='Xi+h';
StringGrid1.Cells[5,0]:='Yi+h*Y`i';
StringGrid1.Cells[6,0]:='F(Xi+h,Yi+h*Y`i)';
StringGrid1.Cells[7,0]:='dYi';
end;

procedure TForm3.BitBtn1Click(Sender: TObject);
begin
Close;
end;

end.
