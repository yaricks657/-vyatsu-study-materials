unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OpenGL, DGLUT, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    tmr1: TTimer;
    pnl1: TPanel;
    rb1: TRadioButton;
    rb2: TRadioButton;
    rb3: TRadioButton;
    rb4: TRadioButton;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    tmr2: TTimer;
    tmr3: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure tmr1Timer(Sender: TObject);
    procedure rb2Click(Sender: TObject);
    procedure rb3Click(Sender: TObject);
    procedure rb4Click(Sender: TObject);
    procedure rb1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure tmr2Timer(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure tmr3Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  HRC : HGLRC ;
  Sphere_amb: array[0..3] of GLfloat = (1,1,1,0);
  Sphere_spec: array[0..3] of GLfloat = (1,1,1,0);
  Sphere_dif: array[0..3] of GLfloat = (1,1,1,0);
  Light_pos: array [0..3] of GLfloat;
  a: Glfloat = 0.001;
  L: boolean;
  X,Y,phi: single;
  shin: single = 50;
  i,j:real;
  gg,d:real;
  ggg:boolean;
implementation

{$R *.dfm}

procedure SetDCPixelFormat ( hdc : HDC );
 var
  pfd : TPixelFormatDescriptor;
  nPixelFormat : Integer;
 begin
  FillChar (pfd, SizeOf (pfd), 0);
  pfd.dwFlags  := PFD_DRAW_TO_WINDOW or PFD_SUPPORT_OPENGL or PFD_DOUBLEBUFFER;
   nPixelFormat := ChoosePixelFormat (hdc, @pfd);
  SetPixelFormat (hdc, nPixelFormat, @pfd);
 end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  i:=1;
  j:=3;
  d:=1;
  tmr1.Enabled:=False;
  tmr2.Enabled:=False;
   tmr3.Enabled:=False;
  SetDCPixelFormat(Canvas.Handle);
  hrc := wglCreateContext(Canvas.Handle);
  wglMakeCurrent(Canvas.Handle, hrc);
  glEnable(GL_DEPTH_TEST); // включаем проверку разрешения фигур (впереди стоящая закрывает фигуру за ней)
  glDepthFunc(GL_LEQUAL);  //тип проверки
  glEnable(GL_LIGHTING);
  glEnable(GL_LIGHT0);
end;

procedure TForm1.FormPaint(Sender: TObject);
begin
 // FormResize(Sender); //процедура обновления

  glrotatef(90,1,0,0);
  if (GetAsyncKeyState(VK_UP)<>0) and (shin>=0) then shin:=shin-0.1;
  if (GetAsyncKeyState(VK_DOWN)<>0) and (shin<=128) then shin:=shin+0.1;
  phi:=phi+0.09;

  Light_pos[2]:=3*cos(phi*PI/180);   // изменение позиции источника света
  Light_pos[1]:=3*sin(phi*PI/180);   // изменение позиции источника света
  Light_pos[0]:=1;

 glLightfv(GL_LIGHT0,GL_POSITION,@Light_pos);  // задаём позицию источника света



 glClearColor (1, 1, 1, 1.0); // цвет фона
 glClear (GL_COLOR_BUFFER_BIT or GL_DEPTH_BUFFER_BIT); // очистка буфера цвета

 glmaterialfv(GL_FRONT_AND_BACK,GL_AMBIENT,@Sphere_amb);    //рассеянный цвет
 glmaterialfv(GL_FRONT_AND_BACK,GL_SPECULAR,@Sphere_spec);  //зеркальный цвет
 glmaterialfv(GL_FRONT_AND_BACK,GL_DIFFUSE,@Sphere_dif);    //диффузный цвет
 glmaterialf(GL_FRONT_AND_BACK,GL_SHININESS,shin);          //мощность блика

glutSolidTeapot(1);       //рисуем чайник
SwapBuffers(Canvas.Handle);
end;

procedure TForm1.FormResize(Sender: TObject);
begin
  glViewport(0, 0, ClientWidth, ClientHeight); //выделяем область куда будет выводиться наш буфер
  glMatrixMode ( GL_PROJECTION ); //переходим в матрицу проекции
  glLoadIdentity;  //Сбрасываем текущую матрицу
  glFrustum ( -1 , 1 , -1 , 1 , 1.25 , 100.0 ); //Область видимости
  glMatrixMode ( GL_MODELVIEW ); //переходим в модельную матрицу
  glLoadIdentity;//Сбрасываем текущую матрицу
  gluLookAt(3,1,1,0,0,0,0,0,1);  //позиция наблюдателя
  InvalidateRect ( Handle,nil,False );  //перерисовка формы
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
  i:=1;
  d:=1;
  j:=3;
tmr1.Enabled:=True;
tmr2.Enabled:=false;
tmr3.Enabled:=false;
 glViewport(0, 0, ClientWidth, ClientHeight); //выделяем область куда будет выводиться наш буфер
  glMatrixMode ( GL_PROJECTION ); //переходим в матрицу проекции
  glLoadIdentity;  //Сбрасываем текущую матрицу
  glFrustum ( -1 , 1 , -1 , 1 , 1.25 , 100.0 ); //Область видимости
  glMatrixMode ( GL_MODELVIEW ); //переходим в модельную матрицу
  glLoadIdentity;//Сбрасываем текущую матрицу
  gluLookAt(3,1,1,0,0,0,0,0,1);  //позиция наблюдателя
  InvalidateRect ( Handle,nil,False );

end;

procedure TForm1.tmr1Timer(Sender: TObject);
begin
 // if gg=2 then

  begin
  //i:=i+0.1;
 // j:=j-0.01;
 if ggg=false then
  d:=d+0.01;
  if d>3 then
  ggg:=True;
  if ggg=true then
  d:=d-0.01;
  if d<1 then
  ggg:=false;  // tmr1.Enabled:=False;
  end;
  gg:=gg+0.1;
 // FormPaint(Sender);
  glViewport(0, 0, ClientWidth, ClientHeight); //выделяем область куда будет выводиться наш буфер
  glMatrixMode ( GL_PROJECTION ); //переходим в матрицу проекции
  glLoadIdentity;  //Сбрасываем текущую матрицу
  glFrustum ( -1 , 1 , -1 , 1 , 1.25 , 100.0 ); //Область видимости
  glMatrixMode ( GL_MODELVIEW ); //переходим в модельную матрицу
  glLoadIdentity;//Сбрасываем текущую матрицу
  gluLookAt(j,i,d,0,0,0,0,0,1);  //позиция наблюдателя
  InvalidateRect ( Handle,nil,False );
  //if i<1.5 then

  //if i=1.5 then i //перерисовка формы
end;
  //if i=1.5 then i //перерисовка формы

procedure TForm1.rb2Click(Sender: TObject);
begin
Sphere_amb[0]:=1;
Sphere_amb[1]:=0;
Sphere_amb[2]:=0;
glViewport(0, 0, ClientWidth, ClientHeight); //выделяем область куда будет выводиться наш буфер
  glMatrixMode ( GL_PROJECTION ); //переходим в матрицу проекции
  glLoadIdentity;  //Сбрасываем текущую матрицу
  glFrustum ( -1 , 1 , -1 , 1 , 1.25 , 100.0 ); //Область видимости
  glMatrixMode ( GL_MODELVIEW ); //переходим в модельную матрицу
  glLoadIdentity;//Сбрасываем текущую матрицу
  gluLookAt(j,i,1,0,0,0,0,0,1);  //позиция наблюдателя
  InvalidateRect ( Handle,nil,False );
end;

procedure TForm1.rb3Click(Sender: TObject);
begin
Sphere_amb[0]:=0;
Sphere_amb[1]:=1;
Sphere_amb[2]:=0;
glViewport(0, 0, ClientWidth, ClientHeight); //выделяем область куда будет выводиться наш буфер
  glMatrixMode ( GL_PROJECTION ); //переходим в матрицу проекции
  glLoadIdentity;  //Сбрасываем текущую матрицу
  glFrustum ( -1 , 1 , -1 , 1 , 1.25 , 100.0 ); //Область видимости
  glMatrixMode ( GL_MODELVIEW ); //переходим в модельную матрицу
  glLoadIdentity;//Сбрасываем текущую матрицу
  gluLookAt(j,i,1,0,0,0,0,0,1);  //позиция наблюдателя
  InvalidateRect ( Handle,nil,False );
end;

procedure TForm1.rb4Click(Sender: TObject);
begin
Sphere_amb[0]:=0;
Sphere_amb[1]:=0;
Sphere_amb[2]:=1;
glViewport(0, 0, ClientWidth, ClientHeight); //выделяем область куда будет выводиться наш буфер
  glMatrixMode ( GL_PROJECTION ); //переходим в матрицу проекции
  glLoadIdentity;  //Сбрасываем текущую матрицу
  glFrustum ( -1 , 1 , -1 , 1 , 1.25 , 100.0 ); //Область видимости
  glMatrixMode ( GL_MODELVIEW ); //переходим в модельную матрицу
  glLoadIdentity;//Сбрасываем текущую матрицу
  gluLookAt(j,i,1,0,0,0,0,0,1);  //позиция наблюдателя
  InvalidateRect ( Handle,nil,False );
end;

procedure TForm1.rb1Click(Sender: TObject);
begin
Sphere_amb[0]:=0;
Sphere_amb[1]:=0;
Sphere_amb[2]:=0;
glViewport(0, 0, ClientWidth, ClientHeight); //выделяем область куда будет выводиться наш буфер
  glMatrixMode ( GL_PROJECTION ); //переходим в матрицу проекции
  glLoadIdentity;  //Сбрасываем текущую матрицу
  glFrustum ( -1 , 1 , -1 , 1 , 1.25 , 100.0 ); //Область видимости
  glMatrixMode ( GL_MODELVIEW ); //переходим в модельную матрицу
  glLoadIdentity;//Сбрасываем текущую матрицу
  gluLookAt(j,i,1,0,0,0,0,0,1);  //позиция наблюдателя
  InvalidateRect ( Handle,nil,False );
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
   i:=1;
  j:=3;
  d:=1;
 tmr1.Enabled:=False;
 tmr2.Enabled:=True;
 tmr3.Enabled:=false;
 glViewport(0, 0, ClientWidth, ClientHeight); //выделяем область куда будет выводиться наш буфер
  glMatrixMode ( GL_PROJECTION ); //переходим в матрицу проекции
  glLoadIdentity;  //Сбрасываем текущую матрицу
  glFrustum ( -1 , 1 , -1 , 1 , 1.25 , 100.0 ); //Область видимости
  glMatrixMode ( GL_MODELVIEW ); //переходим в модельную матрицу
  glLoadIdentity;//Сбрасываем текущую матрицу
  gluLookAt(3,1,1,0,0,0,0,0,1);  //позиция наблюдателя
  InvalidateRect ( Handle,nil,False );
end;

procedure TForm1.tmr2Timer(Sender: TObject);
begin
  //i:=i+0.1;
 // j:=j-0.01;
 if ggg=false then
  j:=j+0.01;
  if j>4 then
  ggg:=True;
  if ggg=true then
  j:=j-0.01;
  if j<3 then
  ggg:=false;  // tmr1.Enabled:=False;
  gg:=gg+0.1;
 // FormPaint(Sender);
  glViewport(0, 0, ClientWidth, ClientHeight); //выделяем область куда будет выводиться наш буфер
  glMatrixMode ( GL_PROJECTION ); //переходим в матрицу проекции
  glLoadIdentity;  //Сбрасываем текущую матрицу
  glFrustum ( -1 , 1 , -1 , 1 , 1.25 , 100.0 ); //Область видимости
  glMatrixMode ( GL_MODELVIEW ); //переходим в модельную матрицу
  glLoadIdentity;//Сбрасываем текущую матрицу
  gluLookAt(j,i,d,0,0,0,0,0,1);  //позиция наблюдателя
  InvalidateRect ( Handle,nil,False );
  //if i<1.5 then

  //if i=1.5 then i //перерисовка формы
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
 i:=1;
  j:=3;
 tmr1.Enabled:=False;
 tmr2.Enabled:=false;
 tmr3.Enabled:=true;
 glViewport(0, 0, ClientWidth, ClientHeight); //выделяем область куда будет выводиться наш буфер
  glMatrixMode ( GL_PROJECTION ); //переходим в матрицу проекции
  glLoadIdentity;  //Сбрасываем текущую матрицу
  glFrustum ( -1 , 1 , -1 , 1 , 1.25 , 100.0 ); //Область видимости
  glMatrixMode ( GL_MODELVIEW ); //переходим в модельную матрицу
  glLoadIdentity;//Сбрасываем текущую матрицу
  gluLookAt(3,1,1,0,0,0,0,0,1);  //позиция наблюдателя
  InvalidateRect ( Handle,nil,False );
end;

procedure TForm1.tmr3Timer(Sender: TObject);
begin
 //i:=i+0.1;
 // j:=j-0.01;
 if ggg=false then
  i:=i+0.01;
  if i>3 then
  ggg:=True;
  if ggg=true then
  i:=i-0.01;
  if i<1 then
  ggg:=false;  // tmr1.Enabled:=False;

  gg:=gg+0.1;
 // FormPaint(Sender);
  glViewport(0, 0, ClientWidth, ClientHeight); //выделяем область куда будет выводиться наш буфер
  glMatrixMode ( GL_PROJECTION ); //переходим в матрицу проекции
  glLoadIdentity;  //Сбрасываем текущую матрицу
  glFrustum ( -1 , 1 , -1 , 1 , 1.25 , 100.0 ); //Область видимости
  glMatrixMode ( GL_MODELVIEW ); //переходим в модельную матрицу
  glLoadIdentity;//Сбрасываем текущую матрицу
  gluLookAt(j,i,d,0,0,0,0,0,1);  //позиция наблюдателя
  InvalidateRect ( Handle,nil,False );
end;

end.
