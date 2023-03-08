unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  Menus, ColorBox;

type

  { TForm2 }

  TForm2 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    ColorBox1: TColorBox;
    ColorBox2: TColorBox;
    ColorBox3: TColorBox;
    ColorBox4: TColorBox;
    ColorBox5: TColorBox;
    ColorBox6: TColorBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    OpenDialog1: TOpenDialog;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure ColorBox1Change(Sender: TObject);
    procedure ColorBox1GetColors(Sender: TCustomColorBox; Items: TStrings);
    procedure ColorBox1Select(Sender: TObject);
    procedure ColorBox2Change(Sender: TObject);
    procedure ColorBox3Change(Sender: TObject);
    procedure ColorBox4Change(Sender: TObject);
    procedure ColorBox5Change(Sender: TObject);
    procedure ColorBox6Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  Form2: TForm2;
  color1:int32;
  color2:int32;
  color3:int32;
  color4:int32;
  color5:int32;
  color6:int32;
  color7:int32;
  color8:int32;
   color9:int32;
    color10:int32;
     color11:int32;
      color12:int32;
      aabb,bbaa,cc,dd,ee,ff:int32;
       aaabbb,bbb,ccc,ddd,eee,fff:int32;

implementation

{$R *.lfm}
uses unit1;
    var kek: array [1..16] of int32;
          a:array [1..16] of int32;

{ TForm2 }


procedure TForm2.FormCreate(Sender: TObject);
begin
  ColorBox1.Style:=ColorBox1.Style + [cbCustomColors];
  ColorBox2.Style:=ColorBox2.Style + [cbCustomColors];
  ColorBox3.Style:=ColorBox3.Style + [cbCustomColors];
  ColorBox4.Style:=ColorBox4.Style + [cbCustomColors];
  ColorBox5.Style:=ColorBox5.Style + [cbCustomColors];
  ColorBox6.Style:=ColorBox6.Style + [cbCustomColors];
  kek[1]:=0;
   kek[2]:=32768;
    kek[3]:=8388608;
     kek[4]:=128;
      kek[5]:=32896;
       kek[6]:=8388736;
        kek[7]:=8421376;
         kek[8]:=8421504;
          kek[9]:=255;
           kek[10]:=16776960;
            kek[11]:=12632256;
             kek[12]:=65280;
              kek[13]:=65535;
               kek[14]:=16711935;
                kek[15]:=16777215;
                 kek[16]:=16711680;
                // Button3Click(Sender);

end;

procedure TForm2.ColorBox1Change(Sender: TObject);
begin
  if (Form2.ColorBox1.Selected = Form2.ColorBox2.Selected) or
  (Form2.ColorBox1.Selected = Form2.ColorBox3.Selected) or
  (Form2.ColorBox1.Selected = Form2.ColorBox4.Selected) or
  (Form2.ColorBox1.Selected = Form2.ColorBox5.Selected) or
  (Form2.ColorBox1.Selected = Form2.ColorBox6.Selected) then  //begin
  Form2.ColorBox1.Selected:=aaabbb;
 // ShowMessage('Выберите другой цвет, данный цвет уже использован!')
  //end;
  aaabbb:=Form2.ColorBox1.Selected;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  Form2.ColorBox1.Selected:=aabb;
    Form2.ColorBox2.Selected:=bbaa;
      Form2.ColorBox3.Selected:=cc;
        Form2.ColorBox4.Selected:=dd;
          Form2.ColorBox5.Selected:=ee;
            Form2.ColorBox6.Selected:=ff;
  Form2.Close;
end;

procedure TForm2.Button3Click(Sender: TObject);
var  i,k:integer;
begin
  randomize;
  i := 0;
  while i < 7 do
  begin
  i := i + 1;
  a[i] := kek[random(16)+1];
  for k := 1 to i-1 do
  if a[k] = a[i] then
  begin
  i := i-1;
  break;
  end;
  end;
  Form2.ColorBox1.Selected:=a[2];
   Form2.ColorBox2.Selected:=a[3];
    Form2.ColorBox3.Selected:=a[4];
     Form2.ColorBox4.Selected:=a[5];
      Form2.ColorBox5.Selected:=a[6];
       Form2.ColorBox6.Selected:=a[7];
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
  begin
  Form1.Shape1.Brush.Color:=ColorBox1.Selected;
  Form1.Shape101.Brush.Color:=ColorBox1.Selected;
  Form1.Shape102.Brush.Color:=ColorBox1.Selected;
  Form1.Shape103.Brush.Color:=ColorBox1.Selected;
  Form1.Shape104.Brush.Color:=ColorBox1.Selected;
  Form1.Shape105.Brush.Color:=ColorBox1.Selected;
  Form1.Shape7.Brush.Color:=ColorBox1.Selected;
  Form1.Shape8.Brush.Color:=ColorBox1.Selected;
  Form1.Shape9.Brush.Color:=ColorBox1.Selected;
  Form1.Shape1.Pen.Color:=ColorBox1.Selected;
   Form1.Shape101.Pen.Color:=ColorBox1.Selected;
    Form1.Shape102.Pen.Color:=ColorBox1.Selected;
     Form1.Shape103.Pen.Color:=ColorBox1.Selected;
      Form1.Shape104.Pen.Color:=ColorBox1.Selected;
       Form1.Shape105.Pen.Color:=ColorBox1.Selected;
        Form1.Shape7.Pen.Color:=ColorBox1.Selected;
         Form1.Shape8.Pen.Color:=ColorBox1.Selected;
          Form1.Shape9.Pen.Color:=ColorBox1.Selected;
          end;
  begin
          Form1.Shape12.Brush.Color:=ColorBox2.Selected;
  Form1.Shape13.Brush.Color:=ColorBox2.Selected;
  Form1.Shape14.Brush.Color:=ColorBox2.Selected;
  Form1.Shape15.Brush.Color:=ColorBox2.Selected;
  Form1.Shape16.Brush.Color:=ColorBox2.Selected;
  Form1.Shape17.Brush.Color:=ColorBox2.Selected;
  Form1.Shape2.Brush.Color:=ColorBox2.Selected;
  Form1.Shape19.Brush.Color:=ColorBox2.Selected;
  Form1.Shape20.Brush.Color:=ColorBox2.Selected;
  Form1.Shape12.Pen.Color:=ColorBox2.Selected;
   Form1.Shape13.Pen.Color:=ColorBox2.Selected;
    Form1.Shape14.Pen.Color:=ColorBox2.Selected;
     Form1.Shape15.Pen.Color:=ColorBox2.Selected;
      Form1.Shape16.Pen.Color:=ColorBox2.Selected;
       Form1.Shape17.Pen.Color:=ColorBox2.Selected;
        Form1.Shape2.Pen.Color:=ColorBox2.Selected;
         Form1.Shape19.Pen.Color:=ColorBox2.Selected;
          Form1.Shape20.Pen.Color:=ColorBox2.Selected;
  end;
  begin
          Form1.Shape21.Brush.Color:=ColorBox3.Selected;
  Form1.Shape22.Brush.Color:=ColorBox3.Selected;
  Form1.Shape23.Brush.Color:=ColorBox3.Selected;
  Form1.Shape24.Brush.Color:=ColorBox3.Selected;
  Form1.Shape25.Brush.Color:=ColorBox3.Selected;
  Form1.Shape26.Brush.Color:=ColorBox3.Selected;
  Form1.Shape3.Brush.Color:=ColorBox3.Selected;
  Form1.Shape28.Brush.Color:=ColorBox3.Selected;
  Form1.Shape29.Brush.Color:=ColorBox3.Selected;
  Form1.Shape21.Pen.Color:=ColorBox3.Selected;
   Form1.Shape22.Pen.Color:=ColorBox3.Selected;
    Form1.Shape23.Pen.Color:=ColorBox3.Selected;
     Form1.Shape24.Pen.Color:=ColorBox3.Selected;
      Form1.Shape25.Pen.Color:=ColorBox3.Selected;
       Form1.Shape26.Pen.Color:=ColorBox3.Selected;
        Form1.Shape3.Pen.Color:=ColorBox3.Selected;
         Form1.Shape28.Pen.Color:=ColorBox3.Selected;
          Form1.Shape29.Pen.Color:=ColorBox3.Selected;
  end;
  begin
          Form1.Shape30.Brush.Color:=ColorBox4.Selected;
  Form1.Shape31.Brush.Color:=ColorBox4.Selected;
  Form1.Shape32.Brush.Color:=ColorBox4.Selected;
  Form1.Shape33.Brush.Color:=ColorBox4.Selected;
  Form1.Shape34.Brush.Color:=ColorBox4.Selected;
  Form1.Shape35.Brush.Color:=ColorBox4.Selected;
  Form1.Shape4.Brush.Color:=ColorBox4.Selected;
  Form1.Shape37.Brush.Color:=ColorBox4.Selected;
  Form1.Shape38.Brush.Color:=ColorBox4.Selected;
  Form1.Shape30.Pen.Color:=ColorBox4.Selected;
   Form1.Shape31.Pen.Color:=ColorBox4.Selected;
    Form1.Shape32.Pen.Color:=ColorBox4.Selected;
     Form1.Shape33.Pen.Color:=ColorBox4.Selected;
      Form1.Shape34.Pen.Color:=ColorBox4.Selected;
       Form1.Shape35.Pen.Color:=ColorBox4.Selected;
        Form1.Shape4.Pen.Color:=ColorBox4.Selected;
         Form1.Shape37.Pen.Color:=ColorBox4.Selected;
          Form1.Shape38.Pen.Color:=ColorBox4.Selected;
  end;
  begin
          Form1.Shape39.Brush.Color:=ColorBox5.Selected;
  Form1.Shape40.Brush.Color:=ColorBox5.Selected;
  Form1.Shape41.Brush.Color:=ColorBox5.Selected;
  Form1.Shape42.Brush.Color:=ColorBox5.Selected;
  Form1.Shape43.Brush.Color:=ColorBox5.Selected;
  Form1.Shape44.Brush.Color:=ColorBox5.Selected;
  Form1.Shape5.Brush.Color:=ColorBox5.Selected;
  Form1.Shape46.Brush.Color:=ColorBox5.Selected;
  Form1.Shape47.Brush.Color:=ColorBox5.Selected;
  Form1.Shape39.Pen.Color:=ColorBox5.Selected;
   Form1.Shape40.Pen.Color:=ColorBox5.Selected;
    Form1.Shape41.Pen.Color:=ColorBox5.Selected;
     Form1.Shape42.Pen.Color:=ColorBox5.Selected;
      Form1.Shape43.Pen.Color:=ColorBox5.Selected;
       Form1.Shape44.Pen.Color:=ColorBox5.Selected;
        Form1.Shape5.Pen.Color:=ColorBox5.Selected;
         Form1.Shape46.Pen.Color:=ColorBox5.Selected;
          Form1.Shape47.Pen.Color:=ColorBox5.Selected;
  end;
  begin
          Form1.Shape48.Brush.Color:=ColorBox6.Selected;
  Form1.Shape49.Brush.Color:=ColorBox6.Selected;
  Form1.Shape50.Brush.Color:=ColorBox6.Selected;
  Form1.Shape51.Brush.Color:=ColorBox6.Selected;
  Form1.Shape52.Brush.Color:=ColorBox6.Selected;
  Form1.Shape53.Brush.Color:=ColorBox6.Selected;
  Form1.Shape6.Brush.Color:=ColorBox6.Selected;
  Form1.Shape55.Brush.Color:=ColorBox6.Selected;
  Form1.Shape56.Brush.Color:=ColorBox6.Selected;
  Form1.Shape48.Pen.Color:=ColorBox6.Selected;
   Form1.Shape49.Pen.Color:=ColorBox6.Selected;
    Form1.Shape50.Pen.Color:=ColorBox6.Selected;
     Form1.Shape51.Pen.Color:=ColorBox6.Selected;
      Form1.Shape52.Pen.Color:=ColorBox6.Selected;
       Form1.Shape53.Pen.Color:=ColorBox6.Selected;
        Form1.Shape6.Pen.Color:=ColorBox6.Selected;
         Form1.Shape55.Pen.Color:=ColorBox6.Selected;
          Form1.Shape56.Pen.Color:=ColorBox6.Selected;
  end;
  color1:=ColorBox1.Selected;
   color2:=ColorBox2.Selected;
    color3:=ColorBox3.Selected;
     color4:=ColorBox4.Selected;
      color5:=ColorBox5.Selected;
       color6:=ColorBox6.Selected;
 Form2.Close;
 aabb:=Form2.ColorBox1.Selected;
 bbaa:=Form2.ColorBox2.Selected;
 cc:=Form2.ColorBox3.Selected;
 dd:=Form2.ColorBox4.Selected;
 ee:=Form2.ColorBox5.Selected;
 ff:=Form2.ColorBox6.Selected;
end;

procedure TForm2.ColorBox1GetColors(Sender: TCustomColorBox; Items: TStrings);
begin
  Items.Clear;
  Items.AddObject('Чёрный',TObject(clBlack));
  Items.AddObject('Бордовый',TObject(clMaroon));
  Items.AddObject('Зелёный',TObject(clGreen));
  Items.AddObject('Оливковый',TObject(clOlive));
  Items.AddObject('Глубокий синий',TObject(clNavy));
  Items.AddObject('Фиолетовый',TObject(clPurple));
  Items.AddObject('Сине-зелёный',TObject(clTeal));
  Items.AddObject('Серый',TObject(clGray));
  Items.AddObject('Серебряный',TObject(clSilver));
  Items.AddObject('Красный',TObject(clRed));
  Items.AddObject('Лаймовый',TObject(clLime));
  Items.AddObject('Жёлтый',TObject(clYellow));
  Items.AddObject('Синий',TObject(clBlue));
  Items.AddObject('Пурпурный',TObject(clFuchsia));
  Items.AddObject('Аквамариноый',TObject(clAqua));
  Items.AddObject('Белый',TObject(clWhite));
end;

procedure TForm2.ColorBox1Select(Sender: TObject);
begin
//  if Form2.ColorBox1.Selected=Form2.ColorBox2.Selected then
  //Form2.ColorBox1.Selected:=clBlack;
end;

procedure TForm2.ColorBox2Change(Sender: TObject);
begin
  if (Form2.ColorBox2.Selected = Form2.ColorBox1.Selected) or
  (Form2.ColorBox2.Selected = Form2.ColorBox3.Selected) or
  (Form2.ColorBox2.Selected = Form2.ColorBox4.Selected) or
  (Form2.ColorBox2.Selected = Form2.ColorBox5.Selected) or
  (Form2.ColorBox2.Selected = Form2.ColorBox6.Selected) then
  Form2.ColorBox2.Selected:=bbb;
  bbb:=Form2.ColorBox2.Selected;
end;

procedure TForm2.ColorBox3Change(Sender: TObject);
begin
  if (Form2.ColorBox3.Selected = Form2.ColorBox1.Selected) or
  (Form2.ColorBox3.Selected = Form2.ColorBox2.Selected) or
  (Form2.ColorBox3.Selected = Form2.ColorBox4.Selected) or
  (Form2.ColorBox3.Selected = Form2.ColorBox5.Selected) or
  (Form2.ColorBox3.Selected = Form2.ColorBox6.Selected) then// begin
  Form2.ColorBox3.Selected:=ccc;
  //ShowMessage('Выберите другой цвет, данный цвет уже использован!');
//  end;
  ccc:=Form2.ColorBox3.Selected;
end;

procedure TForm2.ColorBox4Change(Sender: TObject);
begin
  if (Form2.ColorBox4.Selected = Form2.ColorBox1.Selected) or
  (Form2.ColorBox4.Selected = Form2.ColorBox2.Selected) or
  (Form2.ColorBox4.Selected = Form2.ColorBox3.Selected) or
  (Form2.ColorBox4.Selected = Form2.ColorBox5.Selected) or
  (Form2.ColorBox4.Selected = Form2.ColorBox6.Selected) then// begin
  Form2.ColorBox4.Selected:=ccc;
  //ShowMessage('Выберите другой цвет, данный цвет уже использован!');
//  end;
  ddd:=Form2.ColorBox4.Selected;
end;

procedure TForm2.ColorBox5Change(Sender: TObject);
begin
  if (Form2.ColorBox5.Selected = Form2.ColorBox1.Selected) or
  (Form2.ColorBox5.Selected = Form2.ColorBox2.Selected) or
  (Form2.ColorBox5.Selected = Form2.ColorBox3.Selected) or
  (Form2.ColorBox5.Selected = Form2.ColorBox4.Selected) or
  (Form2.ColorBox5.Selected = Form2.ColorBox6.Selected) then // begin
  Form2.ColorBox5.Selected:=ddd;
  //ShowMessage('Выберите другой цвет, данный цвет уже использован!');
 // end;
  eee:=Form2.ColorBox5.Selected;
end;

procedure TForm2.ColorBox6Change(Sender: TObject);
begin
  if (Form2.ColorBox6.Selected = Form2.ColorBox1.Selected) or
  (Form2.ColorBox6.Selected = Form2.ColorBox2.Selected) or
  (Form2.ColorBox6.Selected = Form2.ColorBox3.Selected) or
  (Form2.ColorBox6.Selected = Form2.ColorBox4.Selected) or
  (Form2.ColorBox6.Selected = Form2.ColorBox5.Selected) then //begin
  Form2.ColorBox6.Selected:=eee;
 // ShowMessage('Выберите другой цвет, данный цвет уже использован!');
 // end;
  fff:=Form2.ColorBox6.Selected;
end;

procedure lulki;
begin
  begin
  Form1.Shape1.Brush.Color:=clRed;
  Form1.Shape101.Brush.Color:=clRed;
  Form1.Shape102.Brush.Color:=clRed;
  Form1.Shape103.Brush.Color:=clRed;
  Form1.Shape104.Brush.Color:=clRed;
  Form1.Shape105.Brush.Color:=clRed;
  Form1.Shape7.Brush.Color:=clRed;
  Form1.Shape8.Brush.Color:=clRed;
  Form1.Shape9.Brush.Color:=clRed;
  Form1.Shape1.Pen.Color:=clRed;
   Form1.Shape101.Pen.Color:=clRed;
    Form1.Shape102.Pen.Color:=clRed;
     Form1.Shape103.Pen.Color:=clRed;
      Form1.Shape104.Pen.Color:=clRed;
       Form1.Shape105.Pen.Color:=clRed;
        Form1.Shape7.Pen.Color:=clRed;
         Form1.Shape8.Pen.Color:=clRed;
          Form1.Shape9.Pen.Color:=clRed;
          end;
  begin
          Form1.Shape12.Brush.Color:=clBlue;
  Form1.Shape13.Brush.Color:=clBlue;
  Form1.Shape14.Brush.Color:=clBlue;
  Form1.Shape15.Brush.Color:=clBlue;
  Form1.Shape16.Brush.Color:=clBlue;
  Form1.Shape17.Brush.Color:=clBlue;
  Form1.Shape2.Brush.Color:=clBlue;
  Form1.Shape19.Brush.Color:=clBlue;
  Form1.Shape20.Brush.Color:=clBlue;
  Form1.Shape12.Pen.Color:=clBlue;
   Form1.Shape13.Pen.Color:=clBlue;
    Form1.Shape14.Pen.Color:=clBlue;
     Form1.Shape15.Pen.Color:=clBlue;
      Form1.Shape16.Pen.Color:=clBlue;
       Form1.Shape17.Pen.Color:=clBlue;
        Form1.Shape2.Pen.Color:=clBlue;
         Form1.Shape19.Pen.Color:=clBlue;
          Form1.Shape20.Pen.Color:=clBlue;
  end;
  begin
          Form1.Shape21.Brush.Color:=clGray;
  Form1.Shape22.Brush.Color:=clGray;
  Form1.Shape23.Brush.Color:=clGray;
  Form1.Shape24.Brush.Color:=clGray;
  Form1.Shape25.Brush.Color:=clGray;
  Form1.Shape26.Brush.Color:=clGray;
  Form1.Shape3.Brush.Color:=clGray;
  Form1.Shape28.Brush.Color:=clGray;
  Form1.Shape29.Brush.Color:=clGray;
  Form1.Shape21.Pen.Color:=clGray;
   Form1.Shape22.Pen.Color:=clGray;
    Form1.Shape23.Pen.Color:=clGray;
     Form1.Shape24.Pen.Color:=clGray;
      Form1.Shape25.Pen.Color:=clGray;
       Form1.Shape26.Pen.Color:=clGray;
        Form1.Shape3.Pen.Color:=clGray;
         Form1.Shape28.Pen.Color:=clGray;
          Form1.Shape29.Pen.Color:=clGray;
  end;
  begin
          Form1.Shape30.Brush.Color:=clYellow;
  Form1.Shape31.Brush.Color:=clYellow;
  Form1.Shape32.Brush.Color:=clYellow;
  Form1.Shape33.Brush.Color:=clYellow;
  Form1.Shape34.Brush.Color:=clYellow;
  Form1.Shape35.Brush.Color:=clYellow;
  Form1.Shape4.Brush.Color:=clYellow;
  Form1.Shape37.Brush.Color:=clYellow;
  Form1.Shape38.Brush.Color:=clYellow;
  Form1.Shape30.Pen.Color:=clYellow;
   Form1.Shape31.Pen.Color:=clYellow;
    Form1.Shape32.Pen.Color:=clYellow;
     Form1.Shape33.Pen.Color:=clYellow;
      Form1.Shape34.Pen.Color:=clYellow;
       Form1.Shape35.Pen.Color:=clYellow;
        Form1.Shape4.Pen.Color:=clYellow;
         Form1.Shape37.Pen.Color:=clYellow;
          Form1.Shape38.Pen.Color:=clYellow;
  end;
  begin
          Form1.Shape39.Brush.Color:=clFuchsia;
  Form1.Shape40.Brush.Color:=clFuchsia;
  Form1.Shape41.Brush.Color:=clFuchsia;
  Form1.Shape42.Brush.Color:=clFuchsia;
  Form1.Shape43.Brush.Color:=clFuchsia;
  Form1.Shape44.Brush.Color:=clFuchsia;
  Form1.Shape5.Brush.Color:=clFuchsia;
  Form1.Shape46.Brush.Color:=clFuchsia;
  Form1.Shape47.Brush.Color:=clFuchsia;
  Form1.Shape39.Pen.Color:=clFuchsia;
   Form1.Shape40.Pen.Color:=clFuchsia;
    Form1.Shape41.Pen.Color:=clFuchsia;
     Form1.Shape42.Pen.Color:=clFuchsia;
      Form1.Shape43.Pen.Color:=clFuchsia;
       Form1.Shape44.Pen.Color:=clFuchsia;
        Form1.Shape5.Pen.Color:=clFuchsia;
         Form1.Shape46.Pen.Color:=clFuchsia;
          Form1.Shape47.Pen.Color:=clFuchsia;
  end;
  begin
          Form1.Shape48.Brush.Color:=clAqua;
  Form1.Shape49.Brush.Color:=clAqua;
  Form1.Shape50.Brush.Color:=clAqua;
  Form1.Shape51.Brush.Color:=clAqua;
  Form1.Shape52.Brush.Color:=clAqua;
  Form1.Shape53.Brush.Color:=clAqua;
  Form1.Shape6.Brush.Color:=clAqua;
  Form1.Shape55.Brush.Color:=clAqua;
  Form1.Shape56.Brush.Color:=clAqua;
  Form1.Shape48.Pen.Color:=clAqua;
   Form1.Shape49.Pen.Color:=clAqua;
    Form1.Shape50.Pen.Color:=clAqua;
     Form1.Shape51.Pen.Color:=clAqua;
      Form1.Shape52.Pen.Color:=clAqua;
       Form1.Shape53.Pen.Color:=clAqua;
        Form1.Shape6.Pen.Color:=clAqua;
         Form1.Shape55.Pen.Color:=clAqua;
          Form1.Shape56.Pen.Color:=clAqua;
end;

end;

end.

