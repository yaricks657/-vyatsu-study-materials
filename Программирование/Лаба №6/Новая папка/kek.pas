uses crt,dinmemory;
var
x,j,i:integer;
s:string;
c:char;
m,k:tlist;
up,dn,au:boolean;
comand:array of string;
perAupn,updn,com:integer;


        procedure info;
        begin
        gotoxy(1,1);
        writeln('Spisok command');
        writeln('1. add ( Select the number of items and enter them )');
        writeln('2. show ( Shows all the elements in memory)');
        writeln('3. free ( Frees all memory )');
        writeln('4. check ( Shows whether there are elements in memory )');
        writeln('5. addpos ( Select the position to which you want to add an element and enter the element itself )');
        writeln('6. Exit (Go out)');
        end;


        procedure nabor;
        var
        i,n,elem:integer;
        begin
        writeln('Enter kol-vo elementov');
        readln(n);
        if n>0 then begin
            for i:=1 to n do begin
                writeln('Enter element');
                readln(elem);
                addelem(m,k,elem);
                delline;
                gotoxy(1,wherey-2);
                delline;
            end;

        end;
        clrscr;
        end;

        procedure DeleteProbel;
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
        end;


     procedure auto;
     begin
     deleteprobel;
     au:= false;
     case s of
        'a','ad': begin s:='add';i:=4; au:= true; end;
        's','sh','sho': begin s:='show';i:=5; au:= true; end;
        'h','he','hel': begin s:='help';i:=5; au:= true; end;
        'f','fr','fre': begin s:='free';i:=5; au:= true; end;
        'c','cl','cle','clea': begin s:='clear';i:=6; au:= true; end;
        'e','ex','exi': begin s:='exit';i:=5; au:= true; end;
     end;
        if  au = true then begin
        gotoxy(1,wherey);
        write(s);
        end;
     end;


        procedure choice;
        begin
        clrscr;
        case s of
        'add': nabor;
        'help': info;
        'show': show(m);
        'clear': free(m);
        'exit': exit;
        end;
        while keypressed = false do begin
        end;
        clrscr;
                if length(s)>0 then begin
                com:=com+1;
                setlength(comand,com);
                comand[com-1]:=s;
                end;
        setlength(s,0);
        i:=0;
        //gotoxy(1,1);
        //writeln(' Enter command');
        end;


        procedure seachUp;
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
textcolor(11);
clrscr;
writeln(' Enter command');
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
    #9: auto;
    #8: begin x:=wherex; if x>1 then begin delete(s,wherex-1,1);i:=i-1;setlength(s,i);delline;gotoxy(1,wherey);write(s);gotoxy(x-1,wherey);end;end;
    #13: choice;
    end;
        if c=#0 then begin
        c:=readkey;
        case c of
        #72: begin if com>0 then begin up:=true; seachUp;end;gotoxy(1,2);delline;write(s);end;
        #75: begin if wherex>1 then begin gotoxy(wherex-1,wherey);end; end;
        #77: begin if wherex<=length(s) then begin gotoxy(wherex+1,wherey);end; end;
        #80: begin if com>0 then begin dn:=true; seachUp;end;gotoxy(1,2);delline;write(s);end;
        end;
        end;
until (c=#27);
end.
