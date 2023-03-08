program kek;
uses crt;
var f,g:text;
arr:array [1..100005] of longint;
n,i,j,x,d,min,kk:longint;
function comparator(a,b:longint):boolean;
begin
comparator:=(a<b);
end;
begin
clrscr;
assign(f,'C:/gg.txt');
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
j := d;
    while j > 1 do
    begin
        min := arr[2];
        kk := 2;
        for i := 3 to j do
            if comparator(arr[i],min) then
            begin
                min := arr[i];
                kk := i
            end;
        arr[kk] := arr[j];
        arr[j] := min;
        j := j - 1
    end;
for i:=2 to n do
write(g,arr[i],' ');
close(f);
close(g);
end.
