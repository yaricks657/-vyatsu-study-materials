unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, TeEngine, Series, ExtCtrls, TeeProcs,
  Chart;

type
  TForm2 = class(TForm)
    cht1: TChart;
    cht2: TChart;
    brsrsSeries1: TBarSeries;
    brsrsSeries2: TBarSeries;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

 
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses
  Unit1;

{$R *.dfm}



procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form1.img2Click(Sender);
end;

end.
