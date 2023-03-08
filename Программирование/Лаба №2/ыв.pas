var a,b,c:real;
x:integer;
begin
while (a<3) or (a>4) or (b<1) or (b>1000)  do
read(a,b);
c:= (4/3)*a*b*b*b;
if (b<10) then x:=1 else
  if (b<100) then x:=2 else
    if (b<1000) then x:=3;
gotoXY(x,0);
write(c:12:10);
end.
