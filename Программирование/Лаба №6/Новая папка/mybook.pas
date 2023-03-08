Program spisok;
uses
  crt,book;
  var
  kk,aa,gg:string;
  nn:real;
  tmpl:List;
  pp,a,b:integer;
  ch:char;
  x,j,i,n,code:integer;
s:string;
c:char;
m,k:tlist;
up,dn,au:boolean;
comand:array of string;
perAupn,updn,com:integer;

procedure commands;
begin
writeLn('Commands for working with the list: ');
writeLn('1. Add (Add a new list of items in the range [-10000,10000])');
writeLn('2. Show (Show list elements)');
writeLn('3. KickElement (Delete an element with the entered value)');
writeLn('4. Clear (Delete the entire list)');
writeLn('5. IncSort (Sorting elements in ascending order)');
writeLn('6. DecSort (Sorting elements in descending order)');
writeLn('7. Exit(You can also press button "Esc")');
readLn;
end;

     procedure tab;
     var
        i:integer;
        begin
        i:=1;
            while i<=length(s) do begin
            if s[i] = ' ' then begin delete(s,i,1);
            i:=i-1;
            end
            else i:=i+1;
            if s[i] <>' ' then break;
        end;
     au:= false;
     case s of
        'a','ad': begin s:='add';i:=4; au:= true; end;
        's','sh','sho': begin s:='show';i:=5; au:= true; end;
        'h','he','hel': begin s:='help';i:=5; au:= true; end;
 	'k','ki','kic','kick','kicke','kickel','kickele','kickelem','kickeleme','kickelemen': begin s:='kickelement';i:=12; au:= true; end;
        'c','cl','cle','clea': begin s:='clear';i:=6; au:= true; end;
        'i','in','inc','incs','incso','incsor': begin s:='incsort';i:=8; au:= true; end;
        'd','de','dec','decs','decso','decsor': begin s:='decsort';i:=8; au:= true; end;
        'e','ex','exi': begin s:='exit';i:=5; au:= true; end;
     end;
        if  au = true then begin
        gotoxy(1,wherey);
        write(s);
        end;
     end;

procedure menu;
        begin
        clrscr;
        case s of
        'add': begin
        repeat
            write('Enter the number of elements: ');
            readLn(kk);
            val(kk,nn,code);
            if (code<>0) or (nn>10000) or (nn<1) then begin
            writeLn('Incorrect input. The number is out of range or you entered a letter. Please press "Enter" and try again.');
            readLn;
                clrscr;
                end
            until (code=0) and (nn<10001) and (nn>0);
            val(kk,pp,n);
            for i:=1 to pp do
            begin
            repeat
            begin
            writeLn('Enter the ',i,' element: ');
            readln(aa);
            val(aa,znach,code);
            if (code<>0) or (znach>10000) or (znach<-10000) then begin
            writeLn('Incorrect input. The number is out of range or you entered a letter. Please press "Enter" and try again.');
            readLn;
            end;
            end;
            until (code=0) and (znach<10001) and (znach>-10001);
            AddElem(SpisNach,znach);
            end;
          end;
	'help':commands;
	'kickelement':begin
        repeat
            Write('Enter the value of the item to delete: ');
            readln(gg);
            val(gg,znach,code);
            if (code<>0) or (znach>10000) or (znach<-10000) then begin
            writeLn('Incorrect input. The number is out of range or you entered a letter. Please press "Enter" and try again.');
            readLn;
            end
            until (code=0) and (znach<10001) and (znach>-10001);
            DelElemZnach(SpisNach,znach);
          end;
        'show':Print(SpisNach);
        'clear':begin
        for i:=1 to pp do
            DelElemPos(SpisNach,i);
          end;
        'incsort':begin if spisNach=nil then
        begin
        writeLn('List is empty. Add some elements.');
        readLn;
        end
        else
        IncSort(SpisNach);
        end;
        'decsort':begin if spisNach=nil then
        begin
        writeLn('List is empty. Add some elements.');
        readLn;
        end
        else
        DecSort(SpisNach);
        end;
        'exit':begin
        Free(SpisNach);
        halt;
        end;
        end;
        while keypressed = false do
        clrscr;
                if length(s)>0 then begin
                com:=com+1;
                setlength(comand,com);
                comand[com-1]:=s;
                end;
        setlength(s,0);
        i:=0;
        textcolor(10);
        writeln('Enter the command: ');
        end;

        procedure point;
        begin
        if com>0 then begin
        if up = true then perAupn:=1;
        if dn = false then perAupn:=-1;
            if s = '' then s:=comand[com-1];
            if (up = true) or (dn = true) then begin
            updn:=updn + perAupn;
            if updn>com then updn:=1;
            if updn = 0 then updn:=com;
            s:=comand[updn-1];
            end;
        end;
        up:=false;
        dn:=false;
        end;

begin
  SpisNach:=nil;
  textcolor(10);
clrscr;
writeLn('Program for working with a ring list');
write('Enter ');
textcolor(red);
write('"Help"');
textcolor(10);
writeLn(' to view the list of the commands');
write('Use button ');
textcolor(red);
write('"Tab" ');
textcolor(10);
writeLn('for autocomplete commands');
writeLn;
writeln('Enter the command: ');
i:=0;
com:=0;
repeat
c:=readkey;
case c of
    #97..#122:if i<100 then  begin
            i:=i+1;
            setlength(s,i);
            if i>wherex then begin
            j:=1;
            x:=wherex;
            while i-x>=j do begin
            s[i-j+1]:=s[i-j];
            gotoxy(i-j+1,wherey);
            write(s[i-j]);
            j:=j+1;
            end;
            gotoxy(wherex-1,wherey);
            s[wherex-1]:=c;
            gotoxy(1,wherey);
            write(s);
            end
                else begin    s[i]:=c;

                    write(c);
                    end;
        end;
    #65..#90 : if i<100 then begin setlength(s,i); c:=chr(ord(c)+32);
            i:=i+1;
            setlength(s,i);
            if i>wherex then begin
            j:=1;
            x:=wherex;
            while i-x>=j do begin
            s[i-j+1]:=s[i-j];
            gotoxy(i-j+1,wherey);
            write(s[i-j]);
            j:=j+1;
            end;
            gotoxy(wherex-1,wherey);
            s[wherex-1]:=c;
            gotoxy(1,wherey);
            write(s);
            end

                else begin    s[i]:=c;

                    write(c);
                    end;
        end;
    #9: tab;
    #8: begin x:=wherex; if x>1 then begin delete(s,wherex-1,1);i:=i-1;setlength(s,i);delline;gotoxy(1,wherey);write(s);gotoxy(x-1,wherey);end;end;
    #13: menu;
    end;
        if c=#0 then begin
        c:=readkey;
        case c of
        #72: begin if com>0 then begin up:=true; point;end;gotoxy(1,2);delline;write(s);end;
        #75: begin if wherex>1 then begin gotoxy(wherex-1,wherey);end; end;
        #77: begin if wherex<=length(s) then begin gotoxy(wherex+1,wherey);end; end;
        #80: begin if com>0 then begin dn:=true; point;end;gotoxy(1,2);delline;write(s);end;
        end;
        end;
until (c=#27);
Free(SpisNach);
end.

