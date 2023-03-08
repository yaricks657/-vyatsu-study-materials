unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  Menus, CheckLst, Grids, ColorBox;

type

  { TForm2 }

  TForm2 = class(TForm)
    Button1: TButton;
    Button2: TButton;
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
    procedure ColorBox1Change(Sender: TObject);
    procedure ColorBox1GetColors(Sender: TCustomColorBox; Items: TStrings);
    procedure FormCreate(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
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

implementation

{$R *.lfm}
uses unit1;
  const Colr: array [1..16] of TColor = (clLime,clred,clBlue,clBlack,clWhite,
  clYellow,clAqua,clFuchsia,clGray,clMaroon,clGreen,clSilver,clpurple,
  clTeal,clOlive,clNavy);

{ TForm2 }

procedure TForm2.RadioGroup1Click(Sender: TObject);
begin

end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  ColorBox1.Style:=ColorBox1.Style + [cbCustomColors];
  ColorBox2.Style:=ColorBox2.Style + [cbCustomColors];
  ColorBox3.Style:=ColorBox3.Style + [cbCustomColors];
  ColorBox4.Style:=ColorBox4.Style + [cbCustomColors];
  ColorBox5.Style:=ColorBox5.Style + [cbCustomColors];
  ColorBox6.Style:=ColorBox6.Style + [cbCustomColors];
end;

procedure TForm2.ColorBox1Change(Sender: TObject);
begin
  //if ColorBox1.Selected = ColorBox2.Selected then

end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  Form2.Close;
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

procedure TForm2.ListBox1Click(Sender: TObject);
begin

end;

end.

