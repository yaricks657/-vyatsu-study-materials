unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus, ExtCtrls,
  StdCtrls, ComCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Vyxod: TButton;
    Edit1: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Timer2: TTimer;
    Pause: TToggleBox;
    verPromax: TEdit;
    Image1: TImage;
    Image10: TImage;
    Image11: TImage;
    Image12: TImage;
    Image13: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    MainMenu1: TMainMenu;
    Faiil: TMenuItem;
    Dannye: TMenuItem;
    Aboutprog: TMenuItem;
    AboutAuthor: TMenuItem;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    Settings: TMenuItem;
    Openn: TMenuItem;
    Keep: TMenuItem;
    Ext: TMenuItem;
    StartStop: TToggleBox;
    Timer1: TTimer;
    TrackBar1: TTrackBar;
    procedure AboutAuthorClick(Sender: TObject);
    procedure AboutprogClick(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure Image13Click(Sender: TObject);
    procedure PauseChange(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure verPromaxChange(Sender: TObject);
    procedure ExtClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure KeepClick(Sender: TObject);
    procedure OpennClick(Sender: TObject);
    procedure SettingsClick(Sender: TObject);
    procedure choice(a,b:byte);
    procedure StartStopChange(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure igra;
    procedure emergencyLight(h:integer);
    procedure VyxodClick(Sender: TObject);
  private

  public

  end;
type info=record
       lifes:integer;
       x:integer;
       y:integer;
       end;
var
  Form1: TForm1;
  castels:array [1..12] of info;
  c:array of integer;
  f1:textfile;
  filework:string;
  tmp:integer;
  flag:boolean;
  put,vys,v_x,v_y:integer;
  kol:byte;
  d,i,tmp1,tmp2:integer;
  q,w:integer;
  xp:integer;
implementation
  uses Unit2,math;
{$R *.lfm}

{ TForm1 }

procedure TForm1.choice(a,b:byte);
begin
  case a of
  1:Form1.Image1.Picture.LoadFromFile(inttostr(b)+'.png');
  2:Form1.Image2.Picture.LoadFromFile(inttostr(b)+'.png');
  3:Form1.Image3.Picture.LoadFromFile(inttostr(b)+'.png');
  4:Form1.Image4.Picture.LoadFromFile(inttostr(b)+'.png');
  5:Form1.Image5.Picture.LoadFromFile(inttostr(b)+'.png');
  6:Form1.Image6.Picture.LoadFromFile(inttostr(b)+'.png');
  7:Form1.Image7.Picture.LoadFromFile(inttostr(b)+'.png');
  8:Form1.Image8.Picture.LoadFromFile(inttostr(b)+'.png');
  9:Form1.Image9.Picture.LoadFromFile(inttostr(b)+'.png');
  10:Form1.Image10.Picture.LoadFromFile(inttostr(b)+'.png');
  11:Form1.Image11.Picture.LoadFromFile(inttostr(b)+'.png');
  12:Form1.Image12.Picture.LoadFromFile(inttostr(b)+'.png');
  end;
end;

procedure TForm1.StartStopChange(Sender: TObject);
var t:byte;
begin
  if StartStop.Checked=True then
    begin
      StartStop.Caption:='Стоп';
      if Pause.Checked=False then
        begin
        Timer1.Enabled := True;
        Timer2.Enabled:=true;
    end ;
    end
  else
    begin
      StartStop.Caption:='Старт';
      Timer1.Enabled := False;
      Timer2.Enabled:= false;
  Image1.Picture.LoadFromFile('1.png');
  Image2.Picture.LoadFromFile('2.png');
  Image3.Picture.LoadFromFile('3.png');
  Image4.Picture.LoadFromFile('4.png');
  Image5.Picture.LoadFromFile('5.png');
  Image6.Picture.LoadFromFile('6.png');
  Image7.Picture.LoadFromFile('7.png');
  Image8.Picture.LoadFromFile('8.png');
  Image9.Picture.LoadFromFile('9.png');
  Image10.Picture.LoadFromFile('10.png');
  Image11.Picture.LoadFromFile('11.png');
  Image12.Picture.LoadFromFile('12.png');
    For t:=1 to 12 do
       castels[t].lifes:=100;
  end;

end;



procedure polet(k2,l2:integer);
var i:integer;
begin
 //Form1.Image13.Visible:=false;
 //Form1.Image13.Picture.LoadFromFile('patron.png');
 Form1.Image13.Visible:=true;
 Form1.Image13.Left:=k2;
 Form1.Image13.Top:=l2;
 i:=1;
 if flag=true then
  begin
     while (i<=10) do
    begin
        Form1.Timer1Timer(Form1.StartStop);
      Form1.Image13.Left:=Form1.Image13.Left+v_x;
      Form1.Image13.Top:=Form1.Image13.Top+v_y;
      Form1.Image13.Update;
      i:=i+1;
   end;
  end
 else   begin
   while (i<=5) do
    begin
     Form1.Timer1Timer(Form1.StartStop);
      Form1.Image13.Left:=Form1.Image13.Left+v_x;
      Form1.Image13.Top:=Form1.Image13.Top+v_y;
        Form1.Image13.Update;
      i:=i+1;
    end;
 end;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var i:integer;
begin
  sleep(50);
end;

procedure emergencyLight(h:integer);
var a:integer;
begin
  flag:=true;
  randomize;
  a:=random(101);
  if (a<=h) then
   begin
    flag:=false;
   end
    else  begin
     flag:=true;
    end;
end;

procedure raschet(n,m,b,f:integer); //n,m координаты защищающейся крепости
begin                               // b,f координаты стреляющей крепости
  put:=(n-b);
  vys:=(m-f);
  if (put<>0) and (vys<>0) then
   begin
     v_x:=round(put/10);
     v_y:=round(vys/10);
   end
  else
  begin
   if (put=0) then begin
    v_y:=round(vys/10);
   end;
   if (vys=0) then begin
    v_x:=round(put/10);
   end;
  end;
end;


procedure kartinka1;
begin
  Form1.Image13.Visible:=false;
  Form1.Image13.Height:=60;
  Form1.Image13.Width:=90;
  Form1.Image13.Picture.LoadFromFile('vzryv.png');
  Form1.Image13.Visible:=true;
  sleep(10);
  Form1.Image13.Visible:=false;
  Form1.Image13.Height:=25;
  Form1.Image13.Width:=25;
end;


procedure vyborka(e:integer);
begin
  case e of
  1:Form1.Image1.Picture.LoadFromFile('fire.jpg');
  2:Form1.Image2.Picture.LoadFromFile('fire.jpg');
  3:Form1.Image3.Picture.LoadFromFile('fire.jpg');
  4:Form1.Image4.Picture.LoadFromFile('fire.jpg');
  5:Form1.Image5.Picture.LoadFromFile('fire.jpg');
  6:Form1.Image6.Picture.LoadFromFile('fire.jpg');
  7:Form1.Image7.Picture.LoadFromFile('fire.jpg');
  8:Form1.Image8.Picture.LoadFromFile('fire.jpg');
  9:Form1.Image9.Picture.LoadFromFile('fire.jpg');
  10:Form1.Image10.Picture.LoadFromFile('fire.jpg');
  11:Form1.Image11.Picture.LoadFromFile('fire.jpg');
  12:Form1.Image12.Picture.LoadFromFile('fire.jpg');
  end;
end;


procedure TForm1.TrackBar1Change(Sender: TObject);
begin
  verPromax.Caption:=inttostr(10*Trackbar1.Position);
  Trackbar1.SelEnd:=Trackbar1.Position;
end;

procedure TForm1.igra;
begin

end;

procedure TForm1.emergencyLight(h: integer);
var a:integer;
begin
  randomize;
  a:=random(101);
  if (a<=h) then
   begin
    flag:=false;
   end
   else
   begin
   flag:=true;
   end;
end;

procedure TForm1.VyxodClick(Sender: TObject);
begin
  Form1.Close;
  Form2.Close;
end;

procedure kol_zhizney(gg:integer);
begin
 case gg of
 1:Form1.Edit1.Text:='XP: '+inttostr(castels[tmp1].lifes);
 2:Form1.Edit2.Text:='XP: '+inttostr(castels[tmp1].lifes);
 3:Form1.Edit3.Text:='XP: '+inttostr(castels[tmp1].lifes);
 4:Form1.Edit4.Text:='XP: '+inttostr(castels[tmp1].lifes);
 5:Form1.Edit5.Text:='XP: '+inttostr(castels[tmp1].lifes);
 6:Form1.Edit6.Text:='XP: '+inttostr(castels[tmp1].lifes);
 7:Form1.Edit7.Text:='XP: '+inttostr(castels[tmp1].lifes);
 8:Form1.Edit8.Text:='XP: '+inttostr(castels[tmp1].lifes);
 9:Form1.Edit9.Text:='XP: '+inttostr(castels[tmp1].lifes);
 10:Form1.Edit10.Text:='XP: '+inttostr(castels[tmp1].lifes);
 11:Form1.Edit11.Text:='XP: '+inttostr(castels[tmp1].lifes);
 12:Form1.Edit12.Text:='XP: '+inttostr(castels[tmp1].lifes);
 end;
end;

procedure sdv(r,o:byte);
var i:byte;
begin
  for i:=r to o-1 do
       c[i]:=c[i+1];
 // c[o]:=0;
end;


procedure vstavka(bb,aa,cc:integer); //bb размер массива aa позиция элемента сс само число
var i:integer;
begin
 for i:=bb-1 downto aa do begin
   c[i]:=c[i+1];
   c[aa]:=cc;
 end;
end;


procedure gen1(k:byte);
begin
  randomize;
  q:=random(k);
end;

procedure gen2(k:byte);
begin
  randomize;
  w:=random(k);
end;


function shot:integer;
var s:integer;
begin
  randomize;
  s:=random(10)+11;
  case s of
  11..13:shot:=25;
  14..16:shot:=50;
  17..19:shot:=75;
  20:shot:=100;
  end;
end;

{Procedure TForm1.igra;
begin
   d:=12;
  setlength(c,d);
  for i:=0 to 11 do
     begin
       c[i]:=i+1;
     end;
  repeat
    begin
     gen(d,q);
     tmp1:=c[q]; //q - индекс защищающейся крепости
     sdv(q,d);
     d:=d-1;
     gen(d,w);
     tmp2:=c[w];  //w - индекс стреляющей крепости
     xp:=shot;
     raschet(castels[tmp1].x,castels[tmp1].y,castels[tmp2].x,castels[tmp2].y);
     emergencyLight(10*Form1.Trackbar1.Position);
     if flag=false then
      begin
        polet(castels[tmp2].x,castels[tmp2].y);
        kartinka1;
        d:=d+1;
         setlength(c,d);
        vstavka(d,q,tmp1);
      end
     else
     begin
       polet(castels[tmp2].x,castels[tmp2].y);
       castels[tmp1].lifes:= castels[tmp1].lifes-xp;
       if castels[tmp1].lifes<=0 then begin
           Castels[tmp1].lifes:=0;
           kol_zhizney(tmp1);
           vyborka(tmp1);
       end
       else
       begin
        kol_zhizney(tmp1);
        d:=d+1;
        setlength(c,d);
        vstavka(d,q,tmp1);
       end;
     end;
    end;
  until (d=0);
  if d=0 then
   Timer2.Enabled:=false;
   showmessage(inttostr(c[0])+'-ая крепость выиграла');
end;
    }







procedure TForm1.ExtClick(Sender: TObject);
begin
  Close;
end;

procedure TForm1.FormCreate(Sender: TObject);
var y:integer;
begin
  Image1.Picture.LoadFromFile('1.png');
  Image2.Picture.LoadFromFile('2.png');
  Image3.Picture.LoadFromFile('3.png');
  Image4.Picture.LoadFromFile('4.png');
  Image5.Picture.LoadFromFile('5.png');
  Image6.Picture.LoadFromFile('6.png');
  Image7.Picture.LoadFromFile('7.png');
  Image8.Picture.LoadFromFile('8.png');
  Image9.Picture.LoadFromFile('9.png');
  Image10.Picture.LoadFromFile('10.png');
  Image11.Picture.LoadFromFile('11.png');
  Image12.Picture.LoadFromFile('12.png');
  castels[1].x:=Form1.Image1.Left; castels[1].y:=Form1.Image1.Top;
  castels[2].x:=Form1.Image2.Left; castels[2].y:=Form1.Image2.Top;
  castels[3].x:=Form1.Image3.Left; castels[3].y:=Form1.Image3.Top;
  castels[4].x:=Form1.Image4.Left; castels[4].y:=Form1.Image4.Top;
  castels[5].x:=Form1.Image5.Left; castels[5].y:=Form1.Image5.Top;
  castels[6].x:=Form1.Image6.Left; castels[6].y:=Form1.Image6.Top;
  castels[7].x:=Form1.Image7.Left; castels[7].y:=Form1.Image7.Top;
  castels[8].x:=Form1.Image8.Left; castels[8].y:=Form1.Image8.Top;
  castels[9].x:=Form1.Image9.Left; castels[9].y:=Form1.Image9.Top;
  castels[10].x:=Form1.Image10.Left; castels[10].y:=Form1.Image10.Top;
  castels[11].x:=Form1.Image11.Left; castels[11].y:=Form1.Image11.Top;
  castels[12].x:=Form1.Image12.Left; castels[12].y:=Form1.Image12.Top;
  for y:=0 to 11 do
     castels[y].lifes:=100;
  d:=12;
  setlength(c,d);
  for y:=0 to 11 do
     c[y]:=y;
end;

procedure TForm1.KeepClick(Sender: TObject);
var i:byte; z,h,w:integer;
begin
  if SaveDialog1.Execute then
       begin
          filework:=SaveDialog1.FileName;
          assignfile(f1,filework);
          rewrite(f1);
          for i:=1 to 12 do begin
            z:=castels[i].lifes;
            writeln(f1,z);
            w:=castels[i].x;
            writeln(f1,w);
            h:=castels[i].y;
            writeln(f1,h);
          end;
          CloseFile(f1);
       end;
end;



procedure TForm1.OpennClick(Sender: TObject);
var i:byte; z,h,w:integer;
begin
  if OpenDialog1.Execute then
   begin
     Filework:=OpenDialog1.Filename;
     assignfile(f1,filework);
     reset(f1);
     for i:=0 to 11 do begin
       z:=castels[i].lifes;
       readln(f1,z);
       w:=castels[i].x;
       readln(f1,w);
       h:=castels[i].y;
       readln(f1,h);
     end;
    CloseFile(f1);
   end;
end;

procedure TForm1.AboutprogClick(Sender: TObject);
var t:integer;
begin
//t:=Application.MessageBox('Имеется система из 12 крепостей...','О программе', MB_IDOK);
end;

procedure TForm1.Edit4Change(Sender: TObject);
begin

end;

procedure TForm1.Image13Click(Sender: TObject);
begin

end;

procedure TForm1.PauseChange(Sender: TObject);
begin
  if Pause.Checked=True then
    begin
      Timer1.Enabled := False;
      Timer2.Enabled:=false;
      Pause.Caption:='Продолжить';
    end
  else
    begin
      if StartStop.Checked=True then begin
        Timer1.Enabled := True;
      Timer2.Enabled:=true;
      end;
      Pause.Caption:='Пауза';
    end;
 end;


procedure TForm1.Timer2Timer(Sender: TObject);
begin
     gen1(d);
     tmp1:=c[q]; //q - индекс защищающейся крепости
     sdv(q,d);
     d:=d-1;
     setlength(c,d);
     gen2(d);
     tmp2:=c[w];  //w - индекс стреляющей крепости
     xp:=shot;
     raschet(castels[tmp1].x,castels[tmp1].y,castels[tmp2].x,castels[tmp2].y);
    // emergencyLight(10*Form1.Trackbar1.Position);
     if flag=false then
      begin
        Timer1.Enabled:=true;
        polet(castels[tmp2].x,castels[tmp2].y);
        Timer1.Enabled:=false;
        kartinka1;
        d:=d+1;
         setlength(c,d);
        vstavka(d,q,tmp1);
      end
     else
     begin
       Timer1.Enabled:=true;
       polet(castels[tmp2].x,castels[tmp2].y);
       Timer1.Enabled:=false;
       castels[tmp1].lifes:= castels[tmp1].lifes-xp;
       if castels[tmp1].lifes<=0 then begin
           Castels[tmp1].lifes:=0;
           kol_zhizney(tmp1);
           vyborka(tmp1);
       end
       else
       begin
        kol_zhizney(tmp1);
        d:=d+1;
        setlength(c,d);
        vstavka(d,q,tmp1);
       end;
     end;
  if d=0 then  begin
   timer1.Enabled:=false;
   Timer2.Enabled:=false;
   showmessage(inttostr(c[0])+'-ая крепость выиграла');
  end;
end;

procedure TForm1.verPromaxChange(Sender: TObject);
var a:integer;
begin
  Trackbar1.Position:=(strtoint(verPromax.Text)) div 10;
  Trackbar1.SelEnd:=Trackbar1.Position;
end;

procedure TForm1.AboutAuthorClick(Sender: TObject);
var t:integer;
begin
//t:=Application.MessageBox('Выполнил студент группы ИВТб-21 - Герасименко Артем Викторович','Об авторе', MB_IDOK);
end;

procedure TForm1.SettingsClick(Sender: TObject);
begin
  Form2.Show;
end;

end.

