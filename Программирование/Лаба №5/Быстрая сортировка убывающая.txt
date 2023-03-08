program kek;
uses crt;
var f,g:text;
arr:array [1..1000005] of longint;
n,i,j,x,d,max,kk:longint;
function comparator(a,b:longint):boolean;
begin
comparator:=(a>b);
end;
procedure sortirovka(n,k:longint);
var
  i,j,x1,y1,m:longint;
begin
  i:=n;
  j:=k;
  m:=round ((n+k)/2);
  x1:=arr[m];
  repeat
    while comparator(arr[i],x1) do inc(i);
    while comparator(x1,arr[j]) do dec(j);
    if i<=j then
     begin
      y1:=arr[i];
      arr[i]:=arr[j];
      arr[j]:=y1;
      inc(i);
      dec(j);
     end;
  until i>j;
  if n<j then sortirovka(n,j);
  if i<k then sortirovka(i,k);
end;
begin
clrscr;
assign(f,'C:/kek.txt');
reset(f);
assign(g,'C:/shrek.txt');
rewrite(g);
n:= 0;
while not eof(f) do
begin
n:= n+1;
read(f,arr[n]);
end;
d:= arr[1]+1;
sortirovka(2,d);
for i:=2 to n do
write(g,arr[i],' ');
close(f);
close(g);
end.
