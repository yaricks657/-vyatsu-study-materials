unit MCube;

  {   +-------------TCube------------+
     +------Copyright 2004 MCoP-----+        }

interface

uses
  Graphics, Classes, Windows;

type
  MP3D=Record
   X,Y,Z:Double;
  end;

  TCube = class(TComponent)
  private
    { Private declarations }
    Points:array[1..8] of MP3D;
    FSize:Integer;
    FRotation:MP3D;
    FCenter:TPoint;
    Bitm1,Bitm2,Bitm3,Bitm4,Bitm5,Bitm6:Graphics.TBitmap;
    ReB1,ReB2,ReB3,fbor:Boolean;
    procedure DrawTexture(b:Graphics.TBitmap;var d:TCanvas;i:array of Tpoint);
    function GetAngle(X,Y:Double):Double;
    function RotateZ(A:Double;var P:MP3D):Double;
    function RotateX(A:Double;var P:MP3D):Double;
    function RotateY(A:Double;var P:MP3D):Double;
    function PToP(P:MP3D):TPoint;
    procedure GetRects(I:Byte;var R1,R2,R3:array of TPoint);
    Procedure SetBitm1(V:Graphics.TBitmap);
    Procedure SetBitm2(V:Graphics.TBitmap);
    Procedure SetBitm3(V:Graphics.TBitmap);
    Procedure SetBitm4(V:Graphics.TBitmap);
    Procedure SetBitm5(V:Graphics.TBitmap);
    Procedure SetBitm6(V:Graphics.TBitmap);
    Procedure SetHome(V:String);
    function GetHome:String;
  public
    { Public declarations }
    procedure Draw(Dest:TCanvas);
    procedure Rotate(X,Y,Z:Double);
    Constructor Create(AOwner:TComponent);override;
    Destructor Destroy;override;
    property Rotation:MP3D read frotation;
    function FaceAt(PointX,PointY:Integer):Byte;
  published
    { Published declarations }
    property Size:Integer read fsize write fsize default 25;
    property CenterX:Integer read fcenter.X write fcenter.X default 50;
    property CenterY:Integer read fcenter.Y write fcenter.Y default 50;
    property Bitmap1:Graphics.TBitmap read bitm1 write setbitm1;
    property Bitmap2:Graphics.TBitmap read bitm2 write setbitm2;
    property Bitmap3:Graphics.TBitmap read bitm3 write setbitm3;
    property Bitmap4:Graphics.TBitmap read bitm4 write setbitm4;
    property Bitmap5:Graphics.TBitmap read bitm5 write setbitm5;
    property Bitmap6:Graphics.TBitmap read bitm6 write setbitm6;
    property Homepage:String read gethome write sethome stored false;
    property DrawBorders:Boolean read fbor write fbor default false;
  end;

Const
  MCubeRe1=[1,2,3,4];
  MCubeRe2=[1,4,8,5];
  MCubeRe3=[1,2,6,5];

procedure Register;

{$R *.dcr}

implementation

Constructor TCube.Create(AOwner:TComponent);
begin
inherited;
frotation.X:=0;
frotation.Y:=0;
frotation.Z:=0;
fsize:=25;
fbor:=false;
fcenter:=point(50,50);
points[1].X:=1;
points[1].Y:=1;
points[1].Z:=1;
points[2].X:=-1;
points[2].Y:=1;
points[2].Z:=1;
points[3].X:=-1;
points[3].Y:=-1;
points[3].Z:=1;
points[4].X:=1;
points[4].Y:=-1;
points[4].Z:=1;
points[5].X:=1;
points[5].Y:=1;
points[5].Z:=-1;
points[6].X:=-1;
points[6].Y:=1;
points[6].Z:=-1;
points[7].X:=-1;
points[7].Y:=-1;
points[7].Z:=-1;
points[8].X:=1;
points[8].Y:=-1;
points[8].Z:=-1;
Bitm1:=Graphics.tbitmap.Create;
Bitm2:=Graphics.tbitmap.Create;
Bitm3:=Graphics.tbitmap.Create;
Bitm4:=Graphics.tbitmap.Create;
Bitm5:=Graphics.tbitmap.Create;
Bitm6:=Graphics.tbitmap.Create;
end;

Destructor TCube.Destroy;
begin
bitm1.Free;
bitm2.Free;
bitm3.Free;
bitm4.Free;
bitm5.Free;
bitm6.Free;
inherited;
end;

Procedure TCube.SetHome(V:String);
begin
//
end;

function TCube.GetHome:String;
begin
result:='http://www.mcop.tk/';
end;

function TCube.GetAngle(X,Y:Double):Double;
begin
if x=0 then result:=pi/2 else result:=arctan(y/x);
if x<0 then result:=result+pi;
if (x=0) and (y<0) then result:=result+pi;
while result>=pi*2 do
 result:=result-pi*2;
while result<0 do
 result:=result+pi*2;
end;

function TCube.RotateZ(A:Double;var P:MP3D):Double;
var r:double;
begin
a:=a+getangle(p.x,p.y);
r:=sqrt(sqr(p.x)+sqr(p.y));
while a>=pi*2 do
 a:=a-pi*2;
while a<0 do
 a:=a+pi*2;
result:=a;
p.x:=cos(a)*r;
p.y:=sin(a)*r;
end;

function TCube.RotateX(A:Double;var P:MP3D):Double;
var r:double;
begin
a:=a+getangle(p.z,p.y);
r:=sqrt(sqr(p.z)+sqr(p.y));
while a>=pi*2 do
 a:=a-pi*2;
while a<0 do
 a:=a+pi*2;
result:=a;
p.z:=cos(a)*r;
p.y:=sin(a)*r;
end;

function TCube.RotateY(A:Double;var P:MP3D):Double;
var r:double;
begin
a:=a+getangle(p.x,p.z);
r:=sqrt(sqr(p.x)+sqr(p.z));
while a>=pi*2 do
 a:=a-pi*2;
while a<0 do
 a:=a+pi*2;
result:=a;
p.x:=cos(a)*r;
p.z:=sin(a)*r;
end;

function TCube.PToP(P:MP3D):TPoint;
begin
result.X:=round(p.x*fsize)+FCenter.X;
result.Y:=FCenter.Y-round(p.y*fsize);
end;

procedure TCube.GetRects(I:Byte;var R1,R2,R3:array of TPoint);
begin
if i in MCubere1 then
 begin
 r1[0]:=ptop(points[2]);
 r1[1]:=ptop(points[1]);
 r1[2]:=ptop(points[4]);
 r1[3]:=ptop(points[3]);
 r1[4]:=ptop(points[2]);
 reb1:=true;
 end
else
 begin
 r1[0]:=ptop(points[5]);
 r1[1]:=ptop(points[6]);
 r1[2]:=ptop(points[7]);
 r1[3]:=ptop(points[8]);
 r1[4]:=ptop(points[5]);
 reb1:=false;
 end;
if i in MCubere2 then
 begin
 r2[0]:=ptop(points[1]);
 r2[1]:=ptop(points[5]);
 r2[2]:=ptop(points[8]);
 r2[3]:=ptop(points[4]);
 r2[4]:=ptop(points[1]);
 reb2:=true;
 end
else
 begin
 r2[0]:=ptop(points[6]);
 r2[1]:=ptop(points[2]);
 r2[2]:=ptop(points[3]);
 r2[3]:=ptop(points[7]);
 r2[4]:=ptop(points[6]);
 reb2:=false;
 end;
if i in MCubere3 then
 begin
 r3[0]:=ptop(points[6]);
 r3[1]:=ptop(points[5]);
 r3[2]:=ptop(points[1]);
 r3[3]:=ptop(points[2]);
 r3[4]:=ptop(points[6]);
 reb3:=true;
 end
else
 begin
 r3[0]:=ptop(points[3]);
 r3[1]:=ptop(points[4]);
 r3[2]:=ptop(points[8]);
 r3[3]:=ptop(points[7]);
 r3[4]:=ptop(points[3]);
 reb3:=false;
 end;
end;

procedure TCube.DrawTexture(b:Graphics.TBitmap;var d:TCanvas;i:array of TPoint);
var p:array[0..2] of tpoint;
begin
p[0]:=i[0];
p[1]:=i[1];
p[2]:=i[3];
plgblt(d.Handle,p,b.Canvas.Handle,0,0,b.Width,b.Height,0,0,0);
if fbor then d.Polyline(i);
end;

procedure TCube.Draw(Dest:TCanvas);
var
 r1,r2,r3:array[0..4] of tpoint;
 k,j:byte;
 z:double;
begin
z:=points[1].Z;
j:=1;
for k:=2 to 8 do
 if z<points[k].Z then
  begin
  z:=points[k].Z;
  j:=k;
  end;
getrects(j,r1,r2,r3);
if reb1 then drawtexture(bitm1,dest,r1) else drawtexture(bitm2,dest,r1);
if reb2 then drawtexture(bitm3,dest,r2) else drawtexture(bitm4,dest,r2);
if reb3 then drawtexture(bitm5,dest,r3) else drawtexture(bitm6,dest,r3);
end;

function TCube.FaceAt(PointX,PointY:Integer):Byte;
var
 r1,r2,r3:array[0..4] of tpoint;
 k,j:byte;
 z:double;
 g:hrgn;
begin
z:=points[1].Z;
j:=1;
for k:=2 to 8 do
 if z<points[k].Z then
  begin
  z:=points[k].Z;
  j:=k;
  end;
getrects(j,r1,r2,r3);
result:=0;
g:=createpolygonrgn(r1,5,alternate);
if ptinregion(g,pointX,pointY) then
 if reb1 then result:=1 else result:=2;
deleteobject(g);
g:=createpolygonrgn(r2,5,alternate);
if ptinregion(g,pointX,pointY) then
 if reb2 then result:=3 else result:=4;
deleteobject(g);
g:=createpolygonrgn(r3,5,alternate);
if ptinregion(g,pointX,pointY) then
 if reb3 then result:=5 else result:=6;
deleteobject(g);
end;

procedure TCube.Rotate(X,Y,Z:Double);
var k:byte;
begin
if (x=0) and (y=0) and (z=0) then exit;
fRotation.X:=fRotation.X+x;
fRotation.Y:=fRotation.Y+y;
fRotation.Z:=fRotation.Z+z;
while fRotation.X>=pi*2 do fRotation.X:=fRotation.X-pi*2;
while fRotation.Y>=pi*2 do fRotation.Y:=fRotation.Y-pi*2;
while fRotation.Z>=pi*2 do fRotation.Z:=fRotation.Z-pi*2;
while fRotation.X<0 do fRotation.X:=fRotation.X+pi*2;
while fRotation.Y<0 do fRotation.Y:=fRotation.Y+pi*2;
while fRotation.Z<0 do fRotation.Z:=fRotation.Z+pi*2;
for k:=1 to 8 do
 begin
 if x<>0 then rotatex(x,points[k]);
 if y<>0 then rotatey(y,points[k]);
 if z<>0 then rotatez(z,points[k]);
 end;
end;

Procedure TCube.SetBitm1(V:Graphics.TBitmap);
begin
bitm1.Assign(v);
end;

Procedure TCube.SetBitm2(V:Graphics.TBitmap);
begin
bitm2.Assign(v);
end;

Procedure TCube.SetBitm3(V:Graphics.TBitmap);
begin
bitm3.Assign(v);
end;

Procedure TCube.SetBitm4(V:Graphics.TBitmap);
begin
bitm4.Assign(v);
end;

Procedure TCube.SetBitm5(V:Graphics.TBitmap);
begin
bitm5.Assign(v);
end;

Procedure TCube.SetBitm6(V:Graphics.TBitmap);
begin
bitm6.Assign(v);
end;

procedure Register;
begin
  RegisterComponents('MCoP', [TCube]);
end;

end.
 