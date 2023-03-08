unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Menus, jpeg;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Timer1: TTimer;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    mm1: TMainMenu;
    km1: TMenuItem;
    h1: TMenuItem;
    Exit1: TMenuItem;
    Difficulty1: TMenuItem;
    Easy1: TMenuItem;
    Normal1: TMenuItem;
    Normal2: TMenuItem;
    Hard1: TMenuItem;
    Impossible1: TMenuItem;
    img1: TImage;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
//    procedure Timer2Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Exit1Click(Sender: TObject);
    procedure Easy1Click(Sender: TObject);
    procedure Normal1Click(Sender: TObject);
    procedure Normal2Click(Sender: TObject);
    procedure Hard1Click(Sender: TObject);
    procedure Impossible1Click(Sender: TObject);
    procedure h1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a: array [1..23,1..28] of integer;
  q: array [1..2,1..4] of integer;
  k,l: integer;
  i,j: integer;
  fig: string;
  Segf: char;
  vek: integer;
  Points: integer;
  p1,p2: integer;
  file314: TextFile;
  kek:Integer;
implementation

{$R *.dfm}

function gprav():boolean;
begin
if (fig='4')
and (a[q[1,4],q[2,4]+1]<>2)
and (a[q[1,4],q[2,4]+2]<>2)
and (a[q[1,3],q[2,3]+1]<>2)
and (a[q[1,2],q[2,2]-1]<>2)
and (a[q[1,1],q[2,1]-1]<>2)
then gprav:=true else gprav:=false;
end;

function glev():boolean;
begin
if (fig='3')
and (a[q[1,1],q[2,1]+1]<>2)
and (a[q[1,1],q[2,1]+2]<>2)
and (a[q[1,3],q[2,3]+1]<>2)
and (a[q[1,4],q[2,4]-1]<>2)
and (a[q[1,1],q[2,1]-1]<>2)
then glev:=true else glev:=false;
end;

function krest():boolean;
begin
if (fig='2')
and (a[q[1,1],q[2,1]+2]<>2)
and (a[q[1,1],q[2,1]+1]<>2)
and (a[q[1,3],q[2,3]+2]<>2)
and (a[q[1,3],q[2,3]+1]<>2)
and (a[q[1,4],q[2,4]+1]<>2)
and (a[q[1,3],q[2,3]-1]<>2)
then krest:=true else krest:=false;
end;

function palka():boolean;
begin
if (fig='1') and (a[q[1,1]+1,q[2,1]]<>2)
and (a[q[1,1]+2,q[2,1]]<>2)
and (a[q[1,1]+3,q[2,1]]<>2)
and (a[q[1,1]+4,q[2,1]]<>2)

and (a[q[1,2]+1,q[2,2]]<>2)
and (a[q[1,2]+2,q[2,2]]<>2)
and (a[q[1,2]+3,q[2,2]]<>2)
and (a[q[1,2]+4,q[2,2]]<>2)

and (a[q[1,3]+1,q[2,3]]<>2)
and (a[q[1,3]+2,q[2,3]]<>2)
and (a[q[1,3]+3,q[2,3]]<>2)
and (a[q[1,3]+4,q[2,3]]<>2)

and (a[q[1,4]+1,q[2,4]]<>2)
and (a[q[1,4]+2,q[2,4]]<>2)
and (a[q[1,4]+3,q[2,4]]<>2)
and (a[q[1,4]+4,q[2,4]]<>2)
then palka:= true else palka:=false;
end;


procedure QEX();
begin
Form1.Timer1.Enabled := false;
ShowMessage('Ooops... Try again.');
end;

procedure PauseGame();
begin
if Form1.Timer1.Enabled then
Form1.Timer1.Enabled := false else
Form1.Timer1.Enabled := true;
end;

procedure FirstF();
begin
i:= random(5);
vek:=0;
if i=0 then
begin
fig:='1';
q[1,1]:=11;//11
q[2,1]:=1;
q[1,2]:=11;//11
q[2,2]:=2;
q[1,3]:=11;//11
q[2,3]:=3;
q[1,4]:=11;//11
q[2,4]:=4;
end else
if i=1 then
begin
fig:='2';
q[1,1]:=11;//11
q[2,1]:=1;
q[1,2]:=10;//10
q[2,2]:=1;
q[1,3]:=12;//12
q[2,3]:=1;
q[1,4]:=11;//11
q[2,4]:=2;
end else
if i=2 then
begin
fig:='3';
q[1,1]:=10;
q[2,1]:=1;
q[1,2]:=11;
q[2,2]:=1;
q[1,3]:=11;
q[2,3]:=2;
q[1,4]:=12;
q[2,4]:=2;
end else
if i=3 then
begin
fig:='4';
q[1,1]:=12;
q[2,1]:=1;
q[1,2]:=11;
q[2,2]:=1;
q[1,3]:=11;
q[2,3]:=2;
q[1,4]:=10;
q[2,4]:=2;
end else
if i=4 then
begin
fig:='5';
q[1,1]:=11;
q[2,1]:=1;
q[1,2]:=11;
q[2,2]:=2;
q[1,3]:=12;
q[2,3]:=2;
q[1,4]:=12;
q[2,4]:=1;
end;

for i:=1 to 4 do
if a[q[1,i],q[2,i]]=2 then QEX;


for i:= 1 to 23 do
for j:=1 to 28 do
if a[i,j] = 1 then a[i,j]:=0;
for i:= 1 to 4 do
a[q[1,i],q[2,i]]:=1;

end;


procedure TForm1.FormCreate(Sender: TObject);
begin

if FileExists('rec.ffx') then begin
AssignFile(file314,'rec.ffx');
Reset(file314);
Read(file314,Points);
CloseFile(file314);
Label4.Caption := IntToStr(Points);
Points:=0;
end;

FirstF;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
   if kek=0 then  Form1.Timer1.Enabled := false;
 /////////////////////////////////////////////
if (q[2,4]>27) or (q[2,1]>27) or (q[2,2]>27)
or (q[2,3]>27)
or (a[q[1,4],q[2,4]+1]=2)
or (a[q[1,3],q[2,3]+1]=2)
or (a[q[1,2],q[2,2]+1]=2)
or (a[q[1,1],q[2,1]+1]=2) then
begin
for i:= 1 to 4 do
a[q[1,i],q[2,i]]:=2;
FirstF;
end;
////////////////////////////////////////////////////

  //////////////////////////////////////////////
for i:=1 to 4 do
inc(q[2,i]);
for i:=0  to 23 do
for j:=0 to 28 do
if a[i,j]=1 then a[i,j]:=0;
for i:= 1 to 4 do
a[q[1,i],q[2,i]]:=1;
   /////////////////////////////////////////////////

for k:= 10 to 230 do
for l:= 10 to 280 do
begin
i:=k div 10;
j:=l div 10;
if (k mod 10 =0) and (l mod 10=0) then
begin
if a[i,j]= 0  then Image1.Canvas.Brush.Color := clWhite
else
if a[i,j]=1 then Image1.Canvas.Brush.Color := clBlue
else
if a[i,j]=2 then Image1.Canvas.Brush.Color := clGreen
else
if a[i,j]=5 then Image1.Canvas.Brush.Color := clRed;


Image1.Canvas.Rectangle(k-10,l-10,k,l);
end;

end;

for p1:=28 downto 1 do
if a[1,p1]=5 then
for p2:=1 to 23 do
begin
a[p2,p1]:=a[p2,p1-1];
if (p1>2) then a[p2,p1-1]:=5;
end;


for j := 1 to 28 do
if (a[1,j]=2) and (a[2,j]=2) and
(a[3,j]=2) and (a[4,j]=2) and
(a[5,j]=2) and (a[6,j]=2) and
(a[7,j]=2) and (a[8,j]=2) and
(a[9,j]=2) and (a[10,j]=2) and
(a[11,j]=2) and (a[12,j]=2) and
(a[13,j]=2) and (a[14,j]=2) and
(a[15,j]=2) and (a[16,j]=2) and
(a[17,j]=2) and (a[18,j]=2) and
(a[19,j]=2) and (a[20,j]=2) and
(a[21,j]=2) and (a[22,j]=2) and
(a[23,j]=2) then
begin
for i:=1 to 23 do a[i,j]:=5;
Points:= points+5;
Label3.Caption := IntToStr(Points);
end;




end;

procedure TForm1.Button1Click(Sender: TObject);
begin
FirstF;
end;

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
////////////////////////////////////////
if (key = vk_UP) then
begin
if vek=0 then vek:=1;


///////////////////////////////////////////
///(for palka)//////////////////////////////
if (vek=4) and palka
then
for i:=2 to 4 do
begin
vek:=0;
q[2,i]:=q[2,1]-i+1;
q[1,i]:=q[1,1];
end;

///////////////////////////////////////////

if (vek=3) and palka
then
for i:=2 to 4 do
begin
vek:=4;
q[1,i]:=q[1,1]+i-1;
q[2,i]:=q[2,1];
end;

///////////////////////////////////////////

if (vek=2) and palka
then
for i:=2 to 4 do
begin
vek:=3;
q[2,i]:=q[2,1]-i+1;
q[1,i]:=q[1,1];
end;
///////////////////////////////////////////

if (vek=1)and palka
then
for i:=2 to 4 do
begin
vek:=2;
q[1,i]:=q[1,1]+i-1;
q[2,i]:=q[2,1];
end;

///////////////////////////////////
////(cancel palka)//////////////////

/////<for krest>>>////////////////////
//////////////////////////////////////
if (vek=4) and krest
then
for i:=1 to 3 do
begin
vek:=0;
q[2,1]:=q[2,4]-1;
q[2,i]:=q[2,1];
q[1,i]:=q[1,4]+2-i;
end;

if (vek=3) and krest
then
for i:=1 to 3 do
begin
vek:=4;
q[1,i]:=q[1,1];
q[2,i]:=q[2,4]+2-i;
end;

if (vek=2) and krest
then
for i:=1 to 3 do
begin
vek:=3;
q[2,i]:=q[2,1];
q[1,i]:=q[1,4]+2-i;
end;

if (vek=1) and krest
then
for i:=1 to 3 do
begin
vek:=2;
q[1,i]:=q[1,1];
q[2,i]:=q[2,4]+2-i;
end;

////////////////////////////
///<<<cancelkrest>>>>>>>>>>>>///

///////<for glev>>////////////////
///////////////////////////////////

if (vek=2) and glev then
begin
vek:=0;
q[2,1]:=q[2,1]-2;
q[2,2]:=q[2,2]-1;
q[1,2]:=q[1,2]+1;
q[1,4]:=q[1,4]+1;
q[2,4]:=q[2,4]+1;
end;

if (vek=1) and glev then
begin
vek:=2;
q[2,1]:=q[2,1]+2;
q[2,2]:=q[2,2]+1;
q[1,2]:=q[1,2]-1;
q[1,4]:=q[1,4]-1;
q[2,4]:=q[2,4]-1;
end;

/////////////////////////////////
//<<cancel glev>>>>>>>///////////

//for gprav>>>///////////////////
//////////////////////////////////

if (vek=2) and gprav then
begin
vek:=0;
q[2,1]:=q[2,1]-2;
q[2,2]:=q[2,2]-1;
q[1,2]:=q[1,2]-1;
q[1,4]:=q[1,4]-1;
q[2,4]:=q[2,4]+1;

end;

if (vek=1) and gprav then
begin
Vek:=2;
q[2,1]:=q[2,1]+2;
q[2,2]:=q[2,2]+1;
q[1,2]:=q[1,2]+1;
q[1,4]:=q[1,4]+1;
q[2,4]:=q[2,4]-1;
end;

///<cancel gprav>>///////////////
//////////////////////////////////

end;////////////////////////////////
////////////////////////////////////
////////////////////////////////////

if ((q[2,4]<23)
and (a[q[1,4],q[2,4]+1]<>2)
and (a[q[1,3],q[2,3]+1]<>2)
and (a[q[1,2],q[2,2]+1]<>2)
and (a[q[1,1],q[2,1]+1]<>2))
and (key = vk_DOWN) then
for i:=1 to 4 do
inc(q[2,i]);


if (key = vk_left) and (q[1,1]>1)
and (q[1,2]>1) and (q[1,3]>1)
and (q[1,4]>1)
and (2<>a[q[1,1]-1,q[2,1]])
and (2<>a[q[1,2]-1,q[2,2]])
and (2<>a[q[1,3]-1,q[2,3]])
and (2<>a[q[1,4]-1,q[2,4]])
then
for i:= 1 to 4 do
q[1,i]:=q[1,i]-1;


if (key = vk_right) and (q[1,4]<23)
and (q[1,2]<23) and (q[1,3]<23)
and (q[1,1]<23)
and (2<>a[q[1,1]+1,q[2,1]])
and (2<>a[q[1,2]+1,q[2,2]])
and (2<>a[q[1,3]+1,q[2,3]])
and (2<>a[q[1,4]+1,q[2,4]])
then
for i:=1 to 4 do
q[1,i]:=q[1,i]+1;



if (key=VK_space) then PAUSEGAME;

end;




procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
p1:=0;
if FileExists('rec.ffx') then begin
AssignFile(file314,'rec.ffx');
Reset(file314);
Read(file314,p1);
CloseFile(file314);
end;
if Points>p1 then begin
AssignFile(file314,'rec.ffx');
Rewrite(file314);
Write(file314,IntToStr(Points));
ShowMessage('You set a new record!');
CloseFile(file314);
end;


end;

procedure TForm1.Exit1Click(Sender: TObject);
begin
Halt;
end;

procedure TForm1.Easy1Click(Sender: TObject);
begin
Timer1.Interval := 300;
Easy1.Checked:=True;
Normal1.Checked:=False;
Normal2.Checked:=False;
Hard1.Checked:=False;
Impossible1.Checked:=False;
end;

procedure TForm1.Normal1Click(Sender: TObject);
begin
Timer1.Interval := 250;
Easy1.Checked:=False;
Normal1.Checked:=True;
Normal2.Checked:=False;
Hard1.Checked:=False;
Impossible1.Checked:=False;
end;

procedure TForm1.Normal2Click(Sender: TObject);
begin
Timer1.Interval := 200;
Easy1.Checked:=False;
Normal1.Checked:=False;
Normal2.Checked:=True;
Hard1.Checked:=False;
Impossible1.Checked:=False;
end;

procedure TForm1.Hard1Click(Sender: TObject);
begin
Timer1.Interval := 150;
Easy1.Checked:=False;
Normal1.Checked:=False;
Normal2.Checked:=False;
Hard1.Checked:=True;
Impossible1.Checked:=False;
end;

procedure TForm1.Impossible1Click(Sender: TObject);
begin
Timer1.Interval := 100;
Easy1.Checked:=False;
Normal1.Checked:=False;
Normal2.Checked:=False;
Hard1.Checked:=False;
Impossible1.Checked:=True;
end;

procedure TForm1.h1Click(Sender: TObject);
begin
kek:=1;
for i:= 1 to 23 do
for j:=1 to 28 do
a[i,j]:=0;
Form1.Timer1.Enabled := True;
img1.Visible:=False;
end;

initialization
randomize;

end.
