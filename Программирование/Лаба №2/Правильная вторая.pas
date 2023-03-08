program lab22;
uses crt;
var
i,j:integer;
x,y:string;
begin
clrscr;
  writeLn('Enter text or word');
  readLn(x);
  for i:=1 to length(x) do
  begin
  if x[i] = 'A' then x[i]:= 'a' else
  if x[i] = 'B' then x[i]:= 'b' else
  if x[i] = 'C' then x[i]:= 'c' else
  if x[i] = 'D' then x[i]:= 'd' else
  if x[i] = 'E' then x[i]:= 'e' else
  if x[i] = 'F' then x[i]:= 'f' else
  if x[i] = 'G' then x[i]:= 'g' else
  if x[i] = 'H' then x[i]:= 'h' else
  if x[i] = 'I' then x[i]:= 'i' else
  if x[i] = 'J' then x[i]:= 'j' else
  if x[i] = 'K' then x[i]:= 'k' else
  if x[i] = 'M' then x[i]:= 'm' else
  if x[i] = 'N' then x[i]:= 'n' else
  if x[i] = 'L' then x[i]:= 'l' else
  if x[i] = 'O' then x[i]:= 'o' else
  if x[i] = 'P' then x[i]:= 'p' else
  if x[i] = 'Q' then x[i]:= 'q' else
  if x[i] = 'R' then x[i]:= 'r' else
  if x[i] = 'S' then x[i]:= 's' else
  if x[i] = 'T' then x[i]:= 't' else
  if x[i] = 'U' then x[i]:= 'u' else
  if x[i] = 'V' then x[i]:= 'v' else
  if x[i] = 'W' then x[i]:= 'w' else
  if x[i] = 'X' then x[i]:= 'x' else
  if x[i] = 'Y' then x[i]:= 'y' else
  if x[i] = 'Z' then x[i]:= 'z' else
  end;
  for i :=1 to length(x) do
    if x[i] <> ' ' then y := y + x[i];
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
