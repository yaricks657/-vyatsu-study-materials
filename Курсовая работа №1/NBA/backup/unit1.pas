unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Menus,
  FileUtil, Grids, ExtCtrls, Buttons;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;
  type
     NBA = record
 points: 1..55;
 rebounds: 1..23;
 assists: 1..12;
 steals: 0..4;
 blocks: 0..6;
 end;
 var
   k:integer;
   kkk: array [1..10000] of string;
   x: array [1..2000] of NBA;
   i,aa,bb:integer;
  Form1: TForm1;
  namef:string;
implementation

{$R *.lfm}

{ TForm1 }

procedure statistics;
var i:integer;
 begin
         Randomize;
      for i:=1 to 20 do
      begin
      x[i].points:= random(55)+1;
      x[i].rebounds:= random(23)+1;
      x[i].assists:= random(12)+1;
      x[i].steals:= random(4);
      x[i].blocks:= random(6);
      end;
 end;

procedure TForm1.Button1Click(Sender: TObject);
var
 kk:string;
  i,j:integer;
  myFile0,myFile1,myFile2,myFile3,myFile4,myFile5,myFile6,myFile7,myFile8,
    myFile9,myFile10,myFile11,myFile12,myFile13,myFile14,myFile15,myFile16,myFile17,
    myFile18,myFile19,myFile20,myFile21,myFile22,myFile23,myFile24,myFile25,myFile26,
    myFile27,myFile28,myFile29:textFile;
  myFile00,myFile111,myFile222,myFile33,myFile44,myFile55,myFile66,myFile77,myFile88,
    myFile99,myFile1010,myFile1111,myFile1212,myFile1313,myFile1414,myFile1515,myFile1616,myFile1717,
    myFile1818,myFile1919,myFile2020,myFile2121,myFile2222,myFile2323,myFile2424,myFile2525,myFile2626,
    myFile2727,myFile2828,myFile2929:textFile;
      begin
     begin
       AssignFile(myFile0,'F:/NBA/db1.mdb');
       rewrite(myFile0);
       statistics;
             assignfile(myFile00,'Boston.txt');
   reset(myFile00);
    j:=0;
   while not eof(myFile00) do
      begin
      j:=j+1;
   readLn(myFile00,kkk[j]);
   end;
      CloseFile(myFile00);
      j:=1;
      for i:=1 to 17 do
      begin
      begin
      writeLn(myFile0,kkk[j+1]);
      writeLn(myFile0,'Position ',kkk[j+2]);
      writeLn(myFile0,'Jersey number #', kkk[j]);
      writeLn(myFile0,'Height ',kkk[j+3]);
      writeLn(myFile0,'Weight ', kkk[j+4]);
      writeLn(myFile0,'Birthday ',kkk[j+5]);
      writeLn(myFile0,'Experience ', kkk[j+6]);
      j:=j+7;
      end;
writeLn(myFile0,'Points ',x[i].points);
writeLn(myFile0,'Rebounds ',x[i].rebounds);
writeLn(myFile0,'Assists ',x[i].assists);
writeLn(myFile0,'Steals ',x[i].steals);
writeLn(myFile0,'Blocks ',x[i].blocks);
writeLn(myFile0,'Combined statistics: ',x[i].points+x[i].rebounds+x[i].assists+x[i].steals+x[i].blocks );
writeLn(myFile0);
end;
            end;
     CloseFile(myFile0);

      begin
       AssignFile(myFile1,'F:/NBA/Atlanta.txt');
       rewrite(myFile1);
       statistics;
             assignfile(myFile111,'Atlanta.txt');
   reset(myFile111);
    j:=0;
   while not eof(myFile111) do
      begin
      j:=j+1;
   readLn(myFile111,kkk[j]);
   end;
      CloseFile(myFile111);
      j:=1;
      for i:=1 to 17 do
      begin
      begin
      writeLn(myFile1,kkk[j+1]);
      writeLn(myFile1,'Position ',kkk[j+2]);
      writeLn(myFile1,'Jersey number #', kkk[j]);
      writeLn(myFile1,'Height ',kkk[j+3]);
      writeLn(myFile1,'Weight ', kkk[j+4]);
      writeLn(myFile1,'Birthday ',kkk[j+5]);
      writeLn(myFile1,'Experience ', kkk[j+6]);
      j:=j+7;
      end;
writeLn(myFile1,'Points ',x[i].points);
writeLn(myFile1,'Rebounds ',x[i].rebounds);
writeLn(myFile1,'Assists ',x[i].assists);
writeLn(myFile1,'Steals ',x[i].steals);
writeLn(myFile1,'Blocks ',x[i].blocks);
writeLn(myFile1,'Combined statistics: ',x[i].points+x[i].rebounds+x[i].assists+x[i].steals+x[i].blocks );
writeLn(myFile1);
end;
            end;
     CloseFile(myFile1);

      AssignFile(myFile2,'F:/NBA/Brooklyn.txt');
      rewrite(myFile2);
      statistics;
            assignfile(myFile222,'Brooklyn.txt');
  reset(myFile222);
   j:=0;
  while not eof(myFile222) do
     begin
     j:=j+1;
  readLn(myFile222,kkk[j]);
  end;
     CloseFile(myFile222);
     j:=1;
     for i:=1 to 17 do
     begin
     begin
     writeLn(myFile2,kkk[j+1]);
     writeLn(myFile2,'Position ',kkk[j+2]);
     writeLn(myFile2,'Jersey number #', kkk[j]);
     writeLn(myFile2,'Height ',kkk[j+3]);
     writeLn(myFile2,'Weight ', kkk[j+4]);
     writeLn(myFile2,'Birthday ',kkk[j+5]);
     writeLn(myFile2,'Experience ', kkk[j+6]);
     j:=j+7;
     end;
writeLn(myFile2,'Points ',x[i].points);
writeLn(myFile2,'Rebounds ',x[i].rebounds);
writeLn(myFile2,'Assists ',x[i].assists);
writeLn(myFile2,'Steals ',x[i].steals);
writeLn(myFile2,'Blocks ',x[i].blocks);
writeLn(myFile2,'Combined statistics: ',x[i].points+x[i].rebounds+x[i].assists+x[i].steals+x[i].blocks );
writeLn(myFile2);
end;

    CloseFile(myFile2);

      AssignFile(myFile3,'F:/NBA/Charlotte.txt');
      rewrite(myFile3);
      statistics;
            assignfile(myFile33,'Charlotte.txt');
  reset(myFile33);
   j:=0;
  while not eof(myFile33) do
     begin
     j:=j+1;
  readLn(myFile33,kkk[j]);
  end;
     CloseFile(myFile33);
     j:=1;
     for i:=1 to 17 do
     begin
     begin
     writeLn(myFile3,kkk[j+1]);
     writeLn(myFile3,'Position ',kkk[j+2]);
     writeLn(myFile3,'Jersey number #', kkk[j]);
     writeLn(myFile3,'Height ',kkk[j+3]);
     writeLn(myFile3,'Weight ', kkk[j+4]);
     writeLn(myFile3,'Birthday ',kkk[j+5]);
     writeLn(myFile3,'Experience ', kkk[j+6]);
     j:=j+7;
     end;
writeLn(myFile3,'Points ',x[i].points);
writeLn(myFile3,'Rebounds ',x[i].rebounds);
writeLn(myFile3,'Assists ',x[i].assists);
writeLn(myFile3,'Steals ',x[i].steals);
writeLn(myFile3,'Blocks ',x[i].blocks);
writeLn(myFile3,'Combined statistics: ',x[i].points+x[i].rebounds+x[i].assists+x[i].steals+x[i].blocks );
writeLn(myFile3);
end;

    CloseFile(myFile3);

      AssignFile(myFile4,'F:/NBA/Chicago.txt');
      rewrite(myFile4);
      statistics;
            assignfile(myFile44,'Chicago.txt');
  reset(myFile44);
   j:=0;
  while not eof(myFile44) do
     begin
     j:=j+1;
  readLn(myFile44,kkk[j]);
  end;
     CloseFile(myFile44);
     j:=1;
     for i:=1 to 17 do
     begin
     begin
     writeLn(myFile4,kkk[j+1]);
     writeLn(myFile4,'Position ',kkk[j+2]);
     writeLn(myFile4,'Jersey number #', kkk[j]);
     writeLn(myFile4,'Height ',kkk[j+3]);
     writeLn(myFile4,'Weight ', kkk[j+4]);
     writeLn(myFile4,'Birthday ',kkk[j+5]);
     writeLn(myFile4,'Experience ', kkk[j+6]);
     j:=j+7;
     end;
writeLn(myFile4,'Points ',x[i].points);
writeLn(myFile4,'Rebounds ',x[i].rebounds);
writeLn(myFile4,'Assists ',x[i].assists);
writeLn(myFile4,'Steals ',x[i].steals);
writeLn(myFile4,'Blocks ',x[i].blocks);
writeLn(myFile4,'Combined statistics: ',x[i].points+x[i].rebounds+x[i].assists+x[i].steals+x[i].blocks );
writeLn(myFile4);
end;

    CloseFile(myFile4);

      AssignFile(myFile5,'F:/NBA/Cleveland.txt');
      rewrite(myFile5);
      statistics;
            assignfile(myFile55,'Cleveland.txt');
  reset(myFile55);
   j:=0;
  while not eof(myFile55) do
     begin
     j:=j+1;
  readLn(myFile55,kkk[j]);
  end;
     CloseFile(myFile55);
     j:=1;
     for i:=1 to 17 do
     begin
     begin
     writeLn(myFile5,kkk[j+1]);
     writeLn(myFile5,'Position ',kkk[j+2]);
     writeLn(myFile5,'Jersey number #', kkk[j]);
     writeLn(myFile5,'Height ',kkk[j+3]);
     writeLn(myFile5,'Weight ', kkk[j+4]);
     writeLn(myFile5,'Birthday ',kkk[j+5]);
     writeLn(myFile5,'Experience ', kkk[j+6]);
     j:=j+7;
     end;
writeLn(myFile5,'Points ',x[i].points);
writeLn(myFile5,'Rebounds ',x[i].rebounds);
writeLn(myFile5,'Assists ',x[i].assists);
writeLn(myFile5,'Steals ',x[i].steals);
writeLn(myFile5,'Blocks ',x[i].blocks);
writeLn(myFile5,'Combined statistics: ',x[i].points+x[i].rebounds+x[i].assists+x[i].steals+x[i].blocks );
writeLn(myFile5);
end;

    CloseFile(myFile5);

      AssignFile(myFile6,'F:/NBA/Dallas.txt');
      rewrite(myFile6);
      statistics;
            assignfile(myFile66,'Dallas.txt');
  reset(myFile66);
   j:=0;
  while not eof(myFile66) do
     begin
     j:=j+1;
  readLn(myFile66,kkk[j]);
  end;
     CloseFile(myFile66);
     j:=1;
     for i:=1 to 17 do
     begin
     begin
     writeLn(myFile6,kkk[j+1]);
     writeLn(myFile6,'Position ',kkk[j+2]);
     writeLn(myFile6,'Jersey number #', kkk[j]);
     writeLn(myFile6,'Height ',kkk[j+3]);
     writeLn(myFile6,'Weight ', kkk[j+4]);
     writeLn(myFile6,'Birthday ',kkk[j+5]);
     writeLn(myFile6,'Experience ', kkk[j+6]);
     j:=j+7;
     end;
writeLn(myFile6,'Points ',x[i].points);
writeLn(myFile6,'Rebounds ',x[i].rebounds);
writeLn(myFile6,'Assists ',x[i].assists);
writeLn(myFile6,'Steals ',x[i].steals);
writeLn(myFile6,'Blocks ',x[i].blocks);
writeLn(myFile6,'Combined statistics: ',x[i].points+x[i].rebounds+x[i].assists+x[i].steals+x[i].blocks );
writeLn(myFile6);
end;

    CloseFile(myFile6);

      AssignFile(myFile7,'F:/NBA/Denver.txt');
      rewrite(myFile7);
      statistics;
            assignfile(myFile77,'Denver.txt');
  reset(myFile77);
   j:=0;
  while not eof(myFile77) do
     begin
     j:=j+1;
  readLn(myFile77,kkk[j]);
  end;
     CloseFile(myFile77);
     j:=1;
     for i:=1 to 17 do
     begin
     begin
     writeLn(myFile7,kkk[j+1]);
     writeLn(myFile7,'Position ',kkk[j+2]);
     writeLn(myFile7,'Jersey number #', kkk[j]);
     writeLn(myFile7,'Height ',kkk[j+3]);
     writeLn(myFile7,'Weight ', kkk[j+4]);
     writeLn(myFile7,'Birthday ',kkk[j+5]);
     writeLn(myFile7,'Experience ', kkk[j+6]);
     j:=j+7;
     end;
writeLn(myFile7,'Points ',x[i].points);
writeLn(myFile7,'Rebounds ',x[i].rebounds);
writeLn(myFile7,'Assists ',x[i].assists);
writeLn(myFile7,'Steals ',x[i].steals);
writeLn(myFile7,'Blocks ',x[i].blocks);
writeLn(myFile7,'Combined statistics: ',x[i].points+x[i].rebounds+x[i].assists+x[i].steals+x[i].blocks );
writeLn(myFile7);
end;

    CloseFile(myFile7);

      AssignFile(myFile8,'F:/NBA/Detroit.txt');
      rewrite(myFile8);
      statistics;
            assignfile(myFile88,'Detroit.txt');
  reset(myFile88);
   j:=0;
  while not eof(myFile88) do
     begin
     j:=j+1;
  readLn(myFile88,kkk[j]);
  end;
     CloseFile(myFile88);
     j:=1;
     for i:=1 to 17 do
     begin
     begin
     writeLn(myFile8,kkk[j+1]);
     writeLn(myFile8,'Position ',kkk[j+2]);
     writeLn(myFile8,'Jersey number #', kkk[j]);
     writeLn(myFile8,'Height ',kkk[j+3]);
     writeLn(myFile8,'Weight ', kkk[j+4]);
     writeLn(myFile8,'Birthday ',kkk[j+5]);
     writeLn(myFile8,'Experience ', kkk[j+6]);
     j:=j+7;
     end;
writeLn(myFile8,'Points ',x[i].points);
writeLn(myFile8,'Rebounds ',x[i].rebounds);
writeLn(myFile8,'Assists ',x[i].assists);
writeLn(myFile8,'Steals ',x[i].steals);
writeLn(myFile8,'Blocks ',x[i].blocks);
writeLn(myFile8,'Combined statistics: ',x[i].points+x[i].rebounds+x[i].assists+x[i].steals+x[i].blocks );
writeLn(myFile8);
end;

    CloseFile(myFile8);

      AssignFile(myFile9,'F:/NBA/Golden State.txt');
      rewrite(myFile9);
      statistics;
            assignfile(myFile99,'Golden State.txt');
  reset(myFile99);
   j:=0;
  while not eof(myFile99) do
     begin
     j:=j+1;
  readLn(myFile99,kkk[j]);
  end;
     CloseFile(myFile99);
     j:=1;
     for i:=1 to 17 do
     begin
     begin
     writeLn(myFile9,kkk[j+1]);
     writeLn(myFile9,'Position ',kkk[j+2]);
     writeLn(myFile9,'Jersey number #', kkk[j]);
     writeLn(myFile9,'Height ',kkk[j+3]);
     writeLn(myFile9,'Weight ', kkk[j+4]);
     writeLn(myFile9,'Birthday ',kkk[j+5]);
     writeLn(myFile9,'Experience ', kkk[j+6]);
     j:=j+7;
     end;
writeLn(myFile9,'Points ',x[i].points);
writeLn(myFile9,'Rebounds ',x[i].rebounds);
writeLn(myFile9,'Assists ',x[i].assists);
writeLn(myFile9,'Steals ',x[i].steals);
writeLn(myFile9,'Blocks ',x[i].blocks);
writeLn(myFile9,'Combined statistics: ',x[i].points+x[i].rebounds+x[i].assists+x[i].steals+x[i].blocks );
writeLn(myFile9);
end;

    CloseFile(myFile9);

      AssignFile(myFile10,'F:/NBA/Houston.txt');
      rewrite(myFile10);
      statistics;
            assignfile(myFile1010,'Houston.txt');
  reset(myFile1010);
   j:=0;
  while not eof(myFile1010) do
     begin
     j:=j+1;
  readLn(myFile1010,kkk[j]);
  end;
     CloseFile(myFile1010);
     j:=1;
     for i:=1 to 17 do
     begin
     begin
     writeLn(myFile10,kkk[j+1]);
     writeLn(myFile10,'Position ',kkk[j+2]);
     writeLn(myFile10,'Jersey number #', kkk[j]);
     writeLn(myFile10,'Height ',kkk[j+3]);
     writeLn(myFile10,'Weight ', kkk[j+4]);
     writeLn(myFile10,'Birthday ',kkk[j+5]);
     writeLn(myFile10,'Experience ', kkk[j+6]);
     j:=j+7;
     end;
writeLn(myFile10,'Points ',x[i].points);
writeLn(myFile10,'Rebounds ',x[i].rebounds);
writeLn(myFile10,'Assists ',x[i].assists);
writeLn(myFile10,'Steals ',x[i].steals);
writeLn(myFile10,'Blocks ',x[i].blocks);
writeLn(myFile10,'Combined statistics: ',x[i].points+x[i].rebounds+x[i].assists+x[i].steals+x[i].blocks );
writeLn(myFile10);
end;

    CloseFile(myFile10);

      AssignFile(myFile11,'F:/NBA/Indiana.txt');
      rewrite(myFile11);
      statistics;
            assignfile(myFile1111,'Indiana.txt');
  reset(myFile1111);
   j:=0;
  while not eof(myFile1111) do
     begin
     j:=j+1;
  readLn(myFile1111,kkk[j]);
  end;
     CloseFile(myFile1111);
     j:=1;
     for i:=1 to 17 do
     begin
     begin
     writeLn(myFile11,kkk[j+1]);
     writeLn(myFile11,'Position ',kkk[j+2]);
     writeLn(myFile11,'Jersey number #', kkk[j]);
     writeLn(myFile11,'Height ',kkk[j+3]);
     writeLn(myFile11,'Weight ', kkk[j+4]);
     writeLn(myFile11,'Birthday ',kkk[j+5]);
     writeLn(myFile11,'Experience ', kkk[j+6]);
     j:=j+7;
     end;
writeLn(myFile11,'Points ',x[i].points);
writeLn(myFile11,'Rebounds ',x[i].rebounds);
writeLn(myFile11,'Assists ',x[i].assists);
writeLn(myFile11,'Steals ',x[i].steals);
writeLn(myFile11,'Blocks ',x[i].blocks);
writeLn(myFile11,'Combined statistics: ',x[i].points+x[i].rebounds+x[i].assists+x[i].steals+x[i].blocks );
writeLn(myFile11);
end;

    CloseFile(myFile11);

      AssignFile(myFile12,'F:/NBA/LA Clippers.txt');
      rewrite(myFile12);
      statistics;
            assignfile(myFile1212,'LA Clippers.txt');
  reset(myFile1212);
   j:=0;
  while not eof(myFile1212) do
     begin
     j:=j+1;
  readLn(myFile1212,kkk[j]);
  end;
     CloseFile(myFile1212);
     j:=1;
     for i:=1 to 17 do
     begin
     begin
     writeLn(myFile12,kkk[j+1]);
     writeLn(myFile12,'Position ',kkk[j+2]);
     writeLn(myFile12,'Jersey number #', kkk[j]);
     writeLn(myFile12,'Height ',kkk[j+3]);
     writeLn(myFile12,'Weight ', kkk[j+4]);
     writeLn(myFile12,'Birthday ',kkk[j+5]);
     writeLn(myFile12,'Experience ', kkk[j+6]);
     j:=j+7;
     end;
writeLn(myFile12,'Points ',x[i].points);
writeLn(myFile12,'Rebounds ',x[i].rebounds);
writeLn(myFile12,'Assists ',x[i].assists);
writeLn(myFile12,'Steals ',x[i].steals);
writeLn(myFile12,'Blocks ',x[i].blocks);
writeLn(myFile12,'Combined statistics: ',x[i].points+x[i].rebounds+x[i].assists+x[i].steals+x[i].blocks );
writeLn(myFile12);
end;

    CloseFile(myFile12);

      AssignFile(myFile2,'F:/NBA/LA Lakers.txt');
      rewrite(myFile2);
      statistics;
            assignfile(myFile222,'LA Lakers.txt');
  reset(myFile222);
   j:=0;
  while not eof(myFile222) do
     begin
     j:=j+1;
  readLn(myFile222,kkk[j]);
  end;
     CloseFile(myFile222);
     j:=1;
     for i:=1 to 17 do
     begin
     begin
     writeLn(myFile2,kkk[j+1]);
     writeLn(myFile2,'Position ',kkk[j+2]);
     writeLn(myFile2,'Jersey number #', kkk[j]);
     writeLn(myFile2,'Height ',kkk[j+3]);
     writeLn(myFile2,'Weight ', kkk[j+4]);
     writeLn(myFile2,'Birthday ',kkk[j+5]);
     writeLn(myFile2,'Experience ', kkk[j+6]);
     j:=j+7;
     end;
writeLn(myFile2,'Points ',x[i].points);
writeLn(myFile2,'Rebounds ',x[i].rebounds);
writeLn(myFile2,'Assists ',x[i].assists);
writeLn(myFile2,'Steals ',x[i].steals);
writeLn(myFile2,'Blocks ',x[i].blocks);
writeLn(myFile2,'Combined statistics: ',x[i].points+x[i].rebounds+x[i].assists+x[i].steals+x[i].blocks );
writeLn(myFile2);
end;

    CloseFile(myFile2);

      AssignFile(myFile2,'F:/NBA/Memphis.txt');
      rewrite(myFile2);
      statistics;
            assignfile(myFile222,'Memphis.txt');
  reset(myFile222);
   j:=0;
  while not eof(myFile222) do
     begin
     j:=j+1;
  readLn(myFile222,kkk[j]);
  end;
     CloseFile(myFile222);
     j:=1;
     for i:=1 to 17 do
     begin
     begin
     writeLn(myFile2,kkk[j+1]);
     writeLn(myFile2,'Position ',kkk[j+2]);
     writeLn(myFile2,'Jersey number #', kkk[j]);
     writeLn(myFile2,'Height ',kkk[j+3]);
     writeLn(myFile2,'Weight ', kkk[j+4]);
     writeLn(myFile2,'Birthday ',kkk[j+5]);
     writeLn(myFile2,'Experience ', kkk[j+6]);
     j:=j+7;
     end;
writeLn(myFile2,'Points ',x[i].points);
writeLn(myFile2,'Rebounds ',x[i].rebounds);
writeLn(myFile2,'Assists ',x[i].assists);
writeLn(myFile2,'Steals ',x[i].steals);
writeLn(myFile2,'Blocks ',x[i].blocks);
writeLn(myFile2,'Combined statistics: ',x[i].points+x[i].rebounds+x[i].assists+x[i].steals+x[i].blocks );
writeLn(myFile2);
end;

    CloseFile(myFile2);

      AssignFile(myFile2,'F:/NBA/Miami.txt');
      rewrite(myFile2);
      statistics;
            assignfile(myFile222,'Miami.txt');
  reset(myFile222);
   j:=0;
  while not eof(myFile222) do
     begin
     j:=j+1;
  readLn(myFile222,kkk[j]);
  end;
     CloseFile(myFile222);
     j:=1;
     for i:=1 to 17 do
     begin
     begin
     writeLn(myFile2,kkk[j+1]);
     writeLn(myFile2,'Position ',kkk[j+2]);
     writeLn(myFile2,'Jersey number #', kkk[j]);
     writeLn(myFile2,'Height ',kkk[j+3]);
     writeLn(myFile2,'Weight ', kkk[j+4]);
     writeLn(myFile2,'Birthday ',kkk[j+5]);
     writeLn(myFile2,'Experience ', kkk[j+6]);
     j:=j+7;
     end;
writeLn(myFile2,'Points ',x[i].points);
writeLn(myFile2,'Rebounds ',x[i].rebounds);
writeLn(myFile2,'Assists ',x[i].assists);
writeLn(myFile2,'Steals ',x[i].steals);
writeLn(myFile2,'Blocks ',x[i].blocks);
writeLn(myFile2,'Combined statistics: ',x[i].points+x[i].rebounds+x[i].assists+x[i].steals+x[i].blocks );
writeLn(myFile2);
end;

    CloseFile(myFile2);

      AssignFile(myFile2,'F:/NBA/Milwaukee.txt');
      rewrite(myFile2);
      statistics;
            assignfile(myFile222,'Milwaukee.txt');
  reset(myFile222);
   j:=0;
  while not eof(myFile222) do
     begin
     j:=j+1;
  readLn(myFile222,kkk[j]);
  end;
     CloseFile(myFile222);
     j:=1;
     for i:=1 to 17 do
     begin
     begin
     writeLn(myFile2,kkk[j+1]);
     writeLn(myFile2,'Position ',kkk[j+2]);
     writeLn(myFile2,'Jersey number #', kkk[j]);
     writeLn(myFile2,'Height ',kkk[j+3]);
     writeLn(myFile2,'Weight ', kkk[j+4]);
     writeLn(myFile2,'Birthday ',kkk[j+5]);
     writeLn(myFile2,'Experience ', kkk[j+6]);
     j:=j+7;
     end;
writeLn(myFile2,'Points ',x[i].points);
writeLn(myFile2,'Rebounds ',x[i].rebounds);
writeLn(myFile2,'Assists ',x[i].assists);
writeLn(myFile2,'Steals ',x[i].steals);
writeLn(myFile2,'Blocks ',x[i].blocks);
writeLn(myFile2,'Combined statistics: ',x[i].points+x[i].rebounds+x[i].assists+x[i].steals+x[i].blocks );
writeLn(myFile2);
end;

    CloseFile(myFile2);

      AssignFile(myFile2,'F:/NBA/Minnesota.txt');
      rewrite(myFile2);
      statistics;
            assignfile(myFile222,'Minnesota.txt');
  reset(myFile222);
   j:=0;
  while not eof(myFile222) do
     begin
     j:=j+1;
  readLn(myFile222,kkk[j]);
  end;
     CloseFile(myFile222);
     j:=1;
     for i:=1 to 17 do
     begin
     begin
     writeLn(myFile2,kkk[j+1]);
     writeLn(myFile2,'Position ',kkk[j+2]);
     writeLn(myFile2,'Jersey number #', kkk[j]);
     writeLn(myFile2,'Height ',kkk[j+3]);
     writeLn(myFile2,'Weight ', kkk[j+4]);
     writeLn(myFile2,'Birthday ',kkk[j+5]);
     writeLn(myFile2,'Experience ', kkk[j+6]);
     j:=j+7;
     end;
writeLn(myFile2,'Points ',x[i].points);
writeLn(myFile2,'Rebounds ',x[i].rebounds);
writeLn(myFile2,'Assists ',x[i].assists);
writeLn(myFile2,'Steals ',x[i].steals);
writeLn(myFile2,'Blocks ',x[i].blocks);
writeLn(myFile2,'Combined statistics: ',x[i].points+x[i].rebounds+x[i].assists+x[i].steals+x[i].blocks );
writeLn(myFile2);
end;

    CloseFile(myFile2);

      AssignFile(myFile2,'F:/NBA/New Orlean.txt');
      rewrite(myFile2);
      statistics;
            assignfile(myFile222,'New Orlean.txt');
  reset(myFile222);
   j:=0;
  while not eof(myFile222) do
     begin
     j:=j+1;
  readLn(myFile222,kkk[j]);
  end;
     CloseFile(myFile222);
     j:=1;
     for i:=1 to 17 do
     begin
     begin
     writeLn(myFile2,kkk[j+1]);
     writeLn(myFile2,'Position ',kkk[j+2]);
     writeLn(myFile2,'Jersey number #', kkk[j]);
     writeLn(myFile2,'Height ',kkk[j+3]);
     writeLn(myFile2,'Weight ', kkk[j+4]);
     writeLn(myFile2,'Birthday ',kkk[j+5]);
     writeLn(myFile2,'Experience ', kkk[j+6]);
     j:=j+7;
     end;
writeLn(myFile2,'Points ',x[i].points);
writeLn(myFile2,'Rebounds ',x[i].rebounds);
writeLn(myFile2,'Assists ',x[i].assists);
writeLn(myFile2,'Steals ',x[i].steals);
writeLn(myFile2,'Blocks ',x[i].blocks);
writeLn(myFile2,'Combined statistics: ',x[i].points+x[i].rebounds+x[i].assists+x[i].steals+x[i].blocks );
writeLn(myFile2);
end;

    CloseFile(myFile2);

      AssignFile(myFile2,'F:/NBA/New York.txt');
      rewrite(myFile2);
      statistics;
            assignfile(myFile222,'New York.txt');
  reset(myFile222);
   j:=0;
  while not eof(myFile222) do
     begin
     j:=j+1;
  readLn(myFile222,kkk[j]);
  end;
     CloseFile(myFile222);
     j:=1;
     for i:=1 to 17 do
     begin
     begin
     writeLn(myFile2,kkk[j+1]);
     writeLn(myFile2,'Position ',kkk[j+2]);
     writeLn(myFile2,'Jersey number #', kkk[j]);
     writeLn(myFile2,'Height ',kkk[j+3]);
     writeLn(myFile2,'Weight ', kkk[j+4]);
     writeLn(myFile2,'Birthday ',kkk[j+5]);
     writeLn(myFile2,'Experience ', kkk[j+6]);
     j:=j+7;
     end;
writeLn(myFile2,'Points ',x[i].points);
writeLn(myFile2,'Rebounds ',x[i].rebounds);
writeLn(myFile2,'Assists ',x[i].assists);
writeLn(myFile2,'Steals ',x[i].steals);
writeLn(myFile2,'Blocks ',x[i].blocks);
writeLn(myFile2,'Combined statistics: ',x[i].points+x[i].rebounds+x[i].assists+x[i].steals+x[i].blocks );
writeLn(myFile2);
end;

    CloseFile(myFile2);

      AssignFile(myFile2,'F:/NBA/Oklahoma.txt');
      rewrite(myFile2);
      statistics;
            assignfile(myFile222,'Oklahoma.txt');
  reset(myFile222);
   j:=0;
  while not eof(myFile222) do
     begin
     j:=j+1;
  readLn(myFile222,kkk[j]);
  end;
     CloseFile(myFile222);
     j:=1;
     for i:=1 to 17 do
     begin
     begin
     writeLn(myFile2,kkk[j+1]);
     writeLn(myFile2,'Position ',kkk[j+2]);
     writeLn(myFile2,'Jersey number #', kkk[j]);
     writeLn(myFile2,'Height ',kkk[j+3]);
     writeLn(myFile2,'Weight ', kkk[j+4]);
     writeLn(myFile2,'Birthday ',kkk[j+5]);
     writeLn(myFile2,'Experience ', kkk[j+6]);
     j:=j+7;
     end;
writeLn(myFile2,'Points ',x[i].points);
writeLn(myFile2,'Rebounds ',x[i].rebounds);
writeLn(myFile2,'Assists ',x[i].assists);
writeLn(myFile2,'Steals ',x[i].steals);
writeLn(myFile2,'Blocks ',x[i].blocks);
writeLn(myFile2,'Combined statistics: ',x[i].points+x[i].rebounds+x[i].assists+x[i].steals+x[i].blocks );
writeLn(myFile2);
end;

    CloseFile(myFile2);

      AssignFile(myFile2,'F:/NBA/Orlando.txt');
      rewrite(myFile2);
      statistics;
            assignfile(myFile222,'Orlando.txt');
  reset(myFile222);
   j:=0;
  while not eof(myFile222) do
     begin
     j:=j+1;
  readLn(myFile222,kkk[j]);
  end;
     CloseFile(myFile222);
     j:=1;
     for i:=1 to 17 do
     begin
     begin
     writeLn(myFile2,kkk[j+1]);
     writeLn(myFile2,'Position ',kkk[j+2]);
     writeLn(myFile2,'Jersey number #', kkk[j]);
     writeLn(myFile2,'Height ',kkk[j+3]);
     writeLn(myFile2,'Weight ', kkk[j+4]);
     writeLn(myFile2,'Birthday ',kkk[j+5]);
     writeLn(myFile2,'Experience ', kkk[j+6]);
     j:=j+7;
     end;
writeLn(myFile2,'Points ',x[i].points);
writeLn(myFile2,'Rebounds ',x[i].rebounds);
writeLn(myFile2,'Assists ',x[i].assists);
writeLn(myFile2,'Steals ',x[i].steals);
writeLn(myFile2,'Blocks ',x[i].blocks);
writeLn(myFile2,'Combined statistics: ',x[i].points+x[i].rebounds+x[i].assists+x[i].steals+x[i].blocks );
writeLn(myFile2);
end;

    CloseFile(myFile2);

      AssignFile(myFile2,'F:/NBA/Philadelphia.txt');
      rewrite(myFile2);
      statistics;
            assignfile(myFile222,'Philadelphia.txt');
  reset(myFile222);
   j:=0;
  while not eof(myFile222) do
     begin
     j:=j+1;
  readLn(myFile222,kkk[j]);
  end;
     CloseFile(myFile222);
     j:=1;
     for i:=1 to 17 do
     begin
     begin
     writeLn(myFile2,kkk[j+1]);
     writeLn(myFile2,'Position ',kkk[j+2]);
     writeLn(myFile2,'Jersey number #', kkk[j]);
     writeLn(myFile2,'Height ',kkk[j+3]);
     writeLn(myFile2,'Weight ', kkk[j+4]);
     writeLn(myFile2,'Birthday ',kkk[j+5]);
     writeLn(myFile2,'Experience ', kkk[j+6]);
     j:=j+7;
     end;
writeLn(myFile2,'Points ',x[i].points);
writeLn(myFile2,'Rebounds ',x[i].rebounds);
writeLn(myFile2,'Assists ',x[i].assists);
writeLn(myFile2,'Steals ',x[i].steals);
writeLn(myFile2,'Blocks ',x[i].blocks);
writeLn(myFile2,'Combined statistics: ',x[i].points+x[i].rebounds+x[i].assists+x[i].steals+x[i].blocks );
writeLn(myFile2);
end;

    CloseFile(myFile2);

      AssignFile(myFile2,'F:/NBA/Phoenix.txt');
      rewrite(myFile2);
      statistics;
            assignfile(myFile222,'Phoenix.txt');
  reset(myFile222);
   j:=0;
  while not eof(myFile222) do
     begin
     j:=j+1;
  readLn(myFile222,kkk[j]);
  end;
     CloseFile(myFile222);
     j:=1;
     for i:=1 to 17 do
     begin
     begin
     writeLn(myFile2,kkk[j+1]);
     writeLn(myFile2,'Position ',kkk[j+2]);
     writeLn(myFile2,'Jersey number #', kkk[j]);
     writeLn(myFile2,'Height ',kkk[j+3]);
     writeLn(myFile2,'Weight ', kkk[j+4]);
     writeLn(myFile2,'Birthday ',kkk[j+5]);
     writeLn(myFile2,'Experience ', kkk[j+6]);
     j:=j+7;
     end;
writeLn(myFile2,'Points ',x[i].points);
writeLn(myFile2,'Rebounds ',x[i].rebounds);
writeLn(myFile2,'Assists ',x[i].assists);
writeLn(myFile2,'Steals ',x[i].steals);
writeLn(myFile2,'Blocks ',x[i].blocks);
writeLn(myFile2,'Combined statistics: ',x[i].points+x[i].rebounds+x[i].assists+x[i].steals+x[i].blocks );
writeLn(myFile2);
end;

    CloseFile(myFile2);

      AssignFile(myFile2,'F:/NBA/Portland.txt');
      rewrite(myFile2);
      statistics;
            assignfile(myFile222,'Portland.txt');
  reset(myFile222);
   j:=0;
  while not eof(myFile222) do
     begin
     j:=j+1;
  readLn(myFile222,kkk[j]);
  end;
     CloseFile(myFile222);
     j:=1;
     for i:=1 to 17 do
     begin
     begin
     writeLn(myFile2,kkk[j+1]);
     writeLn(myFile2,'Position ',kkk[j+2]);
     writeLn(myFile2,'Jersey number #', kkk[j]);
     writeLn(myFile2,'Height ',kkk[j+3]);
     writeLn(myFile2,'Weight ', kkk[j+4]);
     writeLn(myFile2,'Birthday ',kkk[j+5]);
     writeLn(myFile2,'Experience ', kkk[j+6]);
     j:=j+7;
     end;
writeLn(myFile2,'Points ',x[i].points);
writeLn(myFile2,'Rebounds ',x[i].rebounds);
writeLn(myFile2,'Assists ',x[i].assists);
writeLn(myFile2,'Steals ',x[i].steals);
writeLn(myFile2,'Blocks ',x[i].blocks);
writeLn(myFile2,'Combined statistics: ',x[i].points+x[i].rebounds+x[i].assists+x[i].steals+x[i].blocks );
writeLn(myFile2);
end;

    CloseFile(myFile2);

      AssignFile(myFile2,'F:/NBA/Sacramento.txt');
      rewrite(myFile2);
      statistics;
            assignfile(myFile222,'Sacramento.txt');
  reset(myFile222);
   j:=0;
  while not eof(myFile222) do
     begin
     j:=j+1;
  readLn(myFile222,kkk[j]);
  end;
     CloseFile(myFile222);
     j:=1;
     for i:=1 to 17 do
     begin
     begin
     writeLn(myFile2,kkk[j+1]);
     writeLn(myFile2,'Position ',kkk[j+2]);
     writeLn(myFile2,'Jersey number #', kkk[j]);
     writeLn(myFile2,'Height ',kkk[j+3]);
     writeLn(myFile2,'Weight ', kkk[j+4]);
     writeLn(myFile2,'Birthday ',kkk[j+5]);
     writeLn(myFile2,'Experience ', kkk[j+6]);
     j:=j+7;
     end;
writeLn(myFile2,'Points ',x[i].points);
writeLn(myFile2,'Rebounds ',x[i].rebounds);
writeLn(myFile2,'Assists ',x[i].assists);
writeLn(myFile2,'Steals ',x[i].steals);
writeLn(myFile2,'Blocks ',x[i].blocks);
writeLn(myFile2,'Combined statistics: ',x[i].points+x[i].rebounds+x[i].assists+x[i].steals+x[i].blocks );
writeLn(myFile2);
end;

    CloseFile(myFile2);

      AssignFile(myFile2,'F:/NBA/San Antonio.txt');
      rewrite(myFile2);
      statistics;
            assignfile(myFile222,'San Antonio.txt');
  reset(myFile222);
   j:=0;
  while not eof(myFile222) do
     begin
     j:=j+1;
  readLn(myFile222,kkk[j]);
  end;
     CloseFile(myFile222);
     j:=1;
     for i:=1 to 17 do
     begin
     begin
     writeLn(myFile2,kkk[j+1]);
     writeLn(myFile2,'Position ',kkk[j+2]);
     writeLn(myFile2,'Jersey number #', kkk[j]);
     writeLn(myFile2,'Height ',kkk[j+3]);
     writeLn(myFile2,'Weight ', kkk[j+4]);
     writeLn(myFile2,'Birthday ',kkk[j+5]);
     writeLn(myFile2,'Experience ', kkk[j+6]);
     j:=j+7;
     end;
writeLn(myFile2,'Points ',x[i].points);
writeLn(myFile2,'Rebounds ',x[i].rebounds);
writeLn(myFile2,'Assists ',x[i].assists);
writeLn(myFile2,'Steals ',x[i].steals);
writeLn(myFile2,'Blocks ',x[i].blocks);
writeLn(myFile2,'Combined statistics: ',x[i].points+x[i].rebounds+x[i].assists+x[i].steals+x[i].blocks );
writeLn(myFile2);
end;

    CloseFile(myFile2);

      AssignFile(myFile2,'F:/NBA/Toronto.txt');
      rewrite(myFile2);
      statistics;
            assignfile(myFile222,'Toronto.txt');
  reset(myFile222);
   j:=0;
  while not eof(myFile222) do
     begin
     j:=j+1;
  readLn(myFile222,kkk[j]);
  end;
     CloseFile(myFile222);
     j:=1;
     for i:=1 to 17 do
     begin
     begin
     writeLn(myFile2,kkk[j+1]);
     writeLn(myFile2,'Position ',kkk[j+2]);
     writeLn(myFile2,'Jersey number #', kkk[j]);
     writeLn(myFile2,'Height ',kkk[j+3]);
     writeLn(myFile2,'Weight ', kkk[j+4]);
     writeLn(myFile2,'Birthday ',kkk[j+5]);
     writeLn(myFile2,'Experience ', kkk[j+6]);
     j:=j+7;
     end;
writeLn(myFile2,'Points ',x[i].points);
writeLn(myFile2,'Rebounds ',x[i].rebounds);
writeLn(myFile2,'Assists ',x[i].assists);
writeLn(myFile2,'Steals ',x[i].steals);
writeLn(myFile2,'Blocks ',x[i].blocks);
writeLn(myFile2,'Combined statistics: ',x[i].points+x[i].rebounds+x[i].assists+x[i].steals+x[i].blocks );
writeLn(myFile2);
end;

    CloseFile(myFile2);

      AssignFile(myFile2,'F:/NBA/Utah.txt');
      rewrite(myFile2);
      statistics;
            assignfile(myFile222,'Utah.txt');
  reset(myFile222);
   j:=0;
  while not eof(myFile222) do
     begin
     j:=j+1;
  readLn(myFile222,kkk[j]);
  end;
     CloseFile(myFile222);
     j:=1;
     for i:=1 to 17 do
     begin
     begin
     writeLn(myFile2,kkk[j+1]);
     writeLn(myFile2,'Position ',kkk[j+2]);
     writeLn(myFile2,'Jersey number #', kkk[j]);
     writeLn(myFile2,'Height ',kkk[j+3]);
     writeLn(myFile2,'Weight ', kkk[j+4]);
     writeLn(myFile2,'Birthday ',kkk[j+5]);
     writeLn(myFile2,'Experience ', kkk[j+6]);
     j:=j+7;
     end;
writeLn(myFile2,'Points ',x[i].points);
writeLn(myFile2,'Rebounds ',x[i].rebounds);
writeLn(myFile2,'Assists ',x[i].assists);
writeLn(myFile2,'Steals ',x[i].steals);
writeLn(myFile2,'Blocks ',x[i].blocks);
writeLn(myFile2,'Combined statistics: ',x[i].points+x[i].rebounds+x[i].assists+x[i].steals+x[i].blocks );
writeLn(myFile2);
end;

    CloseFile(myFile2);

      AssignFile(myFile2,'F:/NBA/Washington.txt');
      rewrite(myFile2);
      statistics;
            assignfile(myFile222,'Washington.txt');
  reset(myFile222);
   j:=0;
  while not eof(myFile222) do
     begin
     j:=j+1;
  readLn(myFile222,kkk[j]);
  end;
     CloseFile(myFile222);
     j:=1;
     for i:=1 to 17 do
     begin
     begin
     writeLn(myFile2,kkk[j+1]);
     writeLn(myFile2,'Position ',kkk[j+2]);
     writeLn(myFile2,'Jersey number #', kkk[j]);
     writeLn(myFile2,'Height ',kkk[j+3]);
     writeLn(myFile2,'Weight ', kkk[j+4]);
     writeLn(myFile2,'Birthday ',kkk[j+5]);
     writeLn(myFile2,'Experience ', kkk[j+6]);
     j:=j+7;
     end;
writeLn(myFile2,'Points ',x[i].points);
writeLn(myFile2,'Rebounds ',x[i].rebounds);
writeLn(myFile2,'Assists ',x[i].assists);
writeLn(myFile2,'Steals ',x[i].steals);
writeLn(myFile2,'Blocks ',x[i].blocks);
writeLn(myFile2,'Combined statistics: ',x[i].points+x[i].rebounds+x[i].assists+x[i].steals+x[i].blocks );
writeLn(myFile2);
end;

    CloseFile(myFile2);
end;
end.

