unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus, StdCtrls,
  PrintersDlgs, Printers, ExtDlgs;

type

  { TForm1 }

  TForm1 = class(TForm)
    FontDialog1: TFontDialog;
    MainMenu1: TMainMenu;
    Memo1: TMemo;
    MenuItem1: TMenuItem;
    Menu1Soxran: TMenuItem;
    Menu1Sozdat: TMenuItem;
    Menu1Otkr: TMenuItem;
    Menu1SoxranKak: TMenuItem;
    Menu1Exit: TMenuItem;
    Menu2Vurez: TMenuItem;
    Menu2Cop: TMenuItem;
    Menu2Vstav: TMenuItem;
    Menu3_1: TMenuItem;
    Menu3_2: TMenuItem;
    Menu1pejat: TMenuItem;
    MenuPravka: TMenuItem;
    MenuFormat: TMenuItem;
    OpenDialog1: TOpenDialog;
    PrintDialog1: TPrintDialog;
    SaveDialog1: TSaveDialog;
    procedure FormCreate(Sender: TObject);
    procedure Menu1ExitClick(Sender: TObject);
    procedure Menu1OtkrClick(Sender: TObject);
    procedure Menu1pejatClick(Sender: TObject);
    procedure Menu1SoxranClick(Sender: TObject);
    procedure Menu1SoxranKakClick(Sender: TObject);
    procedure Menu2CopClick(Sender: TObject);
    procedure Menu2VstavClick(Sender: TObject);
    procedure Menu2VurezClick(Sender: TObject);
    procedure Menu3_1Click(Sender: TObject);
    procedure Menu3_2Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  FileWork:string;

implementation

{$R *.lfm}
Procedure SaveAs;
Begin
 if Form1.SaveDialog1.Execute then
   begin
     Form1.Memo1.Lines.SaveToFile(Form1.SaveDialog1.FileName);
     FileWork:=Form1.SaveDialog1.FileName;
   end;
end;

{ TForm1 }

procedure TForm1.MenuItem1Click(Sender: TObject);
begin

end;

procedure TForm1.Menu3_1Click(Sender: TObject);
begin

  if Memo1.WordWrap then
    begin
      Memo1.WordWrap:=false;
      Memo1.ScrollBars:=ssBoth;
      Menu3_1.Checked:=False;
    end
  else
  begin
      Memo1.WordWrap:=true;
      Memo1.ScrollBars:=ssVertical;
      Menu3_1.Checked:=true;
  end;
end;

procedure TForm1.Menu3_2Click(Sender: TObject);
begin
   if FontDialog1.Execute then Memo1.Font:=FontDialog1.Font;
end;

procedure TForm1.Menu1ExitClick(Sender: TObject);
begin
  close;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.Menu1OtkrClick(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    Memo1.Lines.LoadFromFile(OpenDialog1.FileName);
    FileWork:=OpenDialog1.FileName;
    end;
  end;

procedure TForm1.Menu1pejatClick(Sender: TObject);
var lh,y,i:integer;
begin
   if PrintDialog1.Execute then begin
  Printer.BeginDoc;
  Printer.Canvas.Font.Name:='Courier New';
  Printer.Canvas.Font.Size:=14;
  Printer.Canvas.Font.Color:=clBlack;
  lh:=round(1.2*abs(printer.Canvas.TextHeight('I')));
  for i:=0 to Memo1.Lines.Count-1 do begin
    if (i>0) and (i mod 40=0) then Printer.NewPage;
    Printer.Canvas.TextOut(10,3*lh+lh*(i mod 40),Memo1.Lines[i]);
  end;
  Printer.EndDoc;
  ShowMessage('Печать завершена');
end;
   end;

procedure TForm1.Menu1SoxranClick(Sender: TObject);
begin
  if FileWork='' then SaveAs else Memo1.Lines.SaveToFile(Filework);
end;

procedure TForm1.Menu1SoxranKakClick(Sender: TObject);
begin
  SaveAs;
end;

procedure TForm1.Menu2CopClick(Sender: TObject);
begin
  Memo1.CopyToClipboard;
end;



procedure TForm1.Menu2VstavClick(Sender: TObject);
begin
  Memo1.PasteFromClipboard;
end;

procedure TForm1.Menu2VurezClick(Sender: TObject);
begin
   Memo1.CutToClipboard;
end;

end.
