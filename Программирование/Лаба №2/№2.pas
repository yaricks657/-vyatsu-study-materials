program lab22;
uses crt;
type mas = array[1..26] of char;
mas1 = array[1..26] of char; 
var b: mas;
a: mas1; 
i,j:integer;
x,y:string;
begin
  clrscr;
  for i:=1 to 26 do 
  a[i] := char(96+i);
  for i:= 1 to 26 do
    b[i] := char(64+i);
  writeLn('Enter text or word');
  readLn(x);
  for i :=1 to length(x) do
    if x[i] <> ' ' then y := y + x[i];
        for i:= 1 to length(y) do
          for j:=1 to 26 do
           if y[i]=b[j] then
            y[i] := a[j];
             for i:=1 to (length(y) div 2) do
   if y[i]<>y[length(y)-i+1] then 
     begin
       Writeln('This is not palindrome');
       readLn;
       exit;
   end;
writeLn('This is palindrome');
readLn;
end.