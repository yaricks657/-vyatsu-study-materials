﻿program lab21;
uses crt;
var mas: array [1..100] of integer;
i,b,a: integer;
flag: boolean;
begin
clrscr;
  writeLn('Enter the number of array elements between 2 and 100: ');
        repeat
        readLn(b);
        if (b>100) or (b<2) then
        writeLn('Entered a number that does not match the range of the array. Try again')
        until (b<=100) and (b>=2);
                for i:= 1 to b do
                begin
                        writeLn('Enter the ', i, ' element of the array: ');
                        readLn(mas[i]);
                end;
              for i:=1 to b-1 do
     if mas[i]<mas[i+1] then a:=a+1;
 if a = 0 then writeln ('Array is decreasing')
 else
 writeln ('Array is non-decreasing');
readLn;
 end.
                 
                  
