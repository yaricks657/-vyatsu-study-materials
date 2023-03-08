program fractal;
uses WinCrt,Graph;
var i1,i2,j1,j2: integer;
x1,x2,y1,y2: double;
ch2:char;
	function WinX(x: double): integer;
begin
WinX:= Round((x-x1)/(x2-x1)*(i2-i1)) + i1
end;
	function WinY(y: double): integer;
begin
WinY:= j2-Round((y-y1)/(y2-y1)*(j2-j1))
end;
	procedure WinLine(x1,y1,x2,y2: double);
begin
Line(WinX(x1	),WinY(y1),WinX(x2),WinY(y2))
end;
	procedure WinSet(u1,v1,u2,v2: double; a1,b1,a2,b2: integer);
begin
  if a1<0 then i1:= GetMaxX+a1 else i1:= a1;
  if b1<0 then j1:= GetMaxY+b1 else j1:= b1;
  if a2<0 then i2:= GetMaxX+a2 else i2:= a2;
  if b2<0 then j2:= GetMaxY+b2 else j2:= b2;
  x1:= u1;
  y1:= v1;
  if u2<=u1 then x2:= x1+(v2-v1)/(j2-j1)*(i2-i1) else x2:= u2;
  if v2<=v1 then y2:= y1+(u2-u1)/(i2-i1)*(j2-j1) else y2:= v2
end;
	procedure Peano(p: integer; xx1,yy1,xx2,yy2: real);
var dx,dy,k1,k2: double;
ch2:char;
begin
dx:= xx2-xx1;
dy:= yy2-yy1;
if p=1 then
  begin
    MoveTo(WinX(xx1),WinY(yy1));
    LineTo(WinX(xx1-dy),WinY(yy1+dx));
    LineTo(WinX(xx2-dy),WinY(yy2+dx));
    LineTo(WinX(xx2),WinY(yy2))
  end
  else
  begin
    k1:= (1 shl (p-1)-1)/(1 shl p-1);
    k2:= (1 shl (p-1))/(1 shl p-1);
    Peano(p-1, xx1-k1*dy, yy1+k1*dx, xx1, yy1);
    WinLine(xx1-k1*dy, yy1+k1*dx, xx1-k2*dy, yy1+k2*dx);
    Peano(p-1, xx1-k2*dy, yy1+k2*dx, xx1+k1*dx-k2*dy, yy1+k2*dx+k1*dy);
    WinLine(xx1+k1*dx-k2*dy, yy1+k2*dx+k1*dy, xx1+k2*(dx-dy), yy1+k2*(dx+dy));
    Peano(p-1, xx1+k2*(dx-dy), yy1+k2*(dx+dy), xx2-k2*dy, yy2+k2*dx);
    WinLine(xx2-k2*dy, yy2+k2*dx, xx2-k1*dy, yy2+k1*dx);
    Peano(p-1, xx2, yy2, xx2-k1*dy, yy2+k1*dx);
  end;
  end;
var gd,gm: integer;
p:integer;
v2,xx1,yy1,xx2,yy2:real;
begin
xx1:=0.2;
yy1:=0;
xx2:=1.2;
yy2:=0;
p:=1;
v2:= 1.1;
  gd:= Detect;
  InitGraph(gd,gm,'');
  WinSet(-0.5,-0.1,-10,v2,10,10,-10,-10);
   SetColor(random(10));
  Peano(p,xx1,yy1,xx2,yy2);
    repeat
OuttextXY(getmaxx-1500,10,'The Peano curve');
OuttextXY(getmaxx-1500,25,'Use arrows to move an object');
OuttextXY(getmaxx-1500,40,'Press "+" for increase');
OuttextXY(getmaxx-1500,55,'Press "-" for dicrease');
OuttextXY(getmaxx-1500,70,'Press "1" for increasing the density of the drawing');
OuttextXY(getmaxx-1500,85,'Press "0" for dicreasing the density of the drawing');
OuttextXY(getmaxx-1500,100,'Exit ""ESC');
SetColor(random(256));
      ch2:=wincrt.readkey;
case ch2 of
  #45:
if v2<4 then
begin
cleardevice;
 WinSet(-0.5,-0.1,-10,v2+0.1,10,10,-10,-10);
  Peano(p,0,0,1,0);
 v2:= v2+0.1;
 end;
  #43:
if v2>1.1 then
begin
cleardevice;
 WinSet(-0.5,-0.1,-10,v2-0.1,10,10,-10,-10);
  Peano(p,0,0,1,0);
 v2:= v2-0.1;
 end;
 #49:
if p<10 then
begin
cleardevice;
 Peano(p+1,0,0,1,0);
 p:=p+1;
 end;
#48:
if p>1 then
begin
cleardevice;
 Peano(p-1,0,0,1,0);
 p:=p-1;
 end;
  #72:
if (yy1<10) and (yy2<10) then
begin
cleardevice;
 Peano(p,xx1,yy1+0.1,xx2,yy2+0.1);
 yy1:=yy1+0.1;
 yy2:=yy2+0.1;
 end;
   #80:
if (yy1>-10) and (yy2>-10) then
begin
cleardevice;
 Peano(p,xx1,yy1-0.1,xx2,yy2-0.1);
 yy1:=yy1-0.1;
 yy2:=yy2-0.1;
 end;
   #77:
if (xx1>-10) and (xx2>-10) then
begin
cleardevice;
 Peano(p,xx1+0.1,yy1,xx2+0.1,yy2);
 xx1:=xx1+0.1;
 xx2:=xx2+0.1;
 end;
   #75:
if (xx1<10) and (xx2<10) then
begin
cleardevice;
 Peano(p,xx1-0.1,yy1,xx2-0.1,yy2);
 xx1:=xx1-0.1;
 xx2:=xx2-0.1;
 end;
 end;
 until (ch2=#27);
end.