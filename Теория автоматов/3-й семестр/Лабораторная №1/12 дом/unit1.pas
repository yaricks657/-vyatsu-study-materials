unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, Menus,
  StdCtrls, ComCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Image1: TImage;
    Image10: TImage;
    Image11: TImage;
    Image12: TImage;
    Image13: TImage;
    Image14: TImage;
    Image15: TImage;
    Image16: TImage;
    Image17: TImage;
    Image18: TImage;
    Image19: TImage;
    Image2: TImage;
    Image20: TImage;
    Image21: TImage;
    Image22: TImage;
    Image23: TImage;
    Image24: TImage;
    Image25: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    Panel1: TPanel;
    SaveDialog1: TSaveDialog;
    Shape1: TShape;
    Shape10: TShape;
    Shape11: TShape;
    Shape12: TShape;
    Shape13: TShape;
    Shape14: TShape;
    Shape15: TShape;
    Shape16: TShape;
    Shape17: TShape;
    Shape18: TShape;
    Shape2: TShape;
    Shape19: TShape;
    Shape101: TShape;
    Shape20: TShape;
    Shape21: TShape;
    Shape22: TShape;
    Shape23: TShape;
    Shape24: TShape;
    Shape25: TShape;
    Shape26: TShape;
    Shape27: TShape;
    Shape3: TShape;
    Shape28: TShape;
    Shape29: TShape;
    Shape102: TShape;
    Shape30: TShape;
    Shape31: TShape;
    Shape32: TShape;
    Shape33: TShape;
    Shape34: TShape;
    Shape35: TShape;
    Shape36: TShape;
    Shape4: TShape;
    Shape37: TShape;
    Shape38: TShape;
    Shape39: TShape;
    Shape103: TShape;
    Shape40: TShape;
    Shape41: TShape;
    Shape42: TShape;
    Shape43: TShape;
    Shape44: TShape;
    Shape5: TShape;
    Shape46: TShape;
    Shape47: TShape;
    Shape48: TShape;
    Shape49: TShape;
    Shape104: TShape;
    Shape50: TShape;
    Shape51: TShape;
    Shape52: TShape;
    Shape53: TShape;
    Shape6: TShape;
    Shape55: TShape;
    Shape56: TShape;
    Shape57: TShape;
    Shape58: TShape;
    Shape59: TShape;
    Shape105: TShape;
    Shape60: TShape;
    Shape61: TShape;
    Shape62: TShape;
    Shape63: TShape;
    Shape64: TShape;
    Shape65: TShape;
    Shape66: TShape;
    Shape7: TShape;
    Shape8: TShape;
    Shape9: TShape;
    Timer1: TTimer;
    Timer2: TTimer;
    Timer3: TTimer;
    Timer4: TTimer;
    TrackBar1: TTrackBar;
    TrackBar2: TTrackBar;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Image22Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure MenuItem8Click(Sender: TObject);
    procedure MenuItem9Click(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
    procedure Shape1ChangeBounds(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure Timer4Timer(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure TrackBar2Change(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation
uses unit2,unit3,unit4;
const n=6;
  ColorStart = clSkyBlue;
ColorEnd = clBlack;
var i,j,gg,aaaa,puk,kkera:boolean;
  pogoda,kok,kkokk,aq:integer;
  s:string;
  f:text;
  biba,boba:boolean;
  a,aa,aaa,b,nn,x,bb:integer;
  m: array [0..5] of integer;
 mm: array [1..n] of integer;
 mmm: array [1..n] of integer;
 ss: array [1..6] of int32;
 kekw: array [1..n] of integer;
 r,g,h:integer;
dr,dg,db:real;
bob: array of integer;
bib: array of integer;

{$R *.lfm}

{ TForm1 }



procedure vverh(a:integer);
var i:integer;
begin
   if a=0 then begin
   Form1.Shape1.Top:= Form1.Shape1.Top-10;
   Form1.Shape101.Top:= Form1.Shape101.Top-10;
   Form1.Shape102.Top:= Form1.Shape102.Top-10;
   Form1.Shape103.Top:= Form1.Shape103.Top-10;
   Form1.Shape104.Top:= Form1.Shape104.Top-10;
   Form1.Shape105.Top:= Form1.Shape105.Top-10;
   Form1.Shape7.Top:= Form1.Shape7.Top-10;
   Form1.Shape8.Top:= Form1.Shape8.Top-10;
   Form1.Shape9.Top:= Form1.Shape9.Top-10;
   Form1.Shape10.Height:=Form1.Shape10.Height-10;
   Form1.Shape11.Height:=Form1.Shape11.Height-10;
   end else
   if a=1 then begin
   Form1.Shape12.Top:= Form1.Shape12.Top-10;
   Form1.Shape13.Top:= Form1.Shape13.Top-10;
   Form1.Shape14.Top:= Form1.Shape14.Top-10;
   Form1.Shape15.Top:= Form1.Shape15.Top-10;
   Form1.Shape16.Top:= Form1.Shape16.Top-10;
   Form1.Shape17.Top:= Form1.Shape17.Top-10;
   Form1.Shape2.Top:= Form1.Shape2.Top-10;
   Form1.Shape19.Top:= Form1.Shape19.Top-10;
   Form1.Shape20.Top:= Form1.Shape20.Top-10;
   Form1.Shape57.Height:=Form1.Shape57.Height-10;
   Form1.Shape58.Height:=Form1.Shape58.Height-10;
   end else
      if a=2 then begin
   Form1.Shape21.Top:= Form1.Shape21.Top-10;
   Form1.Shape22.Top:= Form1.Shape22.Top-10;
   Form1.Shape23.Top:= Form1.Shape23.Top-10;
   Form1.Shape24.Top:= Form1.Shape24.Top-10;
   Form1.Shape25.Top:= Form1.Shape25.Top-10;
   Form1.Shape26.Top:= Form1.Shape26.Top-10;
   Form1.Shape3.Top:= Form1.Shape3.Top-10;
   Form1.Shape28.Top:= Form1.Shape28.Top-10;
   Form1.Shape29.Top:= Form1.Shape29.Top-10;
   Form1.Shape59.Height:=Form1.Shape59.Height-10;
   Form1.Shape60.Height:=Form1.Shape60.Height-10;
   end else
      if a=3 then begin
   Form1.Shape30.Top:= Form1.Shape30.Top-10;
   Form1.Shape31.Top:= Form1.Shape31.Top-10;
   Form1.Shape32.Top:= Form1.Shape32.Top-10;
   Form1.Shape33.Top:= Form1.Shape33.Top-10;
   Form1.Shape34.Top:= Form1.Shape34.Top-10;
   Form1.Shape35.Top:= Form1.Shape35.Top-10;
   Form1.Shape4.Top:= Form1.Shape4.Top-10;
   Form1.Shape37.Top:= Form1.Shape37.Top-10;
   Form1.Shape38.Top:= Form1.Shape38.Top-10;
   Form1.Shape61.Height:=Form1.Shape61.Height-10;
   Form1.Shape62.Height:=Form1.Shape62.Height-10;
   end else
      if a=4 then begin
   Form1.Shape39.Top:= Form1.Shape39.Top-10;
   Form1.Shape40.Top:= Form1.Shape40.Top-10;
   Form1.Shape41.Top:= Form1.Shape41.Top-10;
   Form1.Shape42.Top:= Form1.Shape42.Top-10;
   Form1.Shape43.Top:= Form1.Shape43.Top-10;
   Form1.Shape44.Top:= Form1.Shape44.Top-10;
   Form1.Shape5.Top:= Form1.Shape5.Top-10;
   Form1.Shape46.Top:= Form1.Shape46.Top-10;
   Form1.Shape47.Top:= Form1.Shape47.Top-10;
   Form1.Shape63.Height:=Form1.Shape63.Height-10;
   Form1.Shape64.Height:=Form1.Shape64.Height-10;
   end else
      if a=5 then begin
   Form1.Shape48.Top:= Form1.Shape48.Top-10;
   Form1.Shape49.Top:= Form1.Shape49.Top-10;
   Form1.Shape50.Top:= Form1.Shape50.Top-10;
   Form1.Shape51.Top:= Form1.Shape51.Top-10;
   Form1.Shape52.Top:= Form1.Shape52.Top-10;
   Form1.Shape53.Top:= Form1.Shape53.Top-10;
   Form1.Shape6.Top:= Form1.Shape6.Top-10;
   Form1.Shape55.Top:= Form1.Shape55.Top-10;
   Form1.Shape56.Top:= Form1.Shape56.Top-10;
   Form1.Shape65.Height:=Form1.Shape65.Height-10;
   Form1.Shape66.Height:=Form1.Shape66.Height-10;
   end;

end;

{procedure golub(aaa:integer);
var xx,yy,xxx,yyy,coordx,coordy:integer;
begin
  timer2.Enabled:=false;
  timer4.Enabled:=true;
  xx:=kekw[aaa];
  yy:=m[aaa];
  coordx:=100;
  coordy:=100;
  Image24.Left:=(xx+Image24.Left)div coordx;
  Image24.Top:=(yy+Image24.Top)div coordy;
  coordx:=coordx-1;
  coordy:=coordy-1;
  if m[aaa]=Image24.left then
  begin
  timer4.Enabled:=false;
  Timer2.Enabled:=true;
  end;
  end;
end;    }

procedure lamp(aaa:integer);
begin
      if aaa=0 then begin
   Form1.Shape1.Top:= Form1.Shape1.Top+10;
   Form1.Shape101.Top:= Form1.Shape101.Top+10;
   Form1.Shape102.Top:= Form1.Shape102.Top+10;
   Form1.Shape103.Top:= Form1.Shape103.Top+10;
   Form1.Shape104.Top:= Form1.Shape104.Top+10;
   Form1.Shape105.Top:= Form1.Shape105.Top+10;
   Form1.Shape7.Top:= Form1.Shape7.Top+10;
   Form1.Shape8.Top:= Form1.Shape8.Top+10;
   Form1.Shape9.Top:= Form1.Shape9.Top+10;
   Form1.Shape10.Height:=Form1.Shape10.Height+10;
   Form1.Shape11.Height:=Form1.Shape11.Height+10;
   end else
   if aaa=1 then begin
   Form1.Shape12.Top:= Form1.Shape12.Top+10;
   Form1.Shape13.Top:= Form1.Shape13.Top+10;
   Form1.Shape14.Top:= Form1.Shape14.Top+10;
   Form1.Shape15.Top:= Form1.Shape15.Top+10;
   Form1.Shape16.Top:= Form1.Shape16.Top+10;
   Form1.Shape17.Top:= Form1.Shape17.Top+10;
   Form1.Shape2.Top:= Form1.Shape2.Top+10;
   Form1.Shape19.Top:= Form1.Shape19.Top+10;
   Form1.Shape20.Top:= Form1.Shape20.Top+10;
   Form1.Shape57.Height:=Form1.Shape57.Height+10;
   Form1.Shape58.Height:=Form1.Shape58.Height+10;
   end else
      if aaa=2 then begin
   Form1.Shape21.Top:= Form1.Shape21.Top+10;
   Form1.Shape22.Top:= Form1.Shape22.Top+10;
   Form1.Shape23.Top:= Form1.Shape23.Top+10;
   Form1.Shape24.Top:= Form1.Shape24.Top+10;
   Form1.Shape25.Top:= Form1.Shape25.Top+10;
   Form1.Shape26.Top:= Form1.Shape26.Top+10;
   Form1.Shape3.Top:= Form1.Shape3.Top+10;
   Form1.Shape28.Top:= Form1.Shape28.Top+10;
   Form1.Shape29.Top:= Form1.Shape29.Top+10;
   Form1.Shape59.Height:=Form1.Shape59.Height+10;
   Form1.Shape60.Height:=Form1.Shape60.Height+10;
   end else
      if aaa=3 then begin
   Form1.Shape30.Top:= Form1.Shape30.Top+10;
   Form1.Shape31.Top:= Form1.Shape31.Top+10;
   Form1.Shape32.Top:= Form1.Shape32.Top+10;
   Form1.Shape33.Top:= Form1.Shape33.Top+10;
   Form1.Shape34.Top:= Form1.Shape34.Top+10;
   Form1.Shape35.Top:= Form1.Shape35.Top+10;
   Form1.Shape4.Top:= Form1.Shape4.Top+10;
   Form1.Shape37.Top:= Form1.Shape37.Top+10;
   Form1.Shape38.Top:= Form1.Shape38.Top+10;
   Form1.Shape61.Height:=Form1.Shape61.Height+10;
   Form1.Shape62.Height:=Form1.Shape62.Height+10;
   end else
      if aaa=4 then begin
   Form1.Shape39.Top:= Form1.Shape39.Top+10;
   Form1.Shape40.Top:= Form1.Shape40.Top+10;
   Form1.Shape41.Top:= Form1.Shape41.Top+10;
   Form1.Shape42.Top:= Form1.Shape42.Top+10;
   Form1.Shape43.Top:= Form1.Shape43.Top+10;
   Form1.Shape44.Top:= Form1.Shape44.Top+10;
   Form1.Shape5.Top:= Form1.Shape5.Top+10;
   Form1.Shape46.Top:= Form1.Shape46.Top+10;
   Form1.Shape47.Top:= Form1.Shape47.Top+10;
   Form1.Shape63.Height:=Form1.Shape63.Height+10;
   Form1.Shape64.Height:=Form1.Shape64.Height+10;
   end else
      if aaa=5 then begin
   Form1.Shape48.Top:= Form1.Shape48.Top+10;
   Form1.Shape49.Top:= Form1.Shape49.Top+10;
   Form1.Shape50.Top:= Form1.Shape50.Top+10;
   Form1.Shape51.Top:= Form1.Shape51.Top+10;
   Form1.Shape52.Top:= Form1.Shape52.Top+10;
   Form1.Shape53.Top:= Form1.Shape53.Top+10;
   Form1.Shape6.Top:= Form1.Shape6.Top+10;
   Form1.Shape55.Top:= Form1.Shape55.Top+10;
   Form1.Shape56.Top:= Form1.Shape56.Top+10;
   Form1.Shape65.Height:=Form1.Shape65.Height+10;
   Form1.Shape66.Height:=Form1.Shape66.Height+10;
   end;
  end;


procedure TForm1.Button1Click(Sender: TObject);
var
 a,b,c,d,e,f,g,h,ll,iii:integer;
begin
     //  FormCreate(Sender);
           gg:=false;
   j:=false;
   i:=false;
   if Form1.Button1.Caption = 'Старт' then
   begin
   timer3.enabled:=true;
   Form1.Button1.Caption:= 'Стоп';
   timer1.enabled:=true;
   MenuItem6.Enabled:=false;
   MenuItem2.Enabled:=false;
   MenuItem3.Enabled:=false;
   Button2.Enabled:=true;
   end else
   begin
      for iii := 1 to 6 do begin
  m[iii] := (FindComponent('Shape' + IntToStr(iii)) as TShape).Top;
  mmm[iii]:= iii;
  end;
    nn:=6;
  x:=50;
  image2.visible:=false;
    Shape27.visible:=false;
  Shape36.visible:=false;
  puk:=false;
   for ll:=1 to 6 do
   mm[ll]:=0;
   //for ll:=1 to 6 do
   //mmm[ll]:=ll;
      b:= 672;
      c:= 624;
      d:= 648;
      e:= 656;
      f:= 640;
      g:= 624;
      h:= 553;
      Form1.Button1.Caption:='Старт';
      timer1.enabled:=false;
      timer2.enabled:=false;
      timer3.enabled:=false;
       MenuItem6.Enabled:=true;
       MenuItem2.Enabled:=true;
       MenuItem3.Enabled:=true;
       Button2.Caption:='Пауза';
        Button2.Enabled:=false;
   Form1.Shape1.Top:= b;
   Form1.Shape101.Top:= c;
   Form1.Shape102.Top:= e;
   Form1.Shape103.Top:= f;
   Form1.Shape104.Top:= d;
   Form1.Shape105.Top:= c;
   Form1.Shape7.Top:= d;
   Form1.Shape8.Top:= g;
   Form1.Shape9.Top:= g;
   Form1.Shape10.Height:=h;
   Form1.Shape11.Height:=h;
   Form1.Shape12.Top:= g;
   Form1.Shape13.Top:= g;
   Form1.Shape14.Top:= c;
   Form1.Shape15.Top:= c;
   Form1.Shape16.Top:= f;
   Form1.Shape17.Top:= e;
   Form1.Shape2.Top:= b;
   Form1.Shape19.Top:= d;
   Form1.Shape20.Top:= d;
   Form1.Shape57.Height:=h;
   Form1.Shape58.Height:=h;
   Form1.Shape21.Top:= g;
   Form1.Shape22.Top:= g;
   Form1.Shape23.Top:= c;
   Form1.Shape24.Top:= c;
   Form1.Shape25.Top:= f;
   Form1.Shape26.Top:= e;
   Form1.Shape3.Top:= b;
   Form1.Shape28.Top:= d;
   Form1.Shape29.Top:= d;
   Form1.Shape59.Height:=h;
   Form1.Shape60.Height:=h;
   Form1.Shape30.Top:= g;
   Form1.Shape31.Top:= g;
   Form1.Shape32.Top:= c;
   Form1.Shape33.Top:= c;
   Form1.Shape34.Top:= f;
   Form1.Shape35.Top:= e;
   Form1.Shape4.Top:= b;
   Form1.Shape37.Top:= d;
   Form1.Shape38.Top:= d;
   Form1.Shape61.Height:=h;
   Form1.Shape62.Height:=h;
   Form1.Shape39.Top:= g;
   Form1.Shape40.Top:= g;
   Form1.Shape41.Top:= c;
   Form1.Shape42.Top:= c;
   Form1.Shape43.Top:= f;
   Form1.Shape44.Top:= e;
   Form1.Shape5.Top:= b;
   Form1.Shape46.Top:= d;
   Form1.Shape47.Top:= d;
   Form1.Shape63.Height:=h;
   Form1.Shape64.Height:=h;
   Form1.Shape48.Top:= g;
   Form1.Shape49.Top:= g;
   Form1.Shape50.Top:= c;
   Form1.Shape51.Top:= c;
   Form1.Shape52.Top:= f;
   Form1.Shape53.Top:= e;
   Form1.Shape6.Top:= b;
   Form1.Shape55.Top:= d;
   Form1.Shape56.Top:= d;
   Form1.Shape65.Height:=h;
   Form1.Shape66.Height:=h;
     end;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var ii,j,kek,iii,kk,q,qq,qqq:integer;
begin
   image2.visible:=false;
   if i=false then begin
   Randomize;
   a :=random(6);//bob[random(kok)]; //Генерирует рандомное число
   for q:=0 to kok-1 do
   if a=bob[q] then break else        //без мод, изменяя рандом
   a:=bob[a mod kok];
   Form1.Label4.Caption:=InttoStr(a+1);
   end;
   vverh(a);
   b:=b+1;
   i:=true;
   if b=5 then begin
   aq:=0;//при подъёме на 1 этаж
   i:=false;
   b:=0;
   for q:=0 to kkokk-1 do //тут
   begin
   if a=bib[q] then begin
   aq:=1;
   break;
   end;
   end;
   if aq=0 then//Добавляем ведро в массив с ведрами не на 1 этаже
    begin
    kkokk:=kkokk+1;
    setlength(bib,kkokk);
   bib[kkokk-1]:=a;
  // break;
   end;
   // break;
   m[a] := (FindComponent('Shape' + IntToStr(a+1)) as TShape).Top;
       if m[a]=122 then  //Люлька на 12 этаже?
       begin
       for q:=0 to kok-1 do
       begin
       if a=bob[q] then
       for qq:=q to kok-1 do
       bob[qq]:=bob[qq+1];
       end; //  Убираем из массивов номера люлек, если они на 12 этаже
       kok:=kok-1;
       setlength(bob,kok);
       for q:=0 to kkokk-1 do
       begin
       if a=bib[q] then
       for qq:=q to kkokk-1 do
       bib[qq]:=bib[qq+1];
       end;
       kkokk:=kkokk-1;
       setlength(bib,kkokk);
       end;
       if (m[0]=122) and (m[1]=122) and(m[2]=122) and(m[3]=122) and(m[4]=122) and(m[5]=122) then begin  // Конец, если пуст
       timer1.Enabled:=false;
       ShowMessage('Все люльки достигли 12-го этажа.');
       Button1Click(Sender);
       end else      // Проверка пуст ли массив М-
        if length(bib) > 0 then
        begin
        Timer1.Enabled:=false;
        Timer2.Enabled:=true;
        end;
       end;
  // Label6.Caption:=inttostr(bib[0]);
   Label5.Caption:=inttostr(kkokk);
       end;

procedure TForm1.Timer2Timer(Sender: TObject);
var h,hh:integer;
begin
   if gg=false then
   aa:= random(100)+1;
if(aa <= x)then
begin
if j=false then begin
//image2.Visible:=true;
 Randomize;
   aaa :=random(6); //Генерирует рандомное число
   for h:=0 to kkokk-1 do
   if aaa=bib[h] then break else        //без мод, изменяя рандом
   aaa:=bib[aaa mod kkokk];
   Label6.caption:=inttostr(aaa+1);
   end;
   image2.Visible:=true;
   lamp(aaa);
   bb:=bb+1;
   gg:=true;
   j:=true;
   if bb=5 then begin
   j:=false;
   gg:=false;
   bb:=0;
   m[aaa] := (FindComponent('Shape' + IntToStr(aaa+1)) as TShape).Top;
    if m[aaa]=672 then
    begin
     for h:=0 to kkokk-1 do
       begin
       if aaa=bib[h] then
       for hh:=h to kkokk-1 do
       bib[hh]:=bib[hh+1];
       end;
       kkokk:=kkokk-1;
       setlength(bib,kkokk); //тут
    end;
  timer2.Enabled:=false;
timer1.enabled:=true;
end;
end else
begin
timer2.Enabled:=false;
timer1.enabled:=true;
end;
end;

procedure TForm1.Timer3Timer(Sender: TObject);
begin if puk=false then begin
  Form1.Color:=(255-Timer3.tag)*256*256;
  Timer3.tag:=Timer3.tag+1;
  if Timer3.tag=255 then puk:=true end else
  begin
  Form1.Color:=(255-Timer3.tag)*256*256;
  Timer3.tag:=Timer3.tag-1;
  if Timer3.tag=1 then puk:=false
  end;
  if Form1.Color = (255-155)*256*256 then
  begin
  Shape27.visible:=true;
  Shape36.visible:=true;
  end;
   if Form1.Color = (255-154)*256*256 then
  begin
  Shape27.visible:=false;
  Shape36.visible:=false;
  end;
     if Image4.Top=600 then
     begin
     biba:=false;
     kkera:=true;
     end;
     if Image4.Top=0 then biba:=true;
      if Image5.Left= -160 then boba:=false;
     if Image5.Left= 20 then boba:=true;
     if (Image5.left<20) and (shape36.visible=true) and (boba=false) then
    Image5.left:=Image5.left+10;
    if (Image4.Top<600) and (shape36.visible=false) and (biba=true) and (Form1.Color < (255-34)*256*256) then
    Image4.Top:=Image4.Top+5;
     if (Image5.left<=20) and (shape36.visible=false) and (boba=true) then
     begin
    Image5.left:=Image5.left-10;
    kkera:=false;
    end;
    if (Image4.Top>0) and (shape36.visible=false) and (biba=false) and (kkera=false) then
    Image4.Top:=Image4.Top-5;
    if  Form1.Color = (255-255)*256*256 then
    begin
    Image6.Visible:=true;
    Image19.Visible:=true;
    end;
    if  Form1.Color = (255-252)*256*256 then
    begin
    Image7.Visible:=true;
    Image18.Visible:=true;
    end;
    if  Form1.Color = (255-249)*256*256 then
    begin
    Image8.Visible:=true;
    Image17.Visible:=true;
    end;
    if  Form1.Color = (255-246)*256*256 then
    begin
    Image9.Visible:=true;
    Image16.Visible:=true;
    end;
    if  Form1.Color = (255-243)*256*256 then
    begin
    Image10.Visible:=true;
    Image15.Visible:=true;
    end;
    if  Form1.Color = (255-240)*256*256 then
    begin
    Image11.Visible:=true;
    Image14.Visible:=true;
    end;
    if  Form1.Color = (255-237)*256*256 then
    begin
    Image12.Visible:=true;
    Image13.Visible:=true;
    end;
     if  Form1.Color = (255-234)*256*256 then
     begin
    Image20.Visible:=true;
    Image21.Visible:=true;
    end;
      if  Form1.Color = (255-231)*256*256 then
      begin
    Image22.Visible:=true;
    Image23.Visible:=true;
    end;
       if  Form1.Color = (255-181)*256*256 then //тут
    begin
    Image6.Visible:=false;
    Image19.Visible:=false;
    end;
    if  Form1.Color = (255-178)*256*256 then
    begin
    Image7.Visible:=false;
    Image18.Visible:=false;
    end;
    if  Form1.Color = (255-175)*256*256 then
    begin
    Image8.Visible:=false;
    Image17.Visible:=false;
    end;
    if  Form1.Color = (255-172)*256*256 then
    begin
    Image9.Visible:=false;
    Image16.Visible:=false;
    end;
    if  Form1.Color = (255-169)*256*256 then
    begin
    Image10.Visible:=false;
    Image15.Visible:=false;
    end;
    if  Form1.Color = (255-166)*256*256 then
    begin
    Image11.Visible:=false;
    Image14.Visible:=false;
    end;
    if  Form1.Color = (255-163)*256*256 then
    begin
    Image12.Visible:=false;
    Image13.Visible:=false;
    end;
     if  Form1.Color = (255-160)*256*256 then
     begin
    Image20.Visible:=false;
    Image21.Visible:=false;
    end;
      if  Form1.Color = (255-157)*256*256 then
      begin
    Image22.Visible:=false;
    Image23.Visible:=false;
    end;
end;

procedure TForm1.Timer4Timer(Sender: TObject);
var xx,yy,xxx,yyy,coordx,coordy:integer;
begin
  timer2.Enabled:=false;
  timer4.Enabled:=true;
 { if m[aaa]<Image24.Top then
  Image24.Top:=Image24.Top-20 else
  Image24.Top:=Image24.Top+20;
  if kekw[aaa]<Image24.Left then
  Image24.Left:=Image24.Left-20 else
   Image24.Left:=Image24.Left+20;
   if ((Image24.Left=kekw[aaa]) or (Image24.Left=kekw[aaa]+1) or (Image24.Left=kekw[aaa]+2) or (Image24.Left=kekw[aaa]+3) or (Image24.Left=kekw[aaa]+4) or (Image24.Left=kekw[aaa]+5) or
  (Image24.Left=kekw[aaa]+6) or (Image24.Left=kekw[aaa]+7) or (Image24.Left=kekw[aaa]+8) or (Image24.Left=kekw[aaa]+9) or (Image24.Left=kekw[aaa]+10) or (Image24.Left=kekw[aaa]-1)  or
  (Image24.Left=kekw[aaa]-2) or (Image24.Left=kekw[aaa]-3) or (Image24.Left=kekw[aaa]-4) or (Image24.Left=kekw[aaa]-5) or (Image24.Left=kekw[aaa]-6) or (Image24.Left=kekw[aaa]-7) or
  (Image24.Left=kekw[aaa]-8) or (Image24.Left=kekw[aaa]-9) or (Image24.Left=kekw[aaa]-10)) and ((Image24.top=m[aaa]) or (Image24.top=m[aaa]+1) or (Image24.top=m[aaa]+2) or (Image24.top=m[aaa]+3) or (Image24.top=m[aaa]+4) or (Image24.top=m[aaa]+5) or
  (Image24.top=m[aaa]+6) or (Image24.top=m[aaa]+7) or (Image24.top=m[aaa]+8) or (Image24.top=m[aaa]+9) or (Image24.top=m[aaa]+10) or (Image24.top=m[aaa]-1)  or
  (Image24.top=m[aaa]-2) or (Image24.top=m[aaa]-3) or (Image24.top=m[aaa]-4) or (Image24.top=m[aaa]-5) or (Image24.top=m[aaa]-6) or (Image24.top=m[aaa]-7) or
  (Image24.top=m[aaa]-8) or (Image24.top=m[aaa]-9) or (Image24.top=m[aaa]-10)) then
  begin
  Image24.Top:=Image24.Top-10;
  Image25.Top:=Image24.Top;
  Image25.Left:=Image24.Left;
  Image24.Visible:=false;
  Image25.Visible:=true;
   timer4.enabled:=false;
   timer2.Enabled:=true;
   end;
 { xx:=kekw[aaa];
  yy:=m[aaa];
  coordx:=100;
  coordy:=100;
  Image24.Left:=(xx+Image24.Left)div coordx;
  Image24.Top:=(yy+Image24.Top)div coordy;
  coordx:=coordx-1;
  coordy:=coordy-1;
  if m[aaa]=Image24.left then
  begin
  timer4.Enabled:=false;
  Timer2.Enabled:=true;
  end;} }
  end;

procedure TForm1.Button2Click(Sender: TObject);
//var aa:boolean;
begin
   if Form1.Button2.Caption = 'Пауза' then begin
   Form1.Button2.Caption:= 'Продолжить';
   if timer1.enabled=true then
   begin
   timer1.enabled:=false;
   aaaa:=true;
   end else
   if timer2.enabled=true then
   begin
   timer2.enabled:=false;
   aaaa:=false;
   end;
   timer3.enabled:=false;
   end else
   begin
      Form1.Button2.Caption:='Пауза';
      if aaaa=true then timer1.Enabled:=true else
       timer2.enabled:=true;
   timer3.enabled:=true;
   end;
end;

 procedure TForm1.Button3Click(Sender: TObject);
begin
    Form1.Close;
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin
   if Form1.Edit1.Text = '' then
   Form1.Edit1.Text:= InttoStr(0);
  TrackBar1.Position:=strtoint(Form1.Edit1.Text);
  end;


procedure TForm1.Edit2Change(Sender: TObject);
begin
   if Form1.Edit2.Text = '' then
   Form1.Edit2.Text:= InttoStr(0);
  TrackBar2.Position:=strtoint(Form1.Edit2.Text);
end;

procedure TForm1.FormCreate(Sender: TObject);
var i:integer;
begin
  kkokk:=0;
  kok:=6;
  Setlength(bib,kkokk);
  Setlength(bob,kok);
  for i:=0 to kok-1 do
  bob[i]:=i;
  kekw[1]:=293;
  kekw[2]:=429;
  kekw[3]:=565;
   kekw[4]:=693;
  kekw[5]:=829;
   kekw[6]:=965;
  Form1.Color:=(255-1)*256*256;
  Shape27.visible:=false;
  Shape36.visible:=false;
  puk:=false;
  timer3.enabled:=false;
  Form1.Constraints.MaxHeight:=970;
  Form1.Constraints.MaxWidth:=1500;
  Timer1.Enabled:=false;
  timer2.Enabled:=false;
  timer4.Enabled:=false;
  Button2.Enabled:=false;
  nn:=6;
  x:=50;
  image2.visible:=false;
  for i := 0 to 5 do begin
  m[i] := (FindComponent('Shape' + IntToStr(i+1)) as TShape).Top;
  end;
end;

procedure TForm1.Image22Click(Sender: TObject);
begin

end;

procedure TForm1.Image3Click(Sender: TObject);
begin

end;

procedure TForm1.Image4Click(Sender: TObject);
begin

end;

procedure TForm1.MenuItem2Click(Sender: TObject);
var i:integer;
begin
  if Form2.OpenDialog1.Execute then
  begin
  reset(f);
 { while not eof(f) do
   begin
    i:=1;
      while not eoln(f) do
         begin
           read(f,ss[i]);
           inc(i);
         end;
   end; }
//  while not eof(f) do
  //begin
  readLn(f,color7);
  readLn(f,color8);
  readLn(f,color9);
  readLn(f,color10);
  readLn(f,color11);
  readLn(f,color12);
 // end;
  end;
  Form2.ColorBox1.Selected:=color7;
  Form2.ColorBox2.Selected:=color8;
  Form2.ColorBox3.Selected:=color9;
  Form2.ColorBox4.Selected:=color10;
  Form2.ColorBox5.Selected:=color11;
Form2.ColorBox6.Selected:=color12;
  Closefile(f);
  Form2.Button1Click(Sender);
end;

procedure TForm1.MenuItem3Click(Sender: TObject);
begin
  if SaveDialog1.Execute then
  begin
  s:=SaveDialog1.FileName;
  assignfile(f,s);
  rewrite(f);
  writeLn(f,color1);
  writeLn(f,color2);
  writeLn(f,color3);
  writeLn(f,color4);
  writeLn(f,color5);
  writeLn(f,color6);
  end;
  Closefile(f);
end;

procedure TForm1.MenuItem4Click(Sender: TObject);
begin
  Form1.Close;
end;

procedure TForm1.MenuItem5Click(Sender: TObject);
begin

end;

procedure TForm1.MenuItem6Click(Sender: TObject);
begin
  Form2.Show;
end;

procedure TForm1.MenuItem8Click(Sender: TObject);
begin
  Form4.Show;
end;

procedure TForm1.MenuItem9Click(Sender: TObject);
begin
  Form3.Show;
end;

procedure TForm1.Panel1Click(Sender: TObject);
begin

end;

procedure TForm1.Shape1ChangeBounds(Sender: TObject);
begin

end;

procedure TForm1.TrackBar1Change(Sender: TObject);
begin
  Form1.Edit1.Text := InttoStr(TrackBar1.Position);
  Timer1.Interval:=1000 - Trackbar1.Position*10+1;
  Timer2.Interval:=1000 - Trackbar1.Position*10+1;
  Timer3.Interval:=1000 - Trackbar1.Position*10+1;
  Timer4.Interval:=1000 - Trackbar1.Position*10+1;
end;

procedure TForm1.TrackBar2Change(Sender: TObject);
begin
  Form1.Edit2.Text := InttoStr(TrackBar2.Position);
   x:= TrackBar2.Position;
end;

end.

