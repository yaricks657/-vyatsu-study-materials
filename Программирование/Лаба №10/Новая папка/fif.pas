unit fif;

interface

uses
  Windows, Messages, SysUtils, Variants,
  Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Menus, ImgList,
  ComCtrls, mmSystem, Buttons, MPlayer;

type  
    APlace = record
    Val: integer;    
    btnPtr: TPanel;  
    end;
    APlaceArray = array[1..1] of APlace;
type
  TForm1 = class(TForm)
    Panel1: TPanel;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N4: TMenuItem;
    N6: TMenuItem;
    ImageList1: TImageList;
    N9: TMenuItem;
    Splitter1: TSplitter;
    Timer1: TTimer;
    grp1: TGroupBox;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    N3: TMenuItem;
    N3x31: TMenuItem;
    N4x41: TMenuItem;
    N6x61: TMenuItem;
    N9x91: TMenuItem;
    N5: TMenuItem;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure N3x31Click(Sender: TObject);
    procedure N4x41Click(Sender: TObject);
    procedure N6x61Click(Sender: TObject);
    procedure N9x91Click(Sender: TObject);
    procedure N5Click(Sender: TObject);

  private
  public
   procedure makePuzzle;
   function doClick(btnNum: integer): boolean;
   procedure checkCompleted;
   procedure doSwitch(i: integer; j: integer);
   procedure destroyPuzzle;
   procedure Button4Click(Sender: TObject);
   procedure inicial;
   procedure NewGame (Rows:Integer; Cols:Integer);
  end;

var
  Form1: TForm1;
  shuffled: boolean;       
  numRows, numCols: integer; 
  numShuffles: integer;     
  numMoves: integer;        
  min,sec: Integer;
  mins,secs,time,time1,time2,time3,time4,p2: string;
  file314:Text;
  file315:Text;
  p1:Integer;
  pzlState : ^APlaceArray;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm1.NewGame (Rows:Integer; Cols:Integer);
begin
  numRows:= Rows; 
  numCols:= Cols;
  numShuffles:= 160; 
  numMoves:= 0;
  makePuzzle; 
  inicial;    
end;

procedure TForm1.makePuzzle;

var
  panelWidth, panelHeight: integer;
  btnWidth, btnHeight: integer;
  btnLeft, btnTop: integer;
  borderWidth: integer;
  i,j,k: integer;
begin
  Form1.Height:= 360;
  Form1.Width:= 400;
  panelWidth:= Panel1.Width ;
  panelHeight:= Panel1.Height ;
  borderWidth := 1;
  GetMem(pzlState, numRows*numCols*sizeof(APlace));
  btnWidth := Trunc(panelWidth/numCols) - BorderWidth*2;
  btnHeight := Trunc(panelHeight/numRows)- BorderWidth*2;
  btnTop := Panel1.Top - btnHeight - BorderWidth;
   k:=0;
  for i:= 1 to numRows do
  begin
  btnLeft:= Panel1.Left - btnWidth - BorderWidth;
  btnTop:= btnTop + btnHeight + BorderWidth*2;
   for j:= 1 to numCols do
      begin
      inc(k);
    btnLeft:= btnLeft + btnWidth + BorderWidth*2;
    pzlState^[k].BtnPtr:= TPanel.Create(Self);
    with pzlState^[k].BtnPtr do
    begin
      Parent:= Self;
      SetBounds(btnLeft, btnTop, btnWidth, btnHeight);
      Font.Height := -20;
      Font.Name:= 'Times New Roman';
      Caption:= inttoStr(k);
      onClick:= Button4Click; 
    end;
    pzlState^[k].Val:= k; 
  end;
 end;
  pzlState^[numRows*numCols].Val:= 0;
  pzlState^[numRows*numCols].BtnPtr.Visible:= FALSE;
  shuffled:= FALSE;
end;

procedure TForm1.destroyPuzzle;
var
  i: integer;
begin
  for i:= 1 to numRows*numCols do
    pzlState^[i].BtnPtr.Free;
  FreeMem(pzlState, numRows*numCols*sizeof(APlace));
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  i: integer;
begin
  for i:= 1 to numRows*numCols do
    if Sender = pzlState^[i].btnPtr then
      doClick(i);  
  if shuffled then
    checkCompleted; 
end;

function TForm1.doClick(btnNum: integer): boolean;
begin
    if the empty space is adjacent }
  doClick:= FALSE;
  if (btnNum > numCols) and
    (pzlState^[btnNum-numCols].Val = 0) then
    begin
    doSwitch(btnNum, btnNum-numCols); 
    doClick:= TRUE;
   exit;
    end;
  if ((btnNum mod numCols) <> 1) and
      (pzlState^[btnNum-1].Val = 0) then
      begin
      doSwitch(btnNum, btnNum-1); 
      doClick:= TRUE;
      exit;
      end;
  if ((btnNum mod numCols) <> 0) and
      (pzlState^[btnNum+1].Val = 0) then
      begin
      doSwitch(btnNum, btnNum+1); 
      doClick:= TRUE; 
     exit;
      end;
  if (btnNum <= (numRows-1)*numCols) and
     (pzlState^[btnNum+numCols].Val = 0) then
     begin
     doSwitch(btnNum, btnNum+numCols);
     doClick:= TRUE; 
     exit;
     end;
end;

procedure TForm1.doSwitch(i: integer; j: integer);
var
  tmp: integer;
  isVisible: boolean;
begin
  tmp:= pzlState^[i].Val;
  pzlState^[i].Val:= 0;      
  isVisible:= pzlState^[i].btnPtr.Visible;
  pzlState^[i].btnPtr.Visible:= FALSE;
  pzlState^[j].Val:= tmp;   
  pzlState^[j].btnPtr.Visible:= isVisible;
  pzlState^[j].btnPtr.Caption:= inttoStr(tmp);
  inc(numMoves);
  lbl5.Caption:= inttostr(numMoves);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  inicial;
end;

procedure TForm1.checkCompleted;
var
  i: integer;
begin
  for i:= 1 to numRows*numCols-1 do
    if pzlState^[i].Val <> i then
      exit;
      p1:=0;
 Timer1.Enabled:=False;
if FileExists('recordhod.txt') then begin
AssignFile(file314,'recordhod.txt');
Reset(file314);
Read(file314,p1);
CloseFile(file314);
end;
if FileExists('recordtime.txt') then begin
AssignFile(file315,'recordtime.txt');
Reset(file315);
Read(file315,p2);
CloseFile(file315);
time3:=p2[1]+p2[2];
time4:=p2[3]+p2[4];
end;
if (((StrToInt(mins)=StrToInt(time3)) and (StrToInt(secs)<StrToInt(time4))) or
(StrToInt(mins)<StrToInt(time3))) and (numMoves<p1) then begin
AssignFile(file315,'recordtime.txt');
Rewrite(file315);
Write(file315,mins,secs);
CloseFile(file315);
AssignFile(file314,'recordhod.txt');
Rewrite(file314);
Write(file314,IntToStr(numMoves));
ShowMessage('Вы прошли игру! Установлен новый рекорд как по времени, так и по шагам!');
CloseFile(file314);
shuffled:= FALSE;
end else
if ((StrToInt(mins)=StrToInt(time3)) and (StrToInt(secs)<StrToInt(time4))) or
(StrToInt(mins)<StrToInt(time3)) then begin
AssignFile(file315,'recordtime.txt');
Rewrite(file315);
Write(file315,mins,secs);
ShowMessage('Вы прошли игру! Установлен новый рекорд по времени!');
CloseFile(file315);
shuffled:= FALSE;
end else
if numMoves<p1 then begin
AssignFile(file314,'recordhod.txt');
Rewrite(file314);
Write(file314,IntToStr(numMoves));
ShowMessage('Вы прошли игру! Установлен новый рекорд по шагам!');
CloseFile(file314);
shuffled:= FALSE;
end else  begin
  ShowMessage('Вы прошли игру!');
  shuffled:= False;
  end;
 min:=0;
  sec:=0;
  mins:= '0' + IntToStr(min);
  secs:= '0' + IntToStr(sec);
  lbl2.Caption:= mins + ':' + secs;
destroyPuzzle;
  NewGame(4,4);
  lbl5.Caption:= '0';
  Timer1.Enabled:=True;
end;

procedure TForm1.inicial;
var
  i: integer;
  pick: integer;
begin
randomize;
  for i:= 1 to numRows*numCols do
    pzlState^[i].BtnPtr.Visible:= FALSE;
  i:= 0;
  while i < numShuffles do
  begin
    pick:= random(numRows*numCols) + 1;
    if pzlState^[pick].Val <> 0 then
      if doClick(pick) then
        inc(i);
  end;
  for i:= 1 to numRows*numCols do
    if pzlState^[i].Val <> 0 then
      pzlState^[i].BtnPtr.Visible:= TRUE;
  shuffled:= TRUE;
  numMoves:= 0;
end;

procedure TForm1.N4Click(Sender: TObject);
begin
  close;
end;

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  doClick(1);
end;

procedure TForm1.FormCreate(Sender: TObject);

begin
  if FileExists('recordtime.txt') then begin
AssignFile(file315,'recordtime.txt');
Reset(file315);
Read(file315,time);
CloseFile(file315);
time1:=time[1]+time[2];
time2:=time[3]+time[4];
lbl11.Caption := time1 + ':' + time2;
end;
  if FileExists('recordhod.txt') then begin
AssignFile(file314,'recordhod.txt');
Reset(file314);
Read(file314,numMoves);
CloseFile(file314);
lbl8.Caption := IntToStr(numMoves);
numMoves:=0;
end;
  NewGame(4,4);
  lbl5.Caption:= '0';
end;

procedure TForm1.N6Click(Sender: TObject);
begin
    min:=0;
  sec:=0;
  mins:= '0' + IntToStr(min);
  secs:= '0' + IntToStr(sec);
  lbl2.Caption:= mins + ':' + secs;
  inicial;
   lbl5.Caption:= '0';
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
sec:=sec+1;
if sec = 60 then
begin
  min:=min+1;
  sec:=0;
end;
if sec<10 then secs:='0'+inttostr(sec);
if sec>9 then secs:=inttostr(sec);
if min<10 then mins:='0'+inttostr(min);
if min>9 then mins:=inttostr(min);
lbl2.Caption:= mins + ':' + secs;
end;

procedure TForm1.N3x31Click(Sender: TObject);
begin
  min:=0;
  sec:=0;
  mins:= '0' + IntToStr(min);
  secs:= '0' + IntToStr(sec);
  lbl2.Caption:= mins + ':' + secs;
destroyPuzzle;
  NewGame(3,3);
  lbl5.Caption:= '0';
  Timer1.Enabled:=True;
end;

procedure TForm1.N4x41Click(Sender: TObject);
begin
   min:=0;
  sec:=0;
  mins:= '0' + IntToStr(min);
  secs:= '0' + IntToStr(sec);
  lbl2.Caption:= mins + ':' + secs;
destroyPuzzle;
  NewGame(4,4);
  lbl5.Caption:= '0';
  Timer1.Enabled:=True;
end;

procedure TForm1.N6x61Click(Sender: TObject);
begin
   min:=0;
  sec:=0;
  mins:= '0' + IntToStr(min);
  secs:= '0' + IntToStr(sec);
  lbl2.Caption:= mins + ':' + secs;
destroyPuzzle;
  NewGame(6,6);
  lbl5.Caption:= '0';
  Timer1.Enabled:=True;
end;

procedure TForm1.N9x91Click(Sender: TObject);
begin
   min:=0;
  sec:=0;
  mins:= '0' + IntToStr(min);
  secs:= '0' + IntToStr(sec);
  lbl2.Caption:= mins + ':' + secs;
destroyPuzzle;
  NewGame(9,9);
  lbl5.Caption:= '0';
  Timer1.Enabled:=True;
end;

procedure TForm1.N5Click(Sender: TObject);
begin
 Form2.ShowModal;
end;

end.
