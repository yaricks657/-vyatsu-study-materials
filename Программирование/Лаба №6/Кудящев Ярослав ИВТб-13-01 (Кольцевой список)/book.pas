unit book;
interface
uses crt;
type
  Tinf=integer;
  List=^TList;
  TList=record
    data:TInf;
    next:List;
  end;
 var
  SpisNach,
  tmpl:List;
  znach,a,b:int64;
  ch:char;
  x,j,i:integer;
s:string;
c:char;
m,k:tlist;
up,dn,au:boolean;
comand:array of string;
perAupn,updn,com:integer;

procedure AddElem(var nach:List;znach1:TInf);
procedure Print(spis1:List);
Procedure DelElem(var spis1:List;tmp:List);
Procedure Free(spis1:List);
procedure DelElemZnach(var Spis1:List;znach1:TInf);
procedure IncSort(nach:list);
Procedure DelElemPos(var spis1:List;posi:integer);
procedure DecSort(nach:list);

implementation

procedure AddElem(var nach:List;znach1:TInf);
var
  tmp,tmp1:List;
begin
  if nach=nil then
  begin
    Getmem(nach,SizeOf(TList));
    nach^.next:=nach;
    tmp:=nach;
  end
  else
  begin
    tmp:=nach;
    while tmp^.next<>nach do
      tmp:=tmp^.next;
    GetMem(tmp1,SizeOf(Tlist));
    tmp1^.next:=nach;
    tmp^.next:=tmp1;
    tmp:=tmp1;
  end;
  tmp^.data:=znach1;
end;

procedure Print(spis1:List);
var
  nach:List;
begin
  if spis1=nil then
  begin
    writeln('List is empty');
    readLn;
    exit;
  end;
  nach:=spis1;
  Write(spis1^.data, ' ');
  spis1:=spis1^.next;
  while spis1<>nach do
  begin
    Write(spis1^.data, ' ');
    spis1:=spis1^.next;
  end;
  readln;
end;


Procedure DelElem(var spis1:List;tmp:List);
var
  tmpi:List;
begin
  if tmp=spis1 then
  begin
    tmpi:=tmp;
    while tmpi^.next<>spis1 do
      tmpi:=tmpi^.next;
    if tmpi=spis1 then
    begin
      spis1^.next:=nil;
      dispose(spis1);
      spis1:=nil
    end
    else
    begin
      tmpi^.next:=tmp^.next;
      spis1:=spis1^.next;
      dispose(tmp)
    end;
  end
  else
  begin
    tmpi:=spis1;
    while tmpi^.next<>tmp do
      tmpi:=tmpi^.next;
    tmpi^.next:=tmp^.next;
    dispose(tmp);
  end;
end;

procedure DelElemZnach(var Spis1:List;znach1:TInf);
var
  tmp:List;
begin
  tmp:=spis1;
  if znach1=tmp^.data then
  begin
    DelElem(spis1,tmp);
    exit;
  end;
  tmp:=tmp^.next;
  while tmp<>Spis1 do
  begin
    if tmp^.data=znach1 then
    begin
      DelElem(spis1,tmp);
      exit
    end;
    tmp:=tmp^.next;
  end;
end;

Procedure Free(spis1:List);
var
  tmp,nach:List;
begin
if spis1=nil then
    exit;
  nach:=spis1;
  tmp:=spis1;
  spis1:=spis1^.next;
  dispose(tmp);
  while spis1<>nach do
  begin
    tmp:=spis1;
    spis1:=spis1^.next;
    FreeMem(tmp,SizeOf(Tlist));
  end;
end;

Procedure DelElemPos(var spis1:List;posi:integer);
var
  i:integer;
  tmp:List;
begin
if spis1=nil then exit;
  tmp:=spis1^.next;
  i:=1;
  while tmp<>spis1 do
  begin
    tmp:=tmp^.next;
    inc(i)
  end;
  begin
    i:=1;
    tmp:=spis1;
    while i<posi do
    begin
      tmp:=tmp^.next;
      inc(i)
    end;
    DelElem(spis1,tmp);
  end;
end;


procedure IncSort(nach:list);
var
  tmp,rab:List;
  tmps:Tinf;
begin
  GetMem(tmp,SizeOf(Tlist));
  rab:=nach;
  while rab^.next<>nach do
  begin
    tmp:=rab^.next;
    while tmp<>nach do
    begin
      if tmp^.data<rab^.data then
      begin
        tmps:=tmp^.data;
        tmp^.data:=rab^.data;
        rab^.data:=tmps
      end;
      tmp:=tmp^.next
    end;
    rab:=rab^.next
  end
end;

procedure DecSort(nach:list);
var
  tmp,rab:List;
  tmps:Tinf;
begin
  GetMem(tmp,SizeOf(Tlist));
  rab:=nach;
  while rab^.next<>nach do
  begin
    tmp:=rab^.next;
    while tmp<>nach do
    begin
      if tmp^.data>rab^.data then
      begin
        tmps:=tmp^.data;
        tmp^.data:=rab^.data;
        rab^.data:=tmps
      end;
      tmp:=tmp^.next
    end;
    rab:=rab^.next
  end
end;

end.
