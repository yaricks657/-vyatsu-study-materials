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
 player1: string[200];
 player2: string[200];
 points: 1..55;
 rebounds: 1..23;
 assists: 1..12;
 steals: 0..4;
 blocks: 0..6;
 combinedStatictics:3..110;
 end;
 var
   x:NBA;
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

procedure TForm1.Button1Click(Sender: TObject);
var
  i,j:integer;
  myFile:file of NBA;
   begin
   Randomize;
   if SaveDialog1.Execute then
     begin
       namef:=SaveDialog1.FileName;
       AssignFile(myFile,namef);
       rewrite(myFile);
      for i:=1 to 2560000 do
      begin
        aa:= Random(70) + 1;
        bb:= Random(62) + 1;
        x.player1:= n[aa];
        x.player2:= nn[bb];
        x.points:= random(55)+1;
        x.rebounds:= random(23)+1;
        x.assists:= random(12)+1;
        x.steals:= random(4);
        x.blocks:= random(6);
        x.combinedStatictics:=x.points+x.rebounds+x.assists+x.steals+x.blocks;
        write(myFile,x);
      end;
      showmessage('Файл сгенерирован');
      closefile(myFile);
      end;
end;


end.

