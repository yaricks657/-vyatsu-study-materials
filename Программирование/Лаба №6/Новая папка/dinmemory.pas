unit dinmemory;

interface
uses crt;
type
inf=integer;
  Tlist=^list;
  list=record
  data:inf;
  next:Tlist;
  prev:Tlist;
end;
procedure CreateNewElem(var p:tlist;i:inf);
Procedure Addelem(var first:tlist;var p:tlist;i:inf);
Procedure del(var first:tlist);
Procedure show(first:tlist);
Procedure free(var first:tlist);
Procedure select(first:tlist;t:integer);
Procedure addpos(var first,p:tlist);


var
first,p:tlist;
i,c:integer;

implementation


            Procedure CreateNewElem(var p:tlist;i:inf);
            begin
            new(p);
            p^.data:=i;
            p^.next:=nil;
            p^.prev:=nil;
            end;


            Procedure Addelem(var first:tlist;var p:tlist;i:inf);
            var kur:tlist;
            begin
            if first=nil then
            begin
            CreateNewElem(first,i);
            exit;
            end;
            CreateNewElem(p,i);
            kur:=first;;
            while kur^.next<> nil  do
            begin
            kur:=kur^.next;
            end;
            kur^.next:=p;
            p^.next:=nil;
            end;

            Procedure del(var first:tlist);
            var kur:tlist;
            begin
            if first=nil then
            begin
            writeln('Spisok pust');
            exit;
            end;
            if first^.next= nil then
            begin
            kur:=first;
            dispose(kur);
            first:=nil;
            exit;
            end;
            kur:=first;
            first:=first^.next;
            dispose(kur);
            end;

            Procedure Show(first:tlist);
            var kur:tlist;
            begin
            if first= nil
            then
            begin
            writeln('Spisok pust');
            exit;
            end;
            kur:=first;
            while kur <> nil do
            begin
            write(kur^.data,' ');
            kur:=kur^.next;
            end;
            end;

            Procedure select(first:tlist;t:integer);
            var kur:tlist;
            begin
            if first = nil then begin
            writeln('Spisok pust');
            exit;
            end;
            kur:=first;
            while (kur <> nil) or (t>0) do begin
            write(kur^.data,' ');
            kur:=kur^.next;
            end;
            end;


            Procedure free(var first:tlist);
            var kur,temp:tlist;
            begin
            if first=nil then exit;
            kur:=first;
            while kur<>nil do
            begin
            temp:=kur;
            kur:=kur^.next;
            dispose(temp);
            end;
            first:=nil;
            end;


            procedure addpos(var first,p:tlist);
            var
            l,lk,k,j:integer;
            pstr:string;
            kur:tlist;
            begin
            repeat
            clrscr;
            writeln(' Enter position ');
            readln(pstr);
            Val(pstr,k,l);
            until (l=0) and (k>0) and (k<32000);
            repeat
            clrscr;
            writeln(' Enter element');
            readln(pstr);
            Val(pstr,lk,l);
            until (l=0) and  (lk<32000) and (lk>-32000);
                if first=nil then
                begin
                CreateNewElem(first,lk);
                writeln(' Added 1 position, press any button to continue');
                while keypressed=false do begin
                end;
                exit;
                end;
                CreateNewElem(p,lk);
                kur:=first;;
                j:=0;
                while (kur^.next<> nil) and (j<=k)  do
                begin
                kur:=kur^.next;
                j:=j+1;
                end;
                kur^.next:=p;
                p^.next:=nil;
                writeln(' Element added click any button to continue');
                while keypressed=false do begin
                end;

                end;



end.

