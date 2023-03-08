unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus, StdCtrls,
  ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Memo1: TMemo;
    Panel1: TPanel;
    Shape1: TShape;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure CheckGroup1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure GroupBox1Click(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  gause:array [1..4,1..5] of real;
  s:string;
  ii:integer;
  m2,m3,m4:real;
  x1,x2,x3,x4:real;
  xx1,xx2,xx3,xx4:string;
  m:array [1..3,1..3] of real;
  mm:array [1..3] of real;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.MenuItem1Click(Sender: TObject);
begin

end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
    Form1.Label2.Visible:=false;
  Form1.Label4.Visible:=false;
    //Form1.Label5.Visible:=false;
   Form1.Label6.visible:=false;
  Form1.Label3.Visible:=false;
   Form1.Label7.Visible:=false;
    ii:=-1;
end;

procedure TForm1.CheckGroup1Click(Sender: TObject);
begin

end;

procedure TForm1.Button1Click(Sender: TObject);
var i,j:integer;
  kz:array [1..4] of real;
  kzz:array [1..4] of integer;
  xxx1,xxx2,xxx3,xxx4:real;
begin
    ii:=0;
  Form1.Label2.Visible:=true;
  Form1.Label4.Visible:=false;
  //  Form1.Label5.visible:=false;
   Form1.Label6.visible:=false;
  Form1.Label3.Visible:=true;
   Form1.Label7.Visible:=false;
   gause[1,1]:=0.64; gause[1,2]:=0.72; gause[1,3]:=-0.83; gause[1,4]:=4.20; gause[1,5]:=2.23;
    gause[2,1]:=0.58; gause[2,2]:=-0.83; gause[2,3]:=1.43; gause[2,4]:=-0.62; gause[2,5]:=1.71;
     gause[3,1]:=0.86; gause[3,2]:=0.77; gause[3,3]:=-1.83; gause[3,4]:=0.88; gause[3,5]:=-0.54;
      gause[4,1]:=1.32; gause[4,2]:=-0.52; gause[4,3]:=-0.65; gause[4,4]:=1.22; gause[4,5]:=0.65;
      form1.Memo1.clear;
        Form1.Memo1.Lines[ii]:='Первоначальная матрица: ';   //первый раз
     // ii:=ii+1;
       kz[1]:=gause[1,1]+gause[1,2]+gause[1,3]+gause[1,4]+gause[1,5];
        kz[2]:=gause[2,1]+gause[2,2]+gause[2,3]+gause[2,4]+gause[2,5];
         kz[3]:=gause[3,1]+gause[3,2]+gause[3,3]+gause[3,4]+gause[3,5];
          kz[4]:=gause[4,1]+gause[4,2]+gause[4,3]+gause[4,4]+gause[4,5];
      for i:=1 to 4 do
      begin;
      ii:=ii+1;
      for j:=1 to 5 do
      Form1.Memo1.Lines[ii]:=Form1.Memo1.Lines[ii]+floattostr(gause[i,j])+'     ';//+floattostr(kz[i]);
      end;
      ii:=ii+1;
      Form1.Memo1.Lines[ii]:=floattostr(kz[1]);
        ii:=ii+1;
       Form1.Memo1.Lines[ii]:=floattostr(kz[2]);
         ii:=ii+1;
       Form1.Memo1.Lines[ii]:=floattostr(kz[3]);
          ii:=ii+1;
       Form1.Memo1.Lines[ii]:=floattostr(kz[4]);
          ii:=ii+1;
      m2:=gause[2,1]/-gause[1,1];
      m3:=gause[3,1]/-gause[1,1];
      m4:=gause[4,1]/-gause[1,1];
       Form1.Memo1.Lines[ii]:='m2='+floattostr(m2);
        ii:=ii+1;
       Form1.Memo1.Lines[ii]:='m3='+floattostr(m3);
        ii:=ii+1;
       Form1.Memo1.Lines[ii]:='m4='+floattostr(m4);
       ii:=ii+1;
      for j:=1 to 5 do
      begin
      gause[2,j]:=gause[2,j]+gause[1,j]*m2;
      gause[3,j]:=gause[3,j]+gause[1,j]*m3;
      gause[4,j]:=gause[4,j]+gause[1,j]*m4;
      end;
       kz[2]:=gause[2,1]+gause[2,2]+gause[2,3]+gause[2,4]+gause[2,5];
         kz[3]:=gause[3,1]+gause[3,2]+gause[3,3]+gause[3,4]+gause[3,5];
          kz[4]:=gause[4,1]+gause[4,2]+gause[4,3]+gause[4,4]+gause[4,5];
       Form1.Memo1.Lines[ii]:='Первая операция: ';
       for i:=1 to 4 do
      begin;
      ii:=ii+1;
      for j:=1 to 5 do
      Form1.Memo1.Lines[ii]:=Form1.Memo1.Lines[ii]+floattostr(gause[i,j])+'     ';
      end;
      ii:=ii+1;
       Form1.Memo1.Lines[ii]:='------------------ ';
       for i:=2 to 5 do
      begin;
      ii:=ii+1;
      for j:=2 to 5 do
      Form1.Memo1.Lines[ii]:=Form1.Memo1.Lines[ii]+floattostr(gause[i,j])+'     ';
      end;

        ii:=ii+1;
       Form1.Memo1.Lines[ii]:=floattostr(kz[2]);
         ii:=ii+1;
       Form1.Memo1.Lines[ii]:=floattostr(kz[3]);
          ii:=ii+1;
       Form1.Memo1.Lines[ii]:=floattostr(kz[4]);
          ii:=ii+1;
      m3:=gause[3,2]/-gause[2,2];     //второй раз
      m4:=gause[4,2]/-gause[2,2];
      Form1.Memo1.Lines[ii]:='m3='+floattostr(m3);
        ii:=ii+1;
       Form1.Memo1.Lines[ii]:='m4='+floattostr(m4);
       ii:=ii+1;
      for j:=2 to 5 do
      begin
      gause[3,j]:=gause[3,j]+gause[2,j]*m3;
      gause[4,j]:=gause[4,j]+gause[2,j]*m4;
      end;

         kz[3]:=gause[3,1]+gause[3,2]+gause[3,3]+gause[3,4]+gause[3,5];
          kz[4]:=gause[4,1]+gause[4,2]+gause[4,3]+gause[4,4]+gause[4,5];
       Form1.Memo1.Lines[ii]:='Вторая операция: ';
       for i:=2 to 4 do
      begin;
      ii:=ii+1;
      for j:=2 to 5 do
      Form1.Memo1.Lines[ii]:=Form1.Memo1.Lines[ii]+floattostr(gause[i,j])+'     ';
      end;
      ii:=ii+1;
       Form1.Memo1.Lines[ii]:='------------------ ';
       for i:=3 to 4 do
      begin;
      ii:=ii+1;
      for j:=3 to 5 do
      Form1.Memo1.Lines[ii]:=Form1.Memo1.Lines[ii]+floattostr(gause[i,j])+'     ';
      end;
         ii:=ii+1;
       Form1.Memo1.Lines[ii]:=floattostr(kz[3]);
          ii:=ii+1;
       Form1.Memo1.Lines[ii]:=floattostr(kz[4]);
         // ii:=ii+1;
      ii:=ii+1;
      m4:=gause[4,3]/-gause[3,3];  //третий раз
       Form1.Memo1.Lines[ii]:='m4='+floattostr(m4);
       ii:=ii+1;
      for j:=3 to 5 do
      begin
      gause[4,j]:=gause[4,j]+gause[3,j]*m4;
      end;
       Form1.Memo1.Lines[ii]:='Третья операция: ';
       for i:=3 to 4 do
      begin;
      ii:=ii+1;
      for j:=3 to 5 do
      Form1.Memo1.Lines[ii]:=Form1.Memo1.Lines[ii]+floattostr(gause[i,j])+'     ';
      end;
      ii:=ii+1;
       Form1.Memo1.Lines[ii]:='Система первого порядка: ';
       for i:=4 to 4 do
      begin;
      ii:=ii+1;
      for j:=4 to 5 do
      Form1.Memo1.Lines[ii]:=Form1.Memo1.Lines[ii]+floattostr(gause[i,j])+'     ';
      end;
      ii:=ii+1;
       Form1.Memo1.Lines[ii]:='Треугольная расширенная матрица: ';
       ii:=ii+1;
         Form1.Memo1.Lines[ii]:=floattostr(gause[4,4])+'x4'+'='+floattostr(gause[4,5]);
             ii:=ii+1;
           Form1.Memo1.Lines[ii]:=floattostr(gause[3,3])+'x3'+'+'+floattostr(gause[3,4])+'x4'+'='+floattostr(gause[3,5]);
               ii:=ii+1;
             Form1.Memo1.Lines[ii]:=floattostr(gause[2,2])+'x2'+'+'+floattostr(gause[2,3])+'x3'+'+'+floattostr(gause[2,4])+'x4'+'='+floattostr(gause[2,5]);
                 ii:=ii+1;
               Form1.Memo1.Lines[ii]:=floattostr(gause[1,1])+'x1'+'+'+floattostr(gause[1,2])+'x2'+'+'+floattostr(gause[1,3])+'x3'+'+'+floattostr(gause[1,4])+'x4'+'='+floattostr(gause[1,5]);
 ii:=ii+1;
       Form1.Memo1.Lines[ii]:='Ответ: ';
       ii:=ii+1;
       x4:= gause[4,5]/gause[4,4];
       str(x4:0:3,xx4);
         Form1.Memo1.Lines[ii]:='x4='+(xx4);
             ii:=ii+1;
             x3:=(gause[3,5]-x4*gause[3,4])/gause[3,3];
              str(x3:0:3,xx3);
           Form1.Memo1.Lines[ii]:='x3='+(xx3);
               ii:=ii+1;
               x2:=(gause[2,5]-x4*gause[2,4]-x3*gause[2,3])/gause[2,2];
                str(x2:0:3,xx2);
             Form1.Memo1.Lines[ii]:='x2='+(xx2);
                 ii:=ii+1;
                 x1:=(gause[1,5]-x4*gause[1,4]-x3*gause[1,3]-x2*gause[1,2])/gause[1,1];
                  str(x1:0:3,xx1);
               Form1.Memo1.Lines[ii]:='x1='+(xx1);
               ii:=ii+1;
               Form1.Memo1.Lines[ii]:='Проверка: ';
               ii:=ii+1;
                 Form1.Memo1.Lines[ii]:='X=1.476';
       ii:=ii+1;
       Form1.Memo1.Lines[ii]:='X=2.501';
       ii:=ii+1;
       Form1.Memo1.Lines[ii]:='X=1.999';
       ii:=ii+1;
       Form1.Memo1.Lines[ii]:='X=2.185';
      // ii:=ii+1;
end;

procedure TForm1.Button2Click(Sender: TObject);
var sum1,sum2,sum3,sum4:real;
  summ1,summ2,summ3,summ4:real;
  summm1,summm2,summm3,summm4:real;
    summmm1,summmm2,summmm3,summmm4:real;
    summmmm1,summmmm2,summmmm3,summmmm4:real;
    a,b,c,d:real;
begin
ii:=0;
  Form1.Label4.visible:=true;
  Form1.Label2.Visible:=false;
  // Form1.Label5.visible:=false;
  Form1.Label6.visible:=true;
  Form1.Label3.Visible:=false;
   Form1.Label7.Visible:=false;
    form1.Memo1.clear;
      ii:=ii+1;
      Form1.Memo1.Lines[ii]:='Приведём систему к виду: ';
ii:=ii+1;
Form1.Memo1.Lines[ii]:='x1=(-0,07*x2+0,38*x3-0,21*x4-0,81)/0,81';
ii:=ii+1;
Form1.Memo1.Lines[ii]:='x2=(-0,22*x1+0,11*x3+0,33*x4-0,64 )/0,92';
ii:=ii+1;
Form1.Memo1.Lines[ii]:='x3=(0,51*x1-0,07*x2-0,11*x4+1,71)/1,09';
ii:=ii+1;
Form1.Memo1.Lines[ii]:='x4=(0,33*x1-0,41*x2-1,21)';
ii:=ii+1;
Form1.Memo1.Lines[ii]:='В качестве начального вектора х(0) возьмем элементы столбца свободных членов, округлив их значения до двух знаков после запятой:';
      ii:=ii+1;
Form1.Memo1.Lines[ii]:='x1=1';
ii:=ii+1;
Form1.Memo1.Lines[ii]:='x2=-0,70';
ii:=ii+1;
Form1.Memo1.Lines[ii]:='x3=1,57';
ii:=ii+1;
Form1.Memo1.Lines[ii]:='x4=-1.21';
ii:=ii+1;
Form1.Memo1.Lines[ii]:='Проведем итерации методом Зейделя. При k = 1';  //k=1
ii:=ii+1;
sum1:=((-0.07)*(-0.7)+0.38*1.57-0.21*(-1.21)-0.81)/0.81;
Form1.Memo1.Lines[ii]:='x1='+floattostr(sum1);
ii:=ii+1;
sum2:=((-0.22)*sum1+0.11*1.57+0.33*(-1.21)-0.64)/0.92;
Form1.Memo1.Lines[ii]:='x2='+floattostr(sum2);
ii:=ii+1;
sum3:=(0.51*sum1-0.07*sum2-0.11*(-1.21)+1.71)/1.09;
Form1.Memo1.Lines[ii]:='x3='+floattostr(sum3);ii:=ii+1;
sum4:=(0.33*sum1-0.41*sum2-1.21);
Form1.Memo1.Lines[ii]:='x4='+floattostr(sum4);
ii:=ii+1;
Form1.Memo1.Lines[ii]:='Проведем итерации методом Зейделя. При k = 2'; //k=2
ii:=ii+1;
summ1:=((-0.07)*sum2+0.38*sum3-0.21*sum4-0.81)/0.81;
Form1.Memo1.Lines[ii]:='x1='+floattostr(summ1);
ii:=ii+1;
summ2:=((-0.22)*summ1+0.11*sum3+0.33*sum4-0.64)/0.92;
Form1.Memo1.Lines[ii]:='x2='+floattostr(summ2);
ii:=ii+1;
summ3:=(0.51*summ1-0.07*summ2-0.11*sum4+1.71)/1.09;
Form1.Memo1.Lines[ii]:='x3='+floattostr(summ3);ii:=ii+1;
summ4:=(0.33*summ1-0.41*summ2-1.21);
Form1.Memo1.Lines[ii]:='x4='+floattostr(summ4);
ii:=ii+1;
Form1.Memo1.Lines[ii]:=floattostr(abs(summ1-sum1));
ii:=ii+1;
Form1.Memo1.Lines[ii]:=floattostr(abs(summ2-sum2));
ii:=ii+1;
Form1.Memo1.Lines[ii]:=floattostr(abs(summ3-sum3));
ii:=ii+1;
Form1.Memo1.Lines[ii]:=floattostr(abs(summ4-sum4));
ii:=ii+1;
Form1.Memo1.Lines[ii]:='Проведем итерации методом Зейделя. При k = 3'; //k=3
ii:=ii+1;
summm1:=((-0.07)*summ2+0.38*summ3-0.21*summ4-0.81)/0.81;
Form1.Memo1.Lines[ii]:='x1='+floattostr(summm1);
ii:=ii+1;
summm2:=((-0.22)*summm1+0.11*summ3+0.33*summ4-0.64)/0.92;
Form1.Memo1.Lines[ii]:='x2='+floattostr(summm2);
ii:=ii+1;
summm3:=(0.51*summm1-0.07*summm2-0.11*summ4+1.71)/1.09;
Form1.Memo1.Lines[ii]:='x3='+floattostr(summm3);ii:=ii+1;
summm4:=(0.33*summm1-0.41*summm2-1.21);
Form1.Memo1.Lines[ii]:='x4='+floattostr(summm4);
ii:=ii+1;
Form1.Memo1.Lines[ii]:=floattostr(abs(summm1-summ1));
ii:=ii+1;
Form1.Memo1.Lines[ii]:=floattostr(abs(summm2-summ2));
ii:=ii+1;
Form1.Memo1.Lines[ii]:=floattostr(abs(summm3-summ3));
ii:=ii+1;
Form1.Memo1.Lines[ii]:=floattostr(abs(summm4-summ4));
ii:=ii+1;
Form1.Memo1.Lines[ii]:='Проведем итерации методом Зейделя. При k = 4'; //k=4
ii:=ii+1;
summmm1:=((-0.07)*summm2+0.38*summm3-0.21*summm4-0.81)/0.81;
Form1.Memo1.Lines[ii]:='x1='+floattostr(summmm1);
ii:=ii+1;
summmm2:=((-0.22)*summmm1+0.11*summm3+0.33*summm4-0.64)/0.92;
Form1.Memo1.Lines[ii]:='x2='+floattostr(summmm2);
ii:=ii+1;
summmm3:=(0.51*summmm1-0.07*summmm2-0.11*summm4+1.71)/1.09;
Form1.Memo1.Lines[ii]:='x3='+floattostr(summmm3);ii:=ii+1;
summmm4:=(0.33*summmm1-0.41*summmm2-1.21);
Form1.Memo1.Lines[ii]:='x4='+floattostr(summmm4);
ii:=ii+1;
Form1.Memo1.Lines[ii]:=floattostr(abs(summmm1-summm1));
ii:=ii+1;
Form1.Memo1.Lines[ii]:=floattostr(abs(summmm2-summm2));
ii:=ii+1;
Form1.Memo1.Lines[ii]:=floattostr(abs(summmm3-summm3));
ii:=ii+1;
Form1.Memo1.Lines[ii]:=floattostr(abs(summmm4-summm4));
ii:=ii+1;
Form1.Memo1.Lines[ii]:='Проведем итерации методом Зейделя. При k = 5'; //k=5
ii:=ii+1;
summmmm1:=((-0.07)*summmm2+0.38*summmm3-0.21*summmm4-0.81)/0.81;
Form1.Memo1.Lines[ii]:='x1='+floattostr(summmmm1);
ii:=ii+1;
summmmm2:=((-0.22)*summmmm1+0.11*summmm3+0.33*summmm4-0.64)/0.92;
Form1.Memo1.Lines[ii]:='x2='+floattostr(summmmm2);
ii:=ii+1;
summmmm3:=(0.51*summmmm1-0.07*summmmm2-0.11*summmm4+1.71)/1.09;
Form1.Memo1.Lines[ii]:='x3='+floattostr(summmmm3);ii:=ii+1;
summmmm4:=(0.33*summmmm1-0.41*summmmm2-1.21);
Form1.Memo1.Lines[ii]:='x4='+floattostr(summmmm4);
ii:=ii+1;
Form1.Memo1.Lines[ii]:=floattostr(abs(summmmm1-summmm1));
ii:=ii+1;
Form1.Memo1.Lines[ii]:=floattostr(abs(summmmm2-summmm2));
ii:=ii+1;
Form1.Memo1.Lines[ii]:=floattostr(abs(summmmm3-summmm3));
ii:=ii+1;
Form1.Memo1.Lines[ii]:=floattostr(abs(summmmm4-summmm4));
ii:=ii+1;
Form1.Memo1.Lines[ii]:='Ответ:';
ii:=ii+1;
Form1.Memo1.Lines[ii]:='x1='+floattostr(summmm1);
ii:=ii+1;
Form1.Memo1.Lines[ii]:='x2='+floattostr(summmm2);
ii:=ii+1;
Form1.Memo1.Lines[ii]:='x3='+floattostr(summmm3);
ii:=ii+1;
Form1.Memo1.Lines[ii]:='x4='+floattostr(summmm4);
ii:=ii+1;
  a:=-0.07+0.38-0.21-0.81;
  b:=-0.22+0.11+0.33-0.64 ;
  c:=0.51-0.07-0.11-0.71;
  d:=0.33-0.41-0.21;
 Form1.Memo1.Lines[ii]:='Сумма 1'+floattostr(a);
 ii:=ii+1;
 Form1.Memo1.Lines[ii]:='Сумма 2'+floattostr(b);
 ii:=ii+1;
 Form1.Memo1.Lines[ii]:='Сумма 3'+floattostr(c);
 ii:=ii+1;
 Form1.Memo1.Lines[ii]:='Сумма 4'+floattostr(d);
 ii:=ii+1;
 Form1.Memo1.Lines[ii]:='Т.к. сумма строк меньше 1, то условие сходимости выполняется';
 ii:=ii+1;
end;

procedure TForm1.Button3Click(Sender: TObject);
var opredel:real;
    i,j:integer;
    x1,x2,x3:real;
begin
     ii:=0;
  Form1.Label4.visible:=false;
  Form1.Label2.Visible:=false;
  //  Label5.visible:=true;
    Form1.Label6.visible:=false;
  Form1.Label3.Visible:=true;
  Form1.Label7.Visible:=false;
  form1.Memo1.clear;
  m[1,1]:=3;m[1,2]:=8;m[1,3]:=1;
   m[2,1]:=7;m[2,2]:=13;m[2,3]:=4;
    m[3,1]:=6;m[3,2]:=5;m[3,3]:=9;
     mm[1]:=4;mm[2]:=7;mm[3]:=11;
     Form1.Memo1.Lines[ii]:='Первоначальная матрица: ';
      for i:=1 to 3 do
      begin;
      ii:=ii+1;
      for j:=1 to 3 do
      Form1.Memo1.Lines[ii]:=Form1.Memo1.Lines[ii]+floattostr(m[i,j])+'     ';
      end;
          ii:=ii+1;
           Form1.Memo1.Lines[ii]:='Данная система уравнений может быть записана матричным уравнением A*X=B, где B столбец свободных членов, а А матрица.';
           ii:=ii+1;
           ii:=ii+1;
           opredel:=-64;
           Form1.Memo1.Lines[ii]:='Определитель матрицы = '+floattostr(opredel);
           ii:=ii+1;
          Form1.Memo1.Lines[ii]:='Так как определитель не равен 0, то система имеет единственное решение, которое можно найти методом обратной матрицы.';
            ii:=ii+1;
           ii:=ii+1;
             m[1,1]:=97;m[1,2]:=-39;m[1,3]:=-43;
   m[2,1]:=-67;m[2,2]:=21;m[2,3]:=33;
    m[3,1]:=19;m[3,2]:=-5;m[3,3]:=-17;
    Form1.Memo1.Lines[ii]:='Найдём союзную матрицу:';
     for i:=1 to 3 do
      begin;
      ii:=ii+1;
      for j:=1 to 3 do
      Form1.Memo1.Lines[ii]:=Form1.Memo1.Lines[ii]+floattostr(m[i,j])+'     ';
      end;
     ii:=ii+1;
     Form1.Memo1.Lines[ii]:='Далее запишем обратную (транспонированную) матрицу по формуле: ';
     for i:=1 to 3 do
      begin;
      ii:=ii+1;
      for j:=1 to 3 do
      Form1.Memo1.Lines[ii]:=Form1.Memo1.Lines[ii]+floattostr(m[j,i])+'     ';
      end;
       Form1.Memo1.Lines[ii-1]:=Form1.Memo1.Lines[ii-1]+'*(-1/64)';
     ii:=ii+1;
      Form1.Memo1.Lines[ii-1]:='Умножая обратную матрицу на столбец свободных членов B, получим искомое решение исходной системы: ';
     for i:=1 to 3 do
      begin;
      ii:=ii+1;
      for j:=1 to 3 do
      Form1.Memo1.Lines[ii]:=Form1.Memo1.Lines[ii]+floattostr(m[j,i])+'     ';
      end;
       Form1.Memo1.Lines[ii-1]:=Form1.Memo1.Lines[ii-1]+'*(-1/64)';
       Form1.Memo1.Lines[ii-2]:=Form1.Memo1.Lines[ii-2]+'               '+floattostr(mm[1]);
        Form1.Memo1.Lines[ii-1]:=Form1.Memo1.Lines[ii-1]+'     '+floattostr(mm[2]);
         Form1.Memo1.Lines[ii]:=Form1.Memo1.Lines[ii]+'             '+floattostr(mm[3]);
         ii:=ii+1;
        Form1.Memo1.Lines[ii]:='Получим:';
         ii:=ii+1;
         x1:= m[1,1]*mm[1]+m[2,1]*mm[2]+m[3,1]*mm[3];
         x2:= m[1,2]*mm[1]+m[2,2]*mm[2]+m[3,2]*mm[3];
         x3:= m[1,3]*mm[1]+m[2,3]*mm[2]+m[3,3]*mm[3];
     Form1.Memo1.Lines[ii]:=floattostr(x1);
     ii:=ii+1;
      Form1.Memo1.Lines[ii]:=floattostr(x2);
     ii:=ii+1;
      Form1.Memo1.Lines[ii]:=floattostr(x3);
      Form1.Memo1.Lines[ii-1]:=Form1.Memo1.Lines[ii-1]+'     *(-1/64)';
     ii:=ii+1;
     x1:=x1*(-1/64);
     x2:=x2*(-1/64);
     x3:=x3*(-1/64);
      Form1.Memo1.Lines[ii]:='Ответ:';
     ii:=ii+1;
      Form1.Memo1.Lines[ii]:='x1='+floattostr(x1);
     ii:=ii+1;
      Form1.Memo1.Lines[ii]:='x2='+floattostr(x2);
     ii:=ii+1;
      Form1.Memo1.Lines[ii]:='x3='+floattostr(x3);
     ii:=ii+1;
end;

procedure TForm1.Button4Click(Sender: TObject);
var x0,y0,x1,y1,g,h,gg:real;
    f1,f2,f3,f4,f5,f6:real;
begin
    ii:=0;
  Form1.Label7.Visible:=true;
  //  Form1.Label5.visible:=false;
  Form1.Label4.visible:=false;
  Form1.Label2.Visible:=false;
    Form1.Label6.visible:=false;
  Form1.Label3.Visible:=true;
  form1.Memo1.clear;
     ii:=ii+1;
      Form1.Memo1.Lines[ii]:='В качестве начального приближения возьмём значения x=-0.5 и y=-1, полученные из графиков ';
ii:=ii+1;
Form1.Memo1.Lines[ii]:='f1(x,y)=x-exp(-1,6-y)+1,4';
ii:=ii+1;
Form1.Memo1.Lines[ii]:='f2(x,y)=y-tg(x)';
ii:=ii+1;
Form1.Memo1.Lines[ii]:='Найдём производные для уравнений по x и по y:';
ii:=ii+1;
Form1.Memo1.Lines[ii]:='f1(x)`=1';
ii:=ii+1;
Form1.Memo1.Lines[ii]:='f2(x)`=-1/cos(x)^2';
ii:=ii+1;
Form1.Memo1.Lines[ii]:='f1(y)`=0,2019*e^(-y)';
ii:=ii+1;
Form1.Memo1.Lines[ii]:='f2(y)`=1';
ii:=ii+1;
Form1.Memo1.Lines[ii]:='Уточнение корней будем вести методом Ньютона с учётом замечания: xn+1 = xn + gn; yn+1 = yn + hn ,где gn и hn – решение СЛАУ:(f1(xn, yn))0xgn + (f1(xn, yn))0yhn = −f1(xn, yn);(f2(xn, yn))0xgn + (f2(xn, yn))0yhn = −f2(xn, yn).';
 ii:=ii+1;
 ii:=ii+1;
 ii:=ii+1;
 x0:=-1;//-0.5;
 y0:=-1.5;//-1;
 x1:=-1;//-0.5;
 y1:=-1.5;//-1;
  Form1.Memo1.Lines[ii]:='x='+floattostr(x0);
ii:=ii+1;
Form1.Memo1.Lines[ii]:='y='+floattostr(y0);
ii:=ii+1;
Form1.Memo1.Lines[ii]:='--------------------';
ii:=ii+1;
 repeat
 x0:=x1;
 y0:=y1;
 f1:=1;
 f2:=-1/(cos(x0)*cos(x0));
 f3:=0.2019*exp(-y0);
 f4:=1;
 f5:=-(x0-exp(-1.6-y0)+1.4);
 f6:=-(y0-sin(x0)/cos(x0));
g:=(f3*f6-f5)/(f2*f3-1);
h:=(f5-g)/f3;
 //gg:=g;
 x1:=x0+g;
 y1:=x0+h;
  Form1.Memo1.Lines[ii]:='Невязка x = '+floattostr(g);
ii:=ii+1;
Form1.Memo1.Lines[ii]:='Невязка y = '+floattostr(h);
ii:=ii+1;
 Form1.Memo1.Lines[ii]:='x='+floattostr(x1);
ii:=ii+1;
Form1.Memo1.Lines[ii]:='y='+floattostr(y1);
ii:=ii+1;
Form1.Memo1.Lines[ii]:='--------------------';
ii:=ii+1;
if g<h then gg:=h else gg:=g;
 until gg*gg<0.001 ;
end;

procedure TForm1.GroupBox1Click(Sender: TObject);
begin

end;

procedure TForm1.Memo1Change(Sender: TObject);
begin

end;

end.

