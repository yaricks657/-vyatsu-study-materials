unit Unit3;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Grids, ExtCtrls,
  StdCtrls;

type

  { TForm3 }

  TForm3 = class(TForm)
    Label1: TLabel;
    Shape1: TShape;
    StringGrid1: TStringGrid;
    procedure Shape1ChangeBounds(Sender: TObject);
  private

  public

  end;

var
  Form3: TForm3;

implementation

{$R *.lfm}

{ TForm3 }

procedure TForm3.Shape1ChangeBounds(Sender: TObject);
begin

end;

end.

