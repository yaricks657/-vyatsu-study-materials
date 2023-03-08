program lab21;
uses crt;
var mas: array [1..100] of integer;
i,j,k,b,a: integer;
flag: boolean;
begin
clrscr;
        writeLn('Enter the number of array elements between 1 and 100: ');
        repeat
        readLn(b);
        if (b>100) or (b<1) then
        writeLn('Entered a number that does not match the range of the array. Try again')
        until (b<=100) and (b>=1);
        begin
                for i:= 1 to b do
                begin
                        writeLn('Enter the ', i, ' element of the array: ');
                        readLn(mas[i]);
                end;
                                writeLn('Enter the number k: ');
                                readLn(k);
                                for i := 1 to b-1 do
                                for j := 2 to b do
                                begin
                                if abs(mas[i]-mas[j])=k then
                                begin
                                writeLn('These numbers are ',mas[i], ' ', mas[j]);
                                flag:= true;
                                end;
                                if (abs(mas[i]-mas[j])<>k) and (flag=false) then
                                writeLn('There are no numbers');
       end;
       end;
readLn;
end.

