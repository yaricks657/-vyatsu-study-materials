﻿program laba22;
var a,b:string;
    mas1:array[1..255] of string;
    mas2:array[1..255] of string;
    l1,l2,i,j,f,c:integer;
    mas3:array[1..255] of integer;
    mas4:array[1..255] of integer;
begin
  writeln('Print the string: ');
   readln(a);
  writeln('Print a substring: ');
  readln(b);
  l1:=length(a);
  l2:=length(b);
  f:=1;
  c:=1;
  for i:=1 to l1 do
    mas1[i]:=a[i];
  for i:=1 to l2 do
    mas2[i]:=b[i];
  for i:=1 to l1 do
    begin
    if mas1[i]=mas2[f] then
      begin
        for j:=2 to l2 do
          begin
            if mas1[i+f]=mas2[j] then f:=f+1;
          end;
          if f=l2 then
            begin
              mas3[c]:=i;
              c:=c+1;
            end;
          f:=1;
      end;
    end;
  if mas3[1]=0 then writeln('Try to print another substring') else
  begin
  mas4[1]:=mas3[1];
  i:=1;
  while mas3[i]<>0 do
    begin
      mas4[2]:=mas3[i];
      i:=i+1;
    end;
  for i:=0 to (l2-1) do
    begin
      f:=mas4[1]+i;
      mas1[f]:='';
    end;
  for i:=0 to (l2-1) do
    begin
      f:=mas4[2]+i;
      mas1[f]:='';
    end;
   writeln('String after: ');
  for i:=1 to l1 do
    write(mas1[i]);
  end;
  readLn;
  end.