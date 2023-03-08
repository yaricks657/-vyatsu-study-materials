unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type
  NBA=record
        player1: string[100];
        player2: string[100];
        points: 1..55;
        rebounds: 1..23;
        assists: 1..12;
        steals: 0..4;
        blocks: 0..6;
        combinedStatictics:3..110;
  end;
  fNBA = file of NBA;

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    OpenDialog1: TOpenDialog;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  inputfilename:string;
  input:fNBA;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  if opendialog1.Execute then
  begin
    inputfilename:=OpenDialog1.filename;
    assignfile(input,inputfilename);
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  i:integer;
  fl:boolean;
  b1,b2:NBA;
begin
  fl:=true;
  reset(input);
  read(input,b1);
  for i:=2 to filesize(input) do begin
    read(input,b2);
    if b1.combinedStatictics>b2.combinedStatictics then begin
      fl:=false;
      break;
    end;
    b1:=b2;
  end;
  if fl then showmessage('Файл отсортирован верно')
  else showmessage('Файл отсортирован неверно');
  closefile(input);
end;

end.

