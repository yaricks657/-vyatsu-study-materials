unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls, DB, ADODB, Grids, DBGrids, StdCtrls, DBCtrls,
  jpeg, TeEngine, Series, TeeProcs, Chart, DbChart;

type
  TForm1 = class(TForm)
    pnl1: TPanel;
    lbl1: TLabel;
    edt1: TEdit;
    ds1: TDataSource;
    con1: TADOConnection;
    qry1: TADOQuery;
    dbgrd1: TDBGrid;
    img1: TImage;
    img2: TImage;
    img3: TImage;
    img4: TImage;
    img5: TImage;
    img6: TImage;
    img7: TImage;
    img8: TImage;
    img9: TImage;
    img10: TImage;
    img11: TImage;
    img12: TImage;
    img13: TImage;
    img14: TImage;
    img15: TImage;
    img16: TImage;
    img17: TImage;
    img18: TImage;
    img19: TImage;
    img20: TImage;
    img21: TImage;
    img22: TImage;
    img23: TImage;
    img24: TImage;
    img25: TImage;
    img26: TImage;
    img27: TImage;
    img28: TImage;
    img29: TImage;
    img30: TImage;
    img31: TImage;
    img32: TImage;
    img33: TImage;
    img34: TImage;
    img35: TImage;
    img36: TImage;
    img37: TImage;
    img38: TImage;
    img39: TImage;
    img40: TImage;
    img41: TImage;
    img42: TImage;
    img43: TImage;
    img44: TImage;
    img45: TImage;
    img46: TImage;
    img47: TImage;
    img48: TImage;
    img49: TImage;
    img50: TImage;
    img51: TImage;
    img52: TImage;
    img53: TImage;
    img54: TImage;
    img55: TImage;
    img56: TImage;
    img57: TImage;
    img58: TImage;
    img59: TImage;
    img60: TImage;
    img61: TImage;
    img62: TImage;
    img63: TImage;
    img64: TImage;
    rg4: TRadioGroup;
    mm1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    btn1: TButton;
    grp1: TGroupBox;
    mmo1: TMemo;
    procedure edt1Change(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Clippers(Column: TColumn);
    procedure LALakers1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure img1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure pnl1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure img2Click(Sender: TObject);
    procedure e(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure img9MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure img14MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure img19MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure img24MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure img29MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure img30MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure img25MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure img20MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure img15MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure img10MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure img5MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure img31MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure img26MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure img21MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure img16MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure img11MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure img6MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure img32MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure img27MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure img22MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure img17MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure img12MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure img7MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure img33MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure img28MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure img23MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure img18MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure img13MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure img8MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure img63MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure img64Click(Sender: TObject);
    procedure img46Click(Sender: TObject);
    procedure img38Click(Sender: TObject);
    procedure img37Click(Sender: TObject);
    procedure img36Click(Sender: TObject);
    procedure img35Click(Sender: TObject);
    procedure img34Click(Sender: TObject);
    procedure img4Click(Sender: TObject);
    procedure img39Click(Sender: TObject);
    procedure img40Click(Sender: TObject);
    procedure img41Click(Sender: TObject);
    procedure img42Click(Sender: TObject);
    procedure img43Click(Sender: TObject);
    procedure img44Click(Sender: TObject);
    procedure img45Click(Sender: TObject);
    procedure img47Click(Sender: TObject);
    procedure img48Click(Sender: TObject);
    procedure img49Click(Sender: TObject);
    procedure img50Click(Sender: TObject);
    procedure img51Click(Sender: TObject);
    procedure img52Click(Sender: TObject);
    procedure img53Click(Sender: TObject);
    procedure img54Click(Sender: TObject);
    procedure img55Click(Sender: TObject);
    procedure img56Click(Sender: TObject);
    procedure img57Click(Sender: TObject);
    procedure img58Click(Sender: TObject);
    procedure img59Click(Sender: TObject);
    procedure img60Click(Sender: TObject);
    procedure img61Click(Sender: TObject);
    procedure img62Click(Sender: TObject);
    procedure rg4Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);

  private
    Order:Boolean;
    Field:Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  name:string;
  puk:Integer;
  player,team:array of string;
  P,FG:array[0..1154] of real;
  i:Integer;
  f:Text;

implementation

uses Unit2;


{$R *.dfm}

procedure TForm1.edt1Change(Sender: TObject);
var help1,help2:string;
kek,kok:string;
begin
help1:='%'+Form1.edt1.Text+'%';
help2:=QuotedStr(help1);
//kek:='%'+name+'%';
//kok:=QuotedStr(kek);
with Form1.qry1 do
begin
  Close;
  SQL.Clear;
  SQL.Add('Select * from NBA where Player like'+help2+' order by Player');
  Open;
  end;
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
  Form1.dbgrd1.hide;
 Order:=True;
 Field:=0;
end;

procedure TForm1.Clippers(Column: TColumn);
var new_field:Integer;
begin
  begin
  new_field:= Column.Index;
  qry1.Close;
  qry1.SQL.Clear;
  if name='NBA' then
  qry1.SQL.Add('Select * from NBA ORDER BY ') else
  if name = 'R' then
  qry1.SQL.Add('Select * from NBA where Exp = '''+name+'''ORDER BY ') else
  if Name = 'West' then
  qry1.SQL.add('Select * FROM NBA WHERE Team = '''+'LAL'+''''+'OR Team = '''+'LAC'+''''
  +'OR Team = '''+'HOU'+''''+'OR Team = '''+'DAL'+''''+'OR Team = '''+'POR'
  +''''+'OR Team = '''+'MIN'+''''+'OR Team = '''+'OKC'+''''+'OR Team = '''+'UTA'
  +''''+'OR Team = '''+'DEN'+''''+'OR Team = '''+'MEM'+''''+'OR Team = '''+'NOP'
  +''''+'OR Team = '''+'SAS'+''''+'OR Team = '''+'GSW'+''''+'OR Team = '''+'PHX'+''''+'OR Team = '''+'SAC'''+'ORDER BY ') else
  if Name = 'East' then
  qry1.SQL.add('Select * FROM NBA WHERE Team = '''+'BOS'+''''+'OR Team = '''+'NYK'+''''
  +'OR Team = '''+'BRK'+''''+'OR Team = '''+'PHL'+''''+'OR Team = '''+'TOR'
  +''''+'OR Team = '''+'ATL'+''''+'OR Team = '''+'CHA'+''''+'OR Team = '''+'MIA'
  +''''+'OR Team = '''+'ORL'+''''+'OR Team = '''+'WAS'+''''+'OR Team = '''+'CHI'
  +''''+'OR Team = '''+'CLE'+''''+'OR Team = '''+'DET'+''''+'OR Team = '''+'IND'+''''+'OR Team = '''+'MIL'''+'ORDER BY ') else
  if Name = 'Atlantic' then
  qry1.SQL.add('Select * FROM NBA WHERE Team = '''+'BOS'+''''+'OR Team = '''+'NYK'+''''
  +'OR Team = '''+'BRK'+''''+'OR Team = '''+'PHL'+''''+'OR Team = '''+'TOR'''+'ORDER BY ') else
  if Name = 'Central' then
  qry1.SQL.add('Select * FROM NBA WHERE Team = '''+'IND'+''''+'OR Team = '''+'CLE'+''''
  +'OR Team = '''+'MIL'+''''+'OR Team = '''+'DET'+''''+'OR Team = '''+'CHI'''+'ORDER BY ') else
   if Name = 'Southeast' then
  qry1.SQL.add('Select * FROM NBA WHERE Team = '''+'ATL'+''''+'OR Team = '''+'ORL'+''''
  +'OR Team = '''+'MIA'+''''+'OR Team = '''+'WAS'+''''+'OR Team = '''+'CHA'''+'ORDER BY ') else
   if Name = 'Northwest' then
   qry1.SQL.add('Select * FROM NBA WHERE Team = '''+'UTA'+''''+'OR Team = '''+'MIN'+''''
  +'OR Team = '''+'DEN'+''''+'OR Team = '''+'POR'+''''+'OR Team = '''+'OKC'''+'ORDER BY ') else
   if Name = 'Pacific' then
  qry1.SQL.add('Select * FROM NBA WHERE Team = '''+'LAC'+''''+'OR Team = '''+'PHX'+''''
  +'OR Team = '''+'SAC'+''''+'OR Team = '''+'LAL'+''''+'OR Team = '''+'GSW'''+'ORDER BY ') else
   if Name = 'Southwest' then
  qry1.SQL.add('Select * FROM NBA WHERE Team = '''+'NOP'+''''+'OR Team = '''+'SAS'+''''
  +'OR Team = '''+'DAL'+''''+'OR Team = '''+'MEM'+''''+'OR Team = '''+'HOU'''+'ORDER BY ') else
  qry1.SQL.Add('Select * from NBA where Team = '''+name+'''ORDER BY ');
  if new_field = field then
  order := not order else
  begin
    field:=new_field;
    order :=true;
  end;
  case field of
  0: qry1.SQL.Add(' [Player] ');
  1: qry1.SQL.Add(' [Team] ');
  2: qry1.SQL.Add(' [Position] ');
  3: qry1.SQL.Add(' [Height] ');
  4: qry1.SQL.Add(' [Weight] ');
  5: qry1.SQL.Add(' [Exp] ');
  6: qry1.SQL.Add(' [GP] ');
  7: qry1.SQL.Add(' [MPG] ');
  8: qry1.SQL.Add(' [PPG] ');
  9: qry1.SQL.Add(' [RPG] ');
  10: qry1.SQL.Add(' [APG] ');
  11: qry1.SQL.Add(' [SPG] ');
  12: qry1.SQL.Add(' [BPG] ');
  //13: qry1.SQL.Add(' [Combined Statistics] ');
  13: qry1.SQL.Add(' [TOV] ');
  14: qry1.SQL.Add(' [PF] ');
  15: qry1.SQL.Add(' [ORB] ');
  16: qry1.SQL.Add(' [DRB] ');
  17: qry1.SQL.Add(' [FGM] ');
  18: qry1.SQL.Add(' [FGA] ');
  19: qry1.SQL.Add(' [FG%] ');
  20: qry1.SQL.Add(' [3PM] ');
  21: qry1.SQL.Add(' [3PA] ');
  22: qry1.SQL.Add(' [3P%] ');
  23: qry1.SQL.Add(' [FTM] ');
  24: qry1.SQL.Add(' [FTA] ');
  25: qry1.SQL.Add(' [FT%] ');
  end;
  if order then
  qry1.SQL.Add(' DESC');
  qry1.Open;
  end;
end;

procedure TForm1.LALakers1Click(Sender: TObject);
begin
  name:='LAL';
   qry1.SQL.Clear;
  qry1.SQL.add('Select * FROM NBA WHERE Team = '''+'LAL''');
  qry1.Active:=True;
end;

procedure TForm1.FormCreate(Sender: TObject);
var n:Integer;
begin
  grp1.Visible:=false;
img2.Visible:=False;
 Form1.dbgrd1.visible:=false;
Form1.pnl1.Hide;
name:='NBA';
form1.rg4.Visible:=false;
 qry1.Open;
    SetLength(player,qry1.RecordCount);
    qry1.First;
    while not qry1.Eof do
    begin
    for i:=0 to qry1.RecordCount-1 do
    begin
    player[i] := qry1.FieldByName('Player').AsString;
    qry1.Next;
    end;
    end;
     qry1.Open;
    SetLength(team,qry1.RecordCount);
    qry1.First;
    while not qry1.Eof do
    begin
    for i:=0 to qry1.RecordCount-1 do
    begin
    team[i] := qry1.FieldByName('Team').AsString;
    qry1.Next;
    end;
    end;
     AssignFile(f,'FG%.txt');
     Reset(f);
     n:=0;
     while not eof(f) do
 begin
  inc(n);
  read(f,FG[n]);
  FG[n]:=FG[n]*100;
 end;
closefile(f);
 AssignFile(f,'3P%.txt');
     Reset(f);
     n:=0;
     while not eof(f) do
 begin
  inc(n);
  read(f,P[n]);
  P[n]:=P[n]*100;
 end;
closefile(f);
end;

procedure TForm1.img1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 img2.Visible:=True;
end;

procedure TForm1.pnl1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 img2.Visible:=False;
end;

procedure TForm1.img2Click(Sender: TObject);
begin
 Form1.dbgrd1.hide;
Form1.pnl1.Hide;
form1.rg4.Visible:=false;
Form1.img63.Visible:=true;
Form1.img64.visible:=true;
puk:=0;
btn1.Visible:=True;
grp1.Visible:=false;
end;

procedure TForm1.e(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
Form1.img4.Visible:=True;
end;

procedure TForm1.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Form1.img2.Visible:=False;
Form1.img4.Visible:=false;
Form1.img34.Visible:=false;
Form1.img35.Visible:=false;
Form1.img36.Visible:=false;
Form1.img37.Visible:=false;
Form1.img38.Visible:=false;
Form1.img39.Visible:=false;
Form1.img40.Visible:=false;
Form1.img41.Visible:=false;
Form1.img42.Visible:=false;
Form1.img43.Visible:=false;
Form1.img44.Visible:=false;
Form1.img45.Visible:=false;
Form1.img46.Visible:=false;
Form1.img47.Visible:=false;
Form1.img48.Visible:=false;
Form1.img49.Visible:=false;
Form1.img50.Visible:=false;
Form1.img51.Visible:=false;
Form1.img52.Visible:=false;
Form1.img53.Visible:=false;
Form1.img54.Visible:=false;
Form1.img55.Visible:=false;
Form1.img56.Visible:=false;
Form1.img57.Visible:=false;
Form1.img58.Visible:=false;
Form1.img59.Visible:=false;
Form1.img60.Visible:=false;
Form1.img61.Visible:=false;
Form1.img62.Visible:=false;
if puk=0 then begin
Form1.img64.Visible:=false;
Form1.img63.Visible:=True;  end;
end;


procedure TForm1.img9MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
Form1.img34.Visible:=True;
end;

procedure TForm1.img14MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
Form1.img35.Visible:=True;
end;

procedure TForm1.img19MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
Form1.img36.Visible:=True;
end;

procedure TForm1.img24MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
Form1.img37.Visible:=True;
end;

procedure TForm1.img29MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
Form1.img38.Visible:=True;
end;

procedure TForm1.img30MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
Form1.img39.Visible:=True;
end;

procedure TForm1.img25MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
Form1.img40.Visible:=True;
end;

procedure TForm1.img20MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
Form1.img41.Visible:=True;
end;


procedure TForm1.img15MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
Form1.img42.Visible:=True;
end;

procedure TForm1.img10MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
Form1.img43.Visible:=True;
end;

procedure TForm1.img5MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
Form1.img44.Visible:=True;
end;

procedure TForm1.img31MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
Form1.img45.Visible:=True;
end;

procedure TForm1.img26MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 Form1.img46.Visible:=True;
end;

procedure TForm1.img21MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
Form1.img47.Visible:=True;
end;

procedure TForm1.img16MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
Form1.img48.Visible:=True;
end;

procedure TForm1.img11MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
Form1.img49.Visible:=True;
end;

procedure TForm1.img6MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
Form1.img50.Visible:=True;
end;

procedure TForm1.img32MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
Form1.img51.Visible:=True;
end;

procedure TForm1.img27MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
Form1.img52.Visible:=True;
end;

procedure TForm1.img22MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
Form1.img53.Visible:=True;
end;

procedure TForm1.img17MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
Form1.img54.Visible:=True;
end;

procedure TForm1.img12MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
Form1.img55.Visible:=True;
end;

procedure TForm1.img7MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
Form1.img56.Visible:=True;
end;

procedure TForm1.img33MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 Form1.img57.Visible:=True;
end;

procedure TForm1.img28MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
Form1.img58.Visible:=True;
end;

procedure TForm1.img23MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
Form1.img59.Visible:=True;
end;

procedure TForm1.img18MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
Form1.img60.Visible:=True;
end;

procedure TForm1.img13MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
Form1.img61.Visible:=True;
end;

procedure TForm1.img8MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
Form1.img62.Visible:=True;
end;

procedure TForm1.img63MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if puk=0 then
  begin
Form1.img64.Visible:=True;
Form1.img63.Visible:=false;
end;
end;

procedure TForm1.img64Click(Sender: TObject);
begin
  puk:=1;
  name:='NBA';
img2.Visible:=true;
Form1.pnl1.show;
   qry1.SQL.Clear;
  qry1.SQL.add('Select * from NBA ORDER BY PPG DESC');//('Select * FROM NBA WHERE Team = '''+'LAL''');
  qry1.Active:=True;
  Form1.dbgrd1.Show;
form1.rg4.Visible:=true;
Form1.img63.visible:=false;
Form1.img64.visible:=false;
btn1.Visible:=False;
Form1.mmo1.text:=('Национальная баскетбольная ассоциация - мужская профессиональная баскетбольная лига Северной Америки, в частности, США и Канады. Входит в четвёрку шлавных профессиональных спортивных лиг Северной Америки, наряду с НХЛ, МЛБ и НФЛ.');
grp1.Visible:=true;
end;

procedure TForm1.img46Click(Sender: TObject);
begin
  name:='LAL';
   qry1.SQL.Clear;
  qry1.SQL.add('Select * FROM NBA WHERE Team = '''+'LAL''');
  qry1.Active:=True;
  Form1.dbgrd1.Show;
  img2.Visible:=true;
Form1.pnl1.show;
 puk:=1;
  Form1.img63.visible:=false;
Form1.img64.visible:=false;
end;

procedure TForm1.img38Click(Sender: TObject);
begin
  name:='ATL';
   qry1.SQL.Clear;
  qry1.SQL.add('Select * FROM NBA WHERE Team = '''+'ATL''');
  qry1.Active:=True;
  Form1.dbgrd1.Show;
  img2.Visible:=true;
Form1.pnl1.show;
 puk:=1;
  Form1.img63.visible:=false;
Form1.img64.visible:=false;
end;

procedure TForm1.img37Click(Sender: TObject);
begin
  name:='BOS';
   qry1.SQL.Clear;
  qry1.SQL.add('Select * FROM NBA WHERE Team = '''+'BOS''');
  qry1.Active:=True;
  Form1.dbgrd1.Show;
  img2.Visible:=true;
Form1.pnl1.show;
 puk:=1;
  Form1.img63.visible:=false;
Form1.img64.visible:=false;
end;

procedure TForm1.img36Click(Sender: TObject);
begin
  name:='BRK';
   qry1.SQL.Clear;
  qry1.SQL.add('Select * FROM NBA WHERE Team = '''+'BRK''');
  qry1.Active:=True;
  Form1.dbgrd1.Show;
  img2.Visible:=true;
Form1.pnl1.show;
 puk:=1;
  Form1.img63.visible:=false;
Form1.img64.visible:=false;
end;

procedure TForm1.img35Click(Sender: TObject);
begin
  name:='CHA';
   qry1.SQL.Clear;
  qry1.SQL.add('Select * FROM NBA WHERE Team = '''+'CHA''');
  qry1.Active:=True;
  Form1.dbgrd1.Show;
  img2.Visible:=true;
Form1.pnl1.show;
 puk:=1;
  Form1.img63.visible:=false;
Form1.img64.visible:=false;
end;

procedure TForm1.img34Click(Sender: TObject);
begin
  name:='CHI';
   qry1.SQL.Clear;
  qry1.SQL.add('Select * FROM NBA WHERE Team = '''+'CHI''');
  qry1.Active:=True;
  Form1.dbgrd1.Show;
  img2.Visible:=true;
Form1.pnl1.show;
 puk:=1;
  Form1.img63.visible:=false;
Form1.img64.visible:=false;
end;

procedure TForm1.img4Click(Sender: TObject);
begin
  name:='CLE';
   qry1.SQL.Clear;
  qry1.SQL.add('Select * FROM NBA WHERE Team = '''+'CLE''');
  qry1.Active:=True;
  Form1.dbgrd1.Show;
  img2.Visible:=true;
Form1.pnl1.show;
 puk:=1;
  Form1.img63.visible:=false;
Form1.img64.visible:=false;
end;

procedure TForm1.img39Click(Sender: TObject);
begin
  name:='DAL';
   qry1.SQL.Clear;
  qry1.SQL.add('Select * FROM NBA WHERE Team = '''+'DAL''');
  qry1.Active:=True;
  Form1.dbgrd1.Show;
  img2.Visible:=true;
Form1.pnl1.show;
 puk:=1;
  Form1.img63.visible:=false;
Form1.img64.visible:=false;
end;

procedure TForm1.img40Click(Sender: TObject);
begin
  name:='DEN';
   qry1.SQL.Clear;
  qry1.SQL.add('Select * FROM NBA WHERE Team = '''+'DEN''');
  qry1.Active:=True;
  Form1.dbgrd1.Show;
  img2.Visible:=true;
Form1.pnl1.show;
 puk:=1;
  Form1.img63.visible:=false;
Form1.img64.visible:=false;
end;

procedure TForm1.img41Click(Sender: TObject);
begin
  name:='GSW';
   qry1.SQL.Clear;
  qry1.SQL.add('Select * FROM NBA WHERE Team = '''+'GSW''');
  qry1.Active:=True;
  Form1.dbgrd1.Show;
  img2.Visible:=true;
Form1.pnl1.show;
 puk:=1;
  Form1.img63.visible:=false;
Form1.img64.visible:=false;
end;

procedure TForm1.img42Click(Sender: TObject);
begin
  name:='DET';
   qry1.SQL.Clear;
  qry1.SQL.add('Select * FROM NBA WHERE Team = '''+'DET''');
  qry1.Active:=True;
  Form1.dbgrd1.Show;
  img2.Visible:=true;
Form1.pnl1.show;
 puk:=1;
  Form1.img63.visible:=false;
Form1.img64.visible:=false;
end;

procedure TForm1.img43Click(Sender: TObject);
begin
  name:='HOU';
   qry1.SQL.Clear;
  qry1.SQL.add('Select * FROM NBA WHERE Team = '''+'HOU''');
  qry1.Active:=True;
  Form1.dbgrd1.Show;
  img2.Visible:=true;
Form1.pnl1.show;
 puk:=1;
  Form1.img63.visible:=false;
Form1.img64.visible:=false;
end;

procedure TForm1.img44Click(Sender: TObject);
begin
  name:='IND';
   qry1.SQL.Clear;
  qry1.SQL.add('Select * FROM NBA WHERE Team = '''+'IND''');
  qry1.Active:=True;
  Form1.dbgrd1.Show;
  img2.Visible:=true;
Form1.pnl1.show;
 puk:=1;
  Form1.img63.visible:=false;
Form1.img64.visible:=false;
end;

procedure TForm1.img45Click(Sender: TObject);
begin
  name:='LAC';
   qry1.SQL.Clear;
  qry1.SQL.add('Select * FROM NBA WHERE Team = '''+'LAC''');
  qry1.Active:=True;
  Form1.dbgrd1.Show;
  img2.Visible:=true;
Form1.pnl1.show;
 puk:=1;
  Form1.img63.visible:=false;
Form1.img64.visible:=false;
end;

procedure TForm1.img47Click(Sender: TObject);
begin
  name:='MEM';
   qry1.SQL.Clear;
  qry1.SQL.add('Select * FROM NBA WHERE Team = '''+'MEM''');
  qry1.Active:=True;
  Form1.dbgrd1.Show;
  img2.Visible:=true;
Form1.pnl1.show;
 puk:=1;
  Form1.img63.visible:=false;
Form1.img64.visible:=false;
end;

procedure TForm1.img48Click(Sender: TObject);
begin
  name:='MIA';
   qry1.SQL.Clear;
  qry1.SQL.add('Select * FROM NBA WHERE Team = '''+'MIA''');
  qry1.Active:=True;
  Form1.dbgrd1.Show;
  img2.Visible:=true;
Form1.pnl1.show;
 puk:=1;
  Form1.img63.visible:=false;
Form1.img64.visible:=false;
end;

procedure TForm1.img49Click(Sender: TObject);
begin
  name:='MIL';
   qry1.SQL.Clear;
  qry1.SQL.add('Select * FROM NBA WHERE Team = '''+'MIL''');
  qry1.Active:=True;
  Form1.dbgrd1.Show;
  img2.Visible:=true;
Form1.pnl1.show;
 puk:=1;
  Form1.img63.visible:=false;
Form1.img64.visible:=false;
end;

procedure TForm1.img50Click(Sender: TObject);
begin
  name:='MIN';
   qry1.SQL.Clear;
  qry1.SQL.add('Select * FROM NBA WHERE Team = '''+'MIN''');
  qry1.Active:=True;
  Form1.dbgrd1.Show;
  img2.Visible:=true;
Form1.pnl1.show;
 puk:=1;
  Form1.img63.visible:=false;
Form1.img64.visible:=false;
end;

procedure TForm1.img51Click(Sender: TObject);
begin
  name:='NOP';
   qry1.SQL.Clear;
  qry1.SQL.add('Select * FROM NBA WHERE Team = '''+'NOP''');
  qry1.Active:=True;
  Form1.dbgrd1.Show;
  img2.Visible:=true;
Form1.pnl1.show;
 puk:=1;
  Form1.img63.visible:=false;
Form1.img64.visible:=false;
end;

procedure TForm1.img52Click(Sender: TObject);
begin
  name:='NYK';
   qry1.SQL.Clear;
  qry1.SQL.add('Select * FROM NBA WHERE Team = '''+'NYK''');
  qry1.Active:=True;
  Form1.dbgrd1.Show;
  img2.Visible:=true;
Form1.pnl1.show;
 puk:=1;
  Form1.img63.visible:=false;
Form1.img64.visible:=false;
end;

procedure TForm1.img53Click(Sender: TObject);
begin
  name:='OKC';
   qry1.SQL.Clear;
  qry1.SQL.add('Select * FROM NBA WHERE Team = '''+'OKC''');
  qry1.Active:=True;
  Form1.dbgrd1.Show;
  img2.Visible:=true;
Form1.pnl1.show;
 puk:=1;
  Form1.img63.visible:=false;
Form1.img64.visible:=false;
end;

procedure TForm1.img54Click(Sender: TObject);
begin
  name:='ORL';
   qry1.SQL.Clear;
  qry1.SQL.add('Select * FROM NBA WHERE Team = '''+'ORL''');
  qry1.Active:=True;
  Form1.dbgrd1.Show;
  img2.Visible:=true;
Form1.pnl1.show;
 puk:=1;
  Form1.img63.visible:=false;
Form1.img64.visible:=false;
end;

procedure TForm1.img55Click(Sender: TObject);
begin
  name:='PHI';
   qry1.SQL.Clear;
  qry1.SQL.add('Select * FROM NBA WHERE Team = '''+'PHI''');
  qry1.Active:=True;
  Form1.dbgrd1.Show;
  img2.Visible:=true;
Form1.pnl1.show;
 puk:=1;
  Form1.img63.visible:=false;
Form1.img64.visible:=false;
end;

procedure TForm1.img56Click(Sender: TObject);
begin
  name:='PHX';
   qry1.SQL.Clear;
  qry1.SQL.add('Select * FROM NBA WHERE Team = '''+'PHX''');
  qry1.Active:=True;
  Form1.dbgrd1.Show;
  img2.Visible:=true;
Form1.pnl1.show;
 puk:=1;
  Form1.img63.visible:=false;
Form1.img64.visible:=false;
end;

procedure TForm1.img57Click(Sender: TObject);
begin
  name:='POR';
   qry1.SQL.Clear;
  qry1.SQL.add('Select * FROM NBA WHERE Team = '''+'POR''');
  qry1.Active:=True;
  Form1.dbgrd1.Show;
  img2.Visible:=true;
Form1.pnl1.show;
 puk:=1;
  Form1.img63.visible:=false;
Form1.img64.visible:=false;
end;

procedure TForm1.img58Click(Sender: TObject);
begin
  name:='SAC';
   qry1.SQL.Clear;
  qry1.SQL.add('Select * FROM NBA WHERE Team = '''+'SAC''');
  qry1.Active:=True;
  Form1.dbgrd1.Show;
  img2.Visible:=true;
Form1.pnl1.show;
 puk:=1;
  Form1.img63.visible:=false;
Form1.img64.visible:=false;
end;

procedure TForm1.img59Click(Sender: TObject);
begin
  name:='SAS';
   qry1.SQL.Clear;
  qry1.SQL.add('Select * FROM NBA WHERE Team = '''+'SAS''');
  qry1.Active:=True;
  Form1.dbgrd1.Show;
  img2.Visible:=true;
Form1.pnl1.show;
 puk:=1;
  Form1.img63.visible:=false;
Form1.img64.visible:=false;
end;

procedure TForm1.img60Click(Sender: TObject);
begin
  name:='TOR';
   qry1.SQL.Clear;
  qry1.SQL.add('Select * FROM NBA WHERE Team = '''+'TOR''');
  qry1.Active:=True;
  Form1.dbgrd1.Show;
  img2.Visible:=true;
Form1.pnl1.show;
 puk:=1;
  Form1.img63.visible:=false;
Form1.img64.visible:=false;
end;

procedure TForm1.img61Click(Sender: TObject);
begin
  name:='UTA';
   qry1.SQL.Clear;
  qry1.SQL.add('Select * FROM NBA WHERE Team = '''+'UTA''');
  qry1.Active:=True;
  Form1.dbgrd1.Show;
  img2.Visible:=true;
Form1.pnl1.show;
 puk:=1;
  Form1.img63.visible:=false;
Form1.img64.visible:=false;
end;

procedure TForm1.img62Click(Sender: TObject);
begin
  name:='WAS';
   qry1.SQL.Clear;
  qry1.SQL.add('Select * FROM NBA WHERE Team = '''+'WAS''');
  qry1.Active:=True;
  Form1.dbgrd1.Show;
  img2.Visible:=true;
Form1.pnl1.show;
 puk:=1;
  Form1.img63.visible:=false;
Form1.img64.visible:=false;
end;

procedure TForm1.rg4Click(Sender: TObject);
begin
Case rg4.ItemIndex of
0:begin
name:='NBA';
qry1.SQL.Clear;
  qry1.SQL.add('Select * from NBA ORDER BY PPG DESC');
  qry1.Active:=True;
end;
1: begin
name:='R';
qry1.SQL.Clear;
  qry1.SQL.add('Select * FROM NBA WHERE Exp = '''+ 'R''');
  qry1.Active:=True;
end;
2: begin
  name:='West';
qry1.SQL.Clear;
  qry1.SQL.add('Select * FROM NBA WHERE Team = '''+'LAL'+''''+'OR Team = '''+'LAC'+''''
  +'OR Team = '''+'HOU'+''''+'OR Team = '''+'DAL'+''''+'OR Team = '''+'POR'
  +''''+'OR Team = '''+'MIN'+''''+'OR Team = '''+'OKC'+''''+'OR Team = '''+'UTA'
  +''''+'OR Team = '''+'DEN'+''''+'OR Team = '''+'MEM'+''''+'OR Team = '''+'NOP'
  +''''+'OR Team = '''+'SAS'+''''+'OR Team = '''+'GSW'+''''+'OR Team = '''+'PHX'+''''+'OR Team = '''+'SAC''');
  qry1.Active:=True;
end;
3:begin
  name:='East';
 qry1.SQL.Clear;
  qry1.SQL.add('Select * FROM NBA WHERE Team = '''+'BOS'+''''+'OR Team = '''+'NYK'+''''
  +'OR Team = '''+'BRK'+''''+'OR Team = '''+'PHL'+''''+'OR Team = '''+'TOR'
  +''''+'OR Team = '''+'ATL'+''''+'OR Team = '''+'CHA'+''''+'OR Team = '''+'MIA'
  +''''+'OR Team = '''+'ORL'+''''+'OR Team = '''+'WAS'+''''+'OR Team = '''+'CHI'
  +''''+'OR Team = '''+'CLE'+''''+'OR Team = '''+'DET'+''''+'OR Team = '''+'IND'+''''+'OR Team = '''+'MIL''');
  qry1.Active:=True;
end;
4:begin
  name:='Atlantic';
 qry1.SQL.Clear;
  qry1.SQL.add('Select * FROM NBA WHERE Team = '''+'BOS'+''''+'OR Team = '''+'NYK'+''''
  +'OR Team = '''+'BRK'+''''+'OR Team = '''+'PHL'+''''+'OR Team = '''+'TOR''');
  qry1.Active:=True;
end;
5:begin
  name:='Central';
 qry1.SQL.Clear;
  qry1.SQL.add('Select * FROM NBA WHERE Team = '''+'IND'+''''+'OR Team = '''+'CLE'+''''
  +'OR Team = '''+'MIL'+''''+'OR Team = '''+'DET'+''''+'OR Team = '''+'CHI''');
  qry1.Active:=True;
end;
6:begin
  name:='Southeast';
 qry1.SQL.Clear;
  qry1.SQL.add('Select * FROM NBA WHERE Team = '''+'ATL'+''''+'OR Team = '''+'ORL'+''''
  +'OR Team = '''+'MIA'+''''+'OR Team = '''+'WAS'+''''+'OR Team = '''+'CHA''');
  qry1.Active:=True;
end;
7:begin
  name:='Northwest';
 qry1.SQL.Clear;
  qry1.SQL.add('Select * FROM NBA WHERE Team = '''+'UTA'+''''+'OR Team = '''+'MIN'+''''
  +'OR Team = '''+'DEN'+''''+'OR Team = '''+'POR'+''''+'OR Team = '''+'OKC''');
  qry1.Active:=True;
end;
8:begin
  name:='Pacific';
 qry1.SQL.Clear;
  qry1.SQL.add('Select * FROM NBA WHERE Team = '''+'LAC'+''''+'OR Team = '''+'PHX'+''''
  +'OR Team = '''+'SAC'+''''+'OR Team = '''+'LAL'+''''+'OR Team = '''+'GSW''');
  qry1.Active:=True;
end;
9:begin
  name:='Southwest';
 qry1.SQL.Clear;
  qry1.SQL.add('Select * FROM NBA WHERE Team = '''+'NOP'+''''+'OR Team = '''+'SAS'+''''
  +'OR Team = '''+'DAL'+''''+'OR Team = '''+'MEM'+''''+'OR Team = '''+'HOU''');
  qry1.Active:=True;
end;
end;
end;




procedure TForm1.N1Click(Sender: TObject);
begin
ShowMessage('Player = Игрок'+ #13 + #10 +
'Team = Команда игрока'+ #13 + #10 +
'Position = Позиция игрока'+ #13 + #10 +
'Height = Рост'+ #13 + #10 +
'Weight = Вес'+ #13 + #10 +
'Exp = Опыт игры'+ #13 + #10 +
'GP = Игр сыграно'+ #13 + #10 +
'MPG = Среднее количество минут за матч'+ #13 + #10 +
'PPG = Среднее количество очков за матч'+ #13 + #10 +
'RPG = Среднее количество подборов за матч'+ #13 + #10 +
'APG = Среднее количество передач за матч'+ #13 + #10 +
'SPG = Среднее количество перехватов за матч'+ #13 + #10 +
'BPG = Среднее количество блокшотов за игру'+ #13 + #10 +
'TOV = Среднее количество потерь за игру'+ #13 + #10 +
'PF = Среднее количество фолов'+ #13 + #10 +
'ORB = Среднее количество подборов в атаке за матч'+ #13 + #10 +
'DRB = Среднее количество подборов в защите за матч'+ #13 + #10 +
'FGM = Среднее количество бросков за матч'+ #13 + #10 +
'FGA = Среднее количество попыток броска за матч'+ #13 + #10 +
'FG% = Средний процент попадания с игры'+ #13 + #10 +
'3PM = Среднее количество бросков из-за дуги за матч'+ #13 + #10 +
'3PA = Среднее количество попыток броска из-за дуги за матч '+ #13 + #10 +
'3P% = Средний процент попадания из-за дуги за матч'+ #13 + #10 +
'FTM = Среднее количество попаданий со штрафной линии за матч'+ #13 + #10 +
'FTA = Среднее количество попыток со штрафной за матч'+ #13 + #10 +
'FT% = Средний процент попадания со штрафной линии'+ #13 + #10 );
end;

procedure TForm1.N3Click(Sender: TObject);
begin
ShowMessage('Данная база данных игроков NBA с их подробной статистикой.'+ #13 + #10 +
'Благодаря ей можно проанализировать большинство аспектов'+ #13 + #10 +
'игры какого-либо игрока. В базе отображены такие важные показатели,'+ #13 + #10 +
'как очки, подборы, асисты, стилы, блокшоты и другое.'+ #13 + #10 +
'Таким образом, при помощи базы данных можно проанализировать' + #13 + #10 +
'практически все стороны игры того или иного игрока.'+ #13 + #10 +
'Цифры игроков говорят о многом и дают представление об их слабых и сильных сторонах.');
end;

procedure TForm1.N4Click(Sender: TObject);
begin
ShowMessage('Проект разработал студент ИВТб-2301-01-00 Кудяшев Ярослав');
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
Form2.brsrsSeries1.Clear;
Form2.brsrsSeries2.Clear;
for i:=0 to 500 do //length(team) do
begin
if team[i] = name then
Form2.brsrsSeries1.Add(FG[i+1],Player[i],GetDefaultColor(1));
end;
for i:=0 to 500 do //length(team) do
begin
if team[i] = name then
Form2.brsrsSeries2.Add(P[i+1],Player[i],GetDefaultColor(1));
end;
Form2.Show;
end;

end.
