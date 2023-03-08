unit fif;

interface

uses
  Windows, Messages, SysUtils, Variants,
  Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Menus, ImgList,
  ComCtrls, mmSystem, Buttons;

type  { ������ ���������� � ����� }
    APlace = record
    Val: integer;     // ��������
    btnPtr: TPanel;  // ����� � ���� ������
    end;
    {��������� ������ ����� }
    APlaceArray = array[1..1] of APlace;

type
  TForm1 = class(TForm)
    {������ ��� �����}
    Panel1: TPanel;
    {������ ��� ����� ����� , ��������� �������}
    Panel2: TPanel;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N7: TMenuItem;
    N2: TMenuItem;
    N41: TMenuItem;
    N61: TMenuItem;
    N91: TMenuItem;
    Help1: TMenuItem;
    N6: TMenuItem;
    N8: TMenuItem;
    ImageList1: TImageList;
    N9: TMenuItem;
    {������ ������� ����}
    procedure Button1Click(Sender: TObject);
    {������� �����������}
    procedure N4Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure N7Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure N41Click(Sender: TObject);
    procedure N61Click(Sender: TObject);
    procedure N91Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure Help1Click(Sender: TObject);
  
  private
    { Private declarations }
  public
    { Public declarations }
   { �������� ����������� }
   procedure makePuzzle;
   { ������� �� ����� }
   function doClick(btnNum: integer): boolean;
   { �������� ���������� ���� }
   procedure checkCompleted;
   { ������ ����� }
   procedure doSwitch(i: integer; j: integer);
   { �������� ����������� }
   procedure destroyPuzzle;
   {������� �� ����� � 1 �� ...}
   procedure Button4Click(Sender: TObject);
   {������������ �����}
   procedure inicial;
   procedure NewGame (Rows:Integer; Cols:Integer);
  end;

var
  Form1: TForm1;
  shuffled: boolean;         { ������, ���� ����������� ���������� }
  numRows, numCols: integer; { ������� ����������� }
  numShuffles: integer;      { ����� ����� ��� ������������� }
  numMoves: integer;         { ����� ����������� ����� }
  { ��������� �� �����.������ ��������� APlaceArray }
  pzlState : ^APlaceArray;

implementation

uses about, Help;

{$R *.dfm}

procedure TForm1.NewGame (Rows:Integer; Cols:Integer);
begin
  numRows:= Rows;  { ������ ��-��������� }
  numCols:= Cols;
  numShuffles:= 160; { ����� ����� ��� ������������� ����������� }
  numMoves:= 0; {����� ����� , ��������� �������}
  makePuzzle;  { ������� ����������� }
  inicial;    {������������ �����}
end;

procedure TForm1.makePuzzle;

var
  panelWidth, panelHeight: integer;
  btnWidth, btnHeight: integer;
  btnLeft, btnTop: integer;
  borderWidth: integer;
  i,j,k: integer;
begin
  { ������� ������ ����� }
  Form1.Height:= 400;
  Form1.Width:= 304;
  panelWidth:= Panel1.Width ;
  panelHeight:= Panel1.Height ;
  borderWidth := 1;

  { ������� ������ ��� ����������� }
  GetMem(pzlState, numRows*numCols*sizeof(APlace));
  { �������� ������ ������ ����� }
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
    { ���������� �������������� ������ }
    {btnLeft:= (((i-1) mod numCols)+1) * (btnWidth+2)-45;  }
    {btnTop:= (((i-1) div numCols)+1) * (btnHeight+2)-10;  }
    {btnLeft:= (10 + ((i-1) mod numCols) * btnWidth)-1;
    btnTop:= (40 + ((i-1) div numCols) * btnHeight)+5; }
    btnLeft:= btnLeft + btnWidth + BorderWidth*2;

    { ������, ��������, � ��������� ������ }
    pzlState^[k].BtnPtr:= TPanel.Create(Self);
    with pzlState^[k].BtnPtr do
    begin
      Parent:= Self;
      SetBounds(btnLeft, btnTop, btnWidth, btnHeight);
      Font.Height := -18;
      Font.Name:= 'Times New Roman';
      Caption:= inttoStr(k);
      onClick:= Button4Click;  // ������������ ����������
    end;

    //pzlState^[i].Pos:= i;
    pzlState^[k].Val:= k; { ��������� �������� ����� �� ��� ������� }
  end;
 end;
  { ������ ����� - ��������=0, �������� }
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
  { �������, ����� ������ ���� ������ }
  for i:= 1 to numRows*numCols do
    if Sender = pzlState^[i].btnPtr then
      doClick(i);  { ���������� �����, ���� �������� }
  if shuffled then
    checkCompleted; { ������ �� ����������� ����������� }
end;

function TForm1.doClick(btnNum: integer): boolean;
begin
  { move the button (this is accomplished by swapping 'Val')
    if the empty space is adjacent }
  doClick:= FALSE;
  { ������� �����, ���� �������� }
  if (btnNum > numCols) and
    (pzlState^[btnNum-numCols].Val = 0) then
    begin
    doSwitch(btnNum, btnNum-numCols); { ������� ����� }
    doClick:= TRUE; { ������������ ��������� }
   exit;
    end;
  { ������� �����, ���� �������� }
  if ((btnNum mod numCols) <> 1) and
      (pzlState^[btnNum-1].Val = 0) then
      begin
      doSwitch(btnNum, btnNum-1);  { ������� ����� }
      doClick:= TRUE; { ������������ ��������� }
      exit;
      end;
  { ������� ������, ���� �������� }
  if ((btnNum mod numCols) <> 0) and
      (pzlState^[btnNum+1].Val = 0) then
      begin
      doSwitch(btnNum, btnNum+1); { ������� ������ }
      doClick:= TRUE; { ������������ ��������� }
     exit;
      end;
  { ������� ����, ���� �������� }
  if (btnNum <= (numRows-1)*numCols) and
     (pzlState^[btnNum+numCols].Val = 0) then
     begin
     doSwitch(btnNum, btnNum+numCols); { ������� ���� }
     doClick:= TRUE; { ������������ ��������� }
     exit;
     end;
end;

procedure TForm1.doSwitch(i: integer; j: integer);
var
  tmp: integer;
  isVisible: boolean;
begin
  tmp:= pzlState^[i].Val;
  pzlState^[i].Val:= 0;      { ����� ���������� ������ }
  isVisible:= pzlState^[i].btnPtr.Visible;
  pzlState^[i].btnPtr.Visible:= FALSE;
  pzlState^[j].Val:= tmp;    { ��������� ����� �� ����� ����� }
  pzlState^[j].btnPtr.Visible:= isVisible;
  pzlState^[j].btnPtr.Caption:= inttoStr(tmp);
  inc(numMoves);
  Panel2.Caption:='����� �����: ' + inttostr(numMoves);
end;

{������ �������}
procedure TForm1.Button1Click(Sender: TObject);
begin
  inicial;
end;

{ ��������� ��������������� ���������, ���� ������� ��������� ����������� }
procedure TForm1.checkCompleted;
var
  i: integer;
begin
  { ������� ��������� ��������� ����������� (Val = ����� �����) }
  for i:= 1 to numRows*numCols-1 do
    if pzlState^[i].Val <> i then
      exit;
  { ��������� ��������������� ���������, ���� ������� ��������� ����������� }
  
  Application.MessageBox('� ����������! �� ������� �����������.', '  ��������', 0);
  shuffled:= FALSE;
end;

procedure TForm1.inicial;
var
  i: integer;
  pick: integer;
begin
randomize;
  { ��� ������ - ��������� }
  for i:= 1 to numRows*numCols do
    pzlState^[i].BtnPtr.Visible:= FALSE;
  i:= 0;
  { ����������� ��������� ����� ��� }
  while i < numShuffles do
  begin
    { ���������� ��������� �����.
      ���� ����������, ���������� ������� }
    pick:= random(numRows*numCols) + 1;
    if pzlState^[pick].Val <> 0 then
      if doClick(pick) then
        inc(i);
  end;
  { �������������� ��������� ����� }
  for i:= 1 to numRows*numCols do
    if pzlState^[i].Val <> 0 then
      pzlState^[i].BtnPtr.Visible:= TRUE;
  shuffled:= TRUE;
  numMoves:= 0;
  Panel2.Caption:='����� �����: '+ inttostr(numMoves);
end;

{������� �����������}

procedure TForm1.N4Click(Sender: TObject);
begin
  close;
end;

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  doClick(1);
end;

procedure TForm1.N7Click(Sender: TObject);
begin
  Form2.ShowModal;
end;

procedure TForm1.FormCreate(Sender: TObject);

begin
  NewGame(4,4);
end;

procedure TForm1.N41Click(Sender: TObject);
begin
  destroyPuzzle;
  NewGame (4,4);
end;

procedure TForm1.N61Click(Sender: TObject);
begin
  destroyPuzzle;
  NewGame(6,6);
end;

procedure TForm1.N91Click(Sender: TObject);
begin
  destroyPuzzle;
  NewGame(9,9);
end;

procedure TForm1.N6Click(Sender: TObject);
begin
  inicial;
end;

procedure TForm1.Help1Click(Sender: TObject);
begin
  Form3.ShowModal;
end;


end.
