unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Menus,
  Printers, ExtCtrls, ComCtrls, LazUTF8, PrintersDlgs,
  UITypes,LCLType, Windows, Messages,Variants, BufDataset;


type

  { TForm1 }

  TForm1 = class(TForm)
    Edit1: TEdit;
    FontDialog1: TFontDialog;
    MainMenu1: TMainMenu;
    Memo1: TMemo;
    MenuItem1: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem13: TMenuItem;
    MenuItem14: TMenuItem;
    MenuItem15: TMenuItem;
    MenuItem16: TMenuItem;
    MenuItem17: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    OpenDialog1: TOpenDialog;
    OpenDialog2: TOpenDialog;
    PaintBox1: TPaintBox;
    PrintDialog1: TPrintDialog;
    SaveDialog1: TSaveDialog;
    procedure Button1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FSFSClick(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
    procedure MenuItem10Click(Sender: TObject);
    procedure MenuItem11Click(Sender: TObject);
    procedure MenuItem12Click(Sender: TObject);
    procedure MenuItem13Click(Sender: TObject);
    procedure MenuItem14Click(Sender: TObject);
    procedure MenuItem15Click(Sender: TObject);
    procedure MenuItem16Click(Sender: TObject);
    procedure MenuItem17Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
    procedure MenuItem8Click(Sender: TObject);
    procedure MenuItem9Click(Sender: TObject);
    procedure PaintBox1Click(Sender: TObject);
    procedure ToggleBox1Change(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  FileWork: String;

implementation

{$R *.lfm}

procedure SaveAs;
begin

  if Form1.SaveDialog1.Execute then
  begin
     Form1.Memo1.Lines.SaveToFile(Utf8ToSys(Form1.SaveDialog1.FileName));
    Form1.Memo1.Modified:=false;
     //Form1.Memo1.Lines.SaveToFile(Form1.SaveDialog1.FileName);
     //FileWork:=Form1.SaveDialog1.FileName;
  end;
end;

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState
  );
begin

end;

procedure TForm1.FSFSClick(Sender: TObject);
begin

end;

procedure TForm1.Label1Click(Sender: TObject);
begin

end;

procedure TForm1.Memo1Change(Sender: TObject);
begin

end;

procedure TForm1.MenuItem10Click(Sender: TObject);
  var
      rez : TModalResult;
    begin
      Close;
      //rez:=MessageDlg('Сохранение файла','Текущиц файл был изменён. Сохранить изменения?',
    //mtConfirmation, [mbYes, mbNo, mbCancel],0);
    //if Memo1.Modified  then
      //
    //if rez = mrYes then begin
      //          MenuItem7Click(Sender);
        //        Close; exit; end else Close;
      end;
  //Close;
//end;

procedure TForm1.MenuItem11Click(Sender: TObject);
begin
  Memo1.CutToClipboard;
end;

procedure TForm1.MenuItem12Click(Sender: TObject);
begin
  Memo1.CopyToClipboard;
end;

procedure TForm1.MenuItem13Click(Sender: TObject);
begin
  Memo1.PasteFromClipboard;
end;

procedure TForm1.MenuItem14Click(Sender: TObject);
begin
  If Memo1.WordWrap then
  begin
     Memo1.WordWrap:=false;
     Memo1.ScrollBars:=ssBoth;
     MenuItem14.Checked:=False;
  end
  else
  begin
    Memo1.WordWrap:=True;
    Memo1.ScrollBars:=ssVertical;
    MenuItem14.Checked:=True;
  end;
end;

procedure TForm1.MenuItem15Click(Sender: TObject);
begin
  If FontDialog1.Execute then Memo1.Font:=FontDialog1.Font;
end;

procedure TForm1.MenuItem16Click(Sender: TObject);
begin
  ShowMessage('Текстовый редактор был разработан студентом ИВТб-13-01 Кудяшевым Ярославом');
end;

procedure TForm1.MenuItem17Click(Sender: TObject);
  var
S: string;
P: PChar;
L,B: Integer;
begin
S := Memo1.Lines.Text;
L := Length(S);
SetLength(S, L + 1);
S[L + 1] := #0;
P := @S[1];
L := 0;
while P^ <> #0 do
begin
if (P^ <> #32) and (P^ <> #13) and (P^ <> #10) then L := L + 1;
P := P + UTF8CharacterLength(P);
end;
Edit1.Text := IntToStr(L);
ShowMessage('Использовано символов: ' + Edit1.Text);
end;

procedure TForm1.MenuItem1Click(Sender: TObject);
begin

end;

procedure TForm1.MenuItem2Click(Sender: TObject);
begin

end;

procedure TForm1.MenuItem5Click(Sender: TObject);
  var
      rez : TModalResult;
    begin
    if Memo1.Modified then begin
    rez:=MessageDlg('Сохранение файла','Текущий файл был изменён. Сохранить изменения?',
    mtConfirmation, [mbYes, mbNo, mbCancel],0);
        if rez = mrYes then begin

                MenuItem7Click(Sender);
                Memo1.Clear;
                Form1.Memo1.Modified:=False;
        end;
        if rez = mrNo then Memo1.Clear;
      end else begin
       Memo1.Clear;
       Form1.Memo1.Modified:=False;
      end;
    FileWork:= '';
        end;


procedure TForm1.MenuItem6Click(Sender: TObject);
  var
        rez : TModalResult;
      begin
      if Memo1.Modified then begin
      rez:=MessageDlg('Сохранение файла','Текущий файл был изменён. Сохранить изменения?',
      mtConfirmation, [mbYes, mbNo, mbCancel],0);
          if rez = mrYes then begin
                  MenuItem7Click(Sender);

                  if OpenDialog1.Execute  then
  begin

    Memo1.Lines.LoadFromFile(OpenDialog1.FileName);
     FileWork:= OpenDialog1.FileName;
  end;
          end;
          if rez = mrNo then begin

                        if OpenDialog1.Execute  then
  begin

    Memo1.Lines.LoadFromFile(OpenDialog1.FileName);
     FileWork:= OpenDialog1.FileName;
  end;
           end;
          end else  if OpenDialog1.Execute  then
  begin

    Memo1.Lines.LoadFromFile(OpenDialog1.FileName);
     FileWork:= OpenDialog1.FileName;
  end;
        end;



procedure TForm1.MenuItem7Click(Sender: TObject);
begin
  If FileWork <> '' then
  begin
  Memo1.Lines.SaveToFile(Utf8ToSys(Form1.SaveDialog1.FileName));
  Form1.Memo1.Modified:= false;
  end
   else
  begin
  if Form1.SaveDialog1.Execute then
  begin
     Form1.Memo1.Lines.SaveToFile(Form1.SaveDialog1.FileName);
     FileWork:=Form1.SaveDialog1.FileName;
      Form1.Memo1.Modified:= false;
  end;
end;
    //Form1.Memo1.Lines.SaveToFile(Utf8ToSys(Form1.SaveDialog1.FileName));
    //Form1.Memo1.Modified:=false;
  end;
  //SaveAs else Memo1.Lines.SaveToFile(FileWork);

procedure TForm1.MenuItem8Click(Sender: TObject);
begin
 if Form1.SaveDialog1.Execute then
  begin
       Form1.Memo1.Lines.SaveToFile(Form1.SaveDialog1.FileName);
     FileWork:=Form1.SaveDialog1.FileName;
      Form1.Memo1.Modified:= false;
     //Form1.Memo1.Lines.SaveToFile(Utf8ToSys(Form1.SaveDialog1.FileName));
    //Form1.Memo1.Modified:=false;
     //Form1.Memo1.Lines.SaveToFile(Form1.SaveDialog1.FileName);
     //FileWork:=Form1.SaveDialog1.FileName;
  end;
end;

procedure TForm1.MenuItem9Click(Sender: TObject);
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

procedure TForm1.PaintBox1Click(Sender: TObject);
begin

end;

procedure TForm1.ToggleBox1Change(Sender: TObject);
begin

end;

procedure TForm1.Button1Click(Sender: TObject);
begin

end;

procedure TForm1.Edit1Change(Sender: TObject);
begin

end;


procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: boolean);
  var
    rez : TModalResult;
  begin
  if (Memo1.Modified) and (Memo1.Text<>'')  then
  rez:=MessageDlg('Сохранение файла','Текущиц файл был изменён. Сохранить изменения?',
  mtConfirmation, [mbYes, mbNo, mbCancel],0);
     begin
      if rez = mrYes then
              MenuItem7Click(Sender);
      if rez = mrCancel then
        CanClose:=False;
    end;
      end;

end.


