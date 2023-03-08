unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs;

type

  { TForm1 }

  TForm1 = class(TForm)
    procedure FormClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormPaint(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  x, y : integer;
implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormClick(Sender: TObject);
var
  p : TPoint;
begin
  p := Mouse.CursorPos;
  p := ScreenToClient(p);
  x := p.X;
  y := p.Y;
  Repaint;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  x := 0;
  y := 250;
end;

procedure TForm1.FormPaint(Sender: TObject);
begin
  Canvas.Rectangle(x, y, x + 100, y + 50);
end;

end.

