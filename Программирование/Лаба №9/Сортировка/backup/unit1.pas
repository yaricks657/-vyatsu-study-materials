unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type
    NBA=record
      player1: string[200];
      player2: string[200];
      points: 1..55;
      rebounds: 1..23;
      assists: 1..12;
      steals: 0..4;
      blocks: 0..6;
      combinedStatictics:3..110;
    end;
    fNBA = file of NBA;
    fi = file of integer;

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  inputfilename,outputfilename:string;
  input,output:fNBA;
  buffer:NBA;

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
begin
  if savedialog1.Execute then
  begin
    outputfilename:=savedialog1.filename;
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  i,j, i1, j1:integer;
  buffmas:array[1..40000] of NBA;
  a,b:NBA;
  fla,flb:boolean;
  count:integer;
  f1,f2,f3:fNBA;
procedure QSort(first,last:integer);
var
  L,R:integer;
  c,X:NBA;
begin
  if first>=last then Exit;
  if first<last then begin
    X:=buffmas[(first+last) div 2];
    L:=first; R:=last;
    while L<=R do begin
      while buffmas[L].combinedStatictics < X.combinedStatictics do L:=L+1;
      while buffmas[R].combinedStatictics > X.combinedStatictics do R:=R-1;
      if L<=R then begin
        c:=buffmas[L]; buffmas[L]:=buffmas[R]; buffmas[R]:=c;
        L:=L+1; R:=R-1;
      end;
    end;
  end;
  QSort(first,R);
  QSort(L,last);
end;

begin
  reset(input);
  count:=64;
  for i:=1 to count do begin
    assignfile(f1,inttostr(i) + '_1.dat');
    rewrite(f1);
    for j:=1 to 40000 do
      read(input,buffmas[j]);
    QSort(1,40000);
    for j:=1 to 40000 do begin
      write(f1,buffmas[j]);
    end;
    closefile(f1);
  end;
  closefile(input);
  for i:=1 to 6 do begin
    for j:=1 to count div 2 do begin
      assignfile(f1,inttostr(j) + '_' + inttostr(i) + '.dat');
      assignfile(f2,inttostr(count+1-j) + '_' + inttostr(i) + '.dat');
      reset(f1);
      reset(f2);
      read(f1,a);
      read(f2,b);
      if i=6 then
        assignfile(f3,outputfilename)
      else
        assignfile(f3,inttostr(j) + '_' + inttostr(i+1) + '.dat');
      rewrite(f3);
      fla:=true;
      flb:=true;
      while fla or flb do begin
        if (a.combinedStatictics<=b.combinedStatictics) and fla or not(flb) then begin
           write(f3,a);
           if eof(f1) then fla:=false
           else read(f1,a);
        end
        else if flb then begin
           write(f3,b);
           if eof(f2) then flb:=false
           else read(f2,b);
        end;
      end;
      closefile(f1);
      closefile(f2);
      closefile(f3);
    end;
    count:=count div 2;
  end;
end;
      showmessage('Файл отсортирован');
end.

