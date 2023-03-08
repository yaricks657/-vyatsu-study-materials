unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, XPMan, Buttons, jpeg, ExtCtrls, Menus;

type
  TForm1 = class(TForm)
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    btn1: TButton;
    btn2: TButton;
    lbl1: TLabel;
    lbl3: TLabel;
    btn3: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    PaintBox: TPaintBox;
    lbl2: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    procedure btn1Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses unit2, Unit3, Unit5;
{$R *.dfm}

function f(x: real):real;
begin
        f:=sqrt(x+1)-1/x;
end;

function f1(x:real):real;
begin
        f1:=1/(2*sqrt(x+1))+1/x*x;
end;

function f2(x: real): real;
begin
        f2:=1/(4*sqrt(x+1)*(x+1))-2/x*x*x;
end;

procedure narrow(var a,b,e: real);
var
    m, M1: real;
    stop: Boolean;
    flag1B, flag2B: boolean;
begin
  stop:=False;
  while not stop do
    begin
      if Abs(f1(a))<Abs(f1(b)) then m:=Abs(f1(a))
        else m:=Abs(f1(b));
      if M1 <= 2*m then
        begin
            form1.edt1.Text:=floattostr(a);
            form1.edt2.Text:=floattostr(b);
            Exit;
        end
      else
      begin
        if (f(b)*f(a+e)<0) then a:=a+e;
        if (f(b-e)*f(a)<0) then b:=b-e;
        if (f(b)*f(a)>0) then
          begin
            form1.edt1.Text:=floattostr(a);
            form1.edt2.Text:=floattostr(b);
            Exit;
          end;
        end;
    end;

end;

procedure rec(a,b: Real; count: Byte);
begin
  with Form2.strngrd1 do
    begin
      a:=StrToFloat(formatfloat('0.00000000',a));
      b:=StrToFloat(FormatFloat('0.00000000',b));
      Cells[count,0]:=IntToStr(count);
      Cells[count,1]:=FormatFloat('0.00000000',b);
      Cells[count,2]:=formatfloat('0.00000000',a);
      Cells[count,3]:=formatfloat('0.00000000', Abs(b-a));
    end;
end;

procedure ini(count: Byte);
begin
  with Form2.strngrd1 do
  begin
    RowCount:=4;
    colcount:=count;
  end;
end;

procedure ini2(count: Byte);
begin
  with Form3.strngrd1 do
  begin
    RowCount:=count;
    colcount:=4;
  end;
end;

procedure combin(a,b,e: Real);
var
    flagA: boolean;
    stop: boolean;
    temp1,temp2: real;
    count: Byte;
begin
  narrow(a,b,e);
  temp1:=a;
  temp2:=b;
  if (f(temp2)*f2(temp2)>0) then flagA:=False
  else  flagA:=True;
  if flagA then form2.strngrd1.Cells[0,0]:='����� A ����������'
  else form2.strngrd1.Cells[0,0]:='����� B ����������';
  count:=1;
  stop:=false;
  while not stop do
    begin
      if not flagA then
        begin
          a:=temp1-(f(temp1)*(temp2-temp1))/(f(temp2)-f(temp1));
          b:=temp2-f(temp2)/f1(temp2);
          temp1:=a;
          temp2:=b;
          rec(a,b,count);
          Inc(count);
        end
      else
        begin
          a:=temp1-f(temp1)/f1(temp1);
          b:=temp2-(f(temp2)*(temp2-temp1))/(f(temp2)-f(temp1));
          temp1:=a;
          temp2:=b;
          rec(a,b,count);
          Inc(count);
        end;
      if Abs(b-a)<=e then stop:=true;
      Ini(count);
    end;
end;

procedure TForm1.btn1Click(Sender: TObject);
var x1,x2,e : Real;
begin
  try
    x1:=StrToFloat(edt1.Text);
    x2:=StrToFloat(edt2.Text);
    e:=StrToFloat(edt3.Text);
  except
    ShowMessage('������ ��� ���������� ������');
  end;
  combin(x1,x2,e);;
  Form2.Show;
end;

procedure TForm1.btn3Click(Sender: TObject);
var x1,x2,e : Real;
begin
  try
    x1:=StrToFloat(edt1.Text);
    x2:=StrToFloat(edt2.Text);
    e:=StrToFloat(edt3.Text);
  except
    ShowMessage('������ ��� ���������� ������');
  end;
  narrow(x1,x2,e);
  edt1.text:=FloatToStr(x1);
  edt2.text:=FloatToStr(x2);
end;

procedure iterrec(a, b: real; count:Byte);
begin
  with Form3.strngrd1 do
    begin
      a:=StrToFloat(formatfloat('0.00000000',a));
      b:=StrToFloat(FormatFloat('0.00000000',b));
      Cells[0,count]:=IntToStr(count);
      Cells[1,count]:=FormatFloat('0.00000000',a);
      Cells[2,count]:=FormatFloat('0.00000000',b);
      Cells[3,count]:=Formatfloat('0.00000000',Abs(b-a));
    end;
end;

procedure iteration(a,b,e: real);
var
  temp: real;
  k: real;
  stop: Boolean;
  count: byte;
  q: real;
  flag: Boolean;
  begin
  narrow(a,b,e);
  flag:=false;
  if (f1(a)>0) and (f1(a)<1) then
    begin
      if (f1(a)>f1(b)) then  q:=f1(a)
        else q:=f1(b);
        flag:= True;
    end;
  temp:=a;
  count:=1;
  stop:=false;
  while (not stop) and (count<30) do
    begin
      k:=-1/f1(a);
      a:=temp+k*f(temp);
      iterrec(a,temp,count);
      Inc(count);
      if (not flag) and (abs(a-temp)<=e) then stop:=true
      else
      if (flag) and (Abs(a-temp)<=((1-q)/q)*e) then stop:=true
      else temp:=a;
    end;
  ini2(count);
  end;

procedure TForm1.btn2Click(Sender: TObject);
var x1,x2,e : Real;
begin
  try
    x1:=StrToFloat(edt1.Text);
    x2:=StrToFloat(edt2.Text);
    e:=StrToFloat(edt3.Text);
  except
    ShowMessage('������ ��� ���������� ������');
  end;
  iteration(x1,x2,e);
  Form3.Show;
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
  Form5.show;
end;

Function MyFunc(x : real) : real;
begin
    MyFunc:=sqrt(x+1)-1/x;
end;

procedure TForm1.Button1Click(Sender: TObject);
var i, j, n, k, x0,y0 : Integer;
    m : real;
begin
    x0:= 250;
    y0:= 250;

    Button1.Enabled := False;
    With PaintBox.Canvas do // ���
      begin
        Brush.Color := ClWhite;
        FillRect(PaintBox.Canvas.ClipRect);
        MoveTo(0, 250);
        LineTo(500, 250);
        MoveTo(250, 0);
        LineTo(250, 500);
        Brush.Color := clBlack;
        Polygon([Point(245, 10), Point(250, 0), Point(255,10)]);
        Polygon([Point(490, 245), Point(500, 250), Point(490, 255)]);
        Brush.Color := ClWhite;
        Pen.Color := clBlack;
        TextOut(260, 5, 'Y');
        TextOut(485, 260, 'X');
        TextOut(10, 10, '1 ��. ������� �� X = 0.5');
        TextOut(10, 30, '1 ��. ������� �� Y = 5');
        TextOut(252, 252, '0');
      end;

    PaintBox.Canvas.MoveTo(0, 250);
    for i := 1 to 50 do
      With PaintBox.Canvas do    //������
        begin
           Pen.Color := clBlack;
           Moveto(i*50, y0-3);
           Lineto(i*50, y0+4);
           Moveto(x0-3, i*50);
           Lineto(x0+4, i*50);
        end;


     m := -0.8;
     While m<10 do
        begin

          With PaintBox.Canvas do
            begin
              Pen.Color := clBlue;
              MoveTo(round(m*100) + x0, round(-f(m)*10.0) + y0);
              LineTo(round((m+0.00001)*100) + x0, round(-f(m+0.00001)*10.0) + y0);
            end;
           m := m + 0.00001;
        end;

end;

procedure TForm1.FormCreate(Sender: TObject);
var x:Real;
begin
Lbl5.Caption:='F(0.4)='+FloatToStr(f(0.4));
Lbl6.Caption:='F(0.8)='+FloatToStr(f(0.8));
Lbl7.Caption:='F(0.4)='+FloatToStr(f1(0.4));
Lbl8.Caption:='F(0.8)='+FloatToStr(f1(0.8));
Lbl9.Caption:='F(0.4)"='+FloatToStr(f2(0.4));
Lbl10.Caption:='F(0.8)"='+FloatToStr(f2(0.8));
end;

end.
