unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Menus, FileUtil, Grids;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    SaveDialog1: TSaveDialog;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;
  type
     NBA = record
 player1: string[100];
 player2: string[100];
 points: 1..55;
 rebounds: 1..23;
 assists: 1..12;
 steals: 0..4;
 blocks: 0..6;
 end;
 var
   x: array [1..1000000] of NBA;
   n: array [1..70] of string = ('Aaron','Abraham','Adam','Adrian','Aidan',
   'Alan','Albert','Alejandro','Alex','Alexander','Alfred','Andrew','Angel',
   'Anthony','Antonio','Ashton','Austin','Benjamin','Bernard','Blake','Brandon',
   'Brian','Bruce','Bryan','Cameron','Carl','Carlos','Charles','Christopher',
   'Cole','Connor','Caleb','Carter','Chase','Christian','Clifford','Cody',
   'Colin','Curtis','Cyrus','Daniel','David','Dennis','Devin','Diego','Dominic',
   'Donald','Douglas','Dylan','Jack','Jackson','Jacob','Jaden','Jake','James',
   'Jason','Jayden','Jeffery','Jeremiah','Jesse','Jesus','John','Jonathan',
   'Jordan','Jose','Joseph','Joshua','Juan','Julian','Justin');
   nn: array [1..62] of string = ('Smith','Johnson','Williams','Jones','Brown',
   'Davis','Miller','Wilson','Moore','Taylor','Anderson','Thomas','Jackson',
   'White','Harris','Martin','Thompson','Garcia','Martinez','Robinson','Clark',
   'Rodriguez','Lewis','Lee','Walker','Hall','Allen','Young','Hernandez','King',
   'Wright','Lopez','Hill','Scott','Green','Adams','Baker','Gonzalez','Nelson',
   'Carter','Mitchell','Perez','Roberts','Turner','Phillips','Campbell',
   'Parker','Evans','Edwards','Collins','Stewart','Sanchez','Morris','Rogers',
   'Reed','Cook','Morgan','Bell','Murphy','Bailey','Rivera','Cooper');
   i,aa,bb:integer;
  Form1: TForm1;
  namef:string;
implementation

{$R *.lfm}

{ TForm1 }
procedure generator;

 begin
      Randomize;
      for i:=1 to 5000000 do
      begin
      aa:= Random(2) + 1;
      bb:= Random(2) + 1;
      x[i].player1:= n[aa];
      x[i].player2:= nn[bb];
      x[i].points:= random(55)+1;
      x[i].rebounds:= random(23)+1;
      x[i].assists:= random(12)+1;
      x[i].steals:= random(4);
      x[i].blocks:= random(6);
      end;

      end;

procedure TForm1.Button1Click(Sender: TObject);
var
  i,j:integer;
  myFile:textFile;
   begin
     //generator;
        begin
      Randomize;
      for i:=1 to 1000000 do
      begin
      aa:= Random(70) + 1;
      bb:= Random(62) + 1;
      x[i].player1:= n[aa];
      x[i].player2:= nn[bb];
      x[i].points:= random(55)+1;
      x[i].rebounds:= random(23)+1;
      x[i].assists:= random(12)+1;
      x[i].steals:= random(4);
      x[i].blocks:= random(6);
      end;
      end;
     if SaveDialog1.Execute then
     begin
       namef:=SaveDialog1.FileName;
       AssignFile(myFile,namef);
       rewrite(myFile);
       //for j:=1 to 15 do
       begin
            FOR i:=1 to 1000000 do
      begin
writeLn(myFile,x[i].player1,' ',x[i].player2);
writeLn(myFile,'Points ',x[i].points);
writeLn(myFile,'Rebounds ',x[i].rebounds);
writeLn(myFile,'Assists ',x[i].assists);
writeLn(myFile,'Steals ',x[i].steals);
writeLn(myFile,'Blocks ',x[i].blocks);
writeLn(myFile,'Combined statistics: ', x[i].points+x[i].rebounds+x[i].assists+x[i].steals+x[i].blocks );
     end;
            end;
       end;
end;


end.

