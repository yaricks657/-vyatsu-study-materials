//                     x+ln(x)-0.5=0  [0.1;1.0] e<=0.00001
//  Ïåğâàÿ ïğîèçâîäíàÿ 1+1/x=0
//  Âòîğàÿ ïğîèçâîäíàÿ -x^(-2)=0
{   Ïğåîáğàçîâàíèå èñõîäíîãî óğàâíåíèÿ fi(x)=x
                       x+ln(x)-0.5=0
                            x= -ln(x)-0.5
                        fi(x)= -ln(x)-0.5
                       fi`(x)= -1/x                                }
Program VichMat-Iter;
uses SysUtils, System, Windows;
const eps=0.00001;
      a=0.1; b=1.0; //èíòåğâàë            
var x0, x1: real;
    I, q: integer;
begin

//Çíà÷åíèå ôóíêöèè f(x)
Function f(x:real):real;
begin
f:=x+ln(x)-0.5;
end;

//Çíà÷åíèå ôóíêöèè fi(x)
Function fi(x:real):real;
begin
fi:=-ln(x)-0.5;
end;

Function dfi(x:real):real;
begin
dfi:=-1/x;
end; 

Procedure MyWriteln(const S:string);
var NewStr: string;
begin
SetLength(NewStr,Length(s));
CharToOem(PChar(s),PChar(NewStr))
Write(NewStr);



end.