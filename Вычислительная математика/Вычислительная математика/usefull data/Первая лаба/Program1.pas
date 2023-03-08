//                     x+ln(x)-0.5=0  [0.1;1.0] e<=0.00001
//  Первая производная 1+1/x=0
//  Вторая производная -x^(-2)=0
{   Преобразование исходного уравнения fi(x)=x
                       x+ln(x)-0.5=0
                            x= -ln(x)-0.5
                        fi(x)= -ln(x)-0.5
                       fi`(x)= -1/x                                }
program Lab1;
const
  {Интервал изоляции корня}
  a=0.1;
  b=1.0;

  eps=0.00001; //погрешность
  h=eps/10;

  function f(x:real):real; //функция f
  begin
    f:= x+ln(x)-0.5;
  end;

  function fx(x:real):real; //функция вида x=f(x);
  begin
  //  fx:= -ln(x)+0.5;
  fx:=x-0.1*f(x);
  end;

  function df(x:real):real; //производная функции f
  begin
    df:= 1+1/x;
  end;

  function dfx(x:real):real; //производная функции fx
  begin
    dfx:= 1-0.1*df(x);
  end;

  function ddfx(x:real):real; //производная второго порядка
  begin
    ddfx:= 1/sqr(x);
  end;

  function StaticPoint(x:real):Boolean;
  begin
    if f(x)*ddfx(x)>0 then StaticPoint:=true else StaticPoint:=false;
  end;

  procedure FindRes; //уточнение корня простым итерационным методом
  var q,x0,x1,a1,b1:real; i:integer;
  begin
    i:=0;
    a1:=a; b1:=b;
    WriteLn('Итерационный метод решения уравнения:');
    WriteLn('Интервал после локализации = (',a1:0:1,' : ',b1:0:1,')'); WriteLn;

    if (abs(dfx(a1))<1) then begin
      WriteLn('Итерационный процесс сходится т.к. dfx(x0)= ',dfx(a1):0:6,' < 1');
      if (abs(dfx(a1))<0) then begin
        q:=1;
        WriteLn('Двусторонняя сходимость, т.к. df(x0) < 0');
        WriteLn;
      end;
      if (abs(dfx(a1))>0) then begin
        if dfx(a1)>dfx(b1) then q:=dfx(a1) else q:= dfx(b1);
        WriteLn('Односторонняя сходимость, т.к df(x0) > 0');
        WriteLn;
      end;
    end else begin WriteLn('Итерационный процесс расходится'); exit; end;
    {вывод результатов}
    WriteLn;
    WriteLn(' i |    xi    | fx(xi)=sqrt(ln(x+2)) | |xi-x(i+1)|');
    WriteLn('--------------------------------------------------');
    x1:=(a1+b1)/2;
    repeat
      x0:=x1;
      write(' ',i,' | ',x0:0:6);
      x1:=fx(x0);
      write(' |       ',fx(x0):0:6);
      WriteLn('       | ',abs(x1-x0):0:8);
      i:=i+1;
    until abs(x1-x0)<(q*h);
    WriteLn;
    Writeln('Ответ: ',x1:0:5);
    WriteLn; WriteLn;
  end;

procedure CombMeth; //комбинированный метод
var a0,a1,b0,b1,static:Real; i:Integer;
begin
  i:=0;
  WriteLn;
  WriteLn('Комбинированный метод решения уравнения:');
  WriteLn; WriteLn;
  WriteLn('Функция: f(x):= x-sqrt(ln(x+2))');
  WriteLn;
  WriteLn('a=',a:0:5);
  WriteLn('b=',b:0:5);
  WriteLn('eps=',eps:0:5);
  WriteLn;

  a1:=a; b1:=b;

  if StaticPoint(b) then WriteLn('Неподвижная точка: x0=b. Значение по недостатку - методом хорд. Значение по избытку - методом касательных Ньютона.')
     else if StaticPoint(b) then WriteLn('Неподвижная точка: x0=a. Значение по недостатку - методом касательных Ньютона. Значение по избытку - методом хорд.')
          else
          begin
            WriteLn('Ошибка!');
            Exit;
          end;
  {вывод результатов}
  WriteLn;
  WriteLn(' i |    ai    |    bi    |    a(i+1)    |    b(i+1)    |    |ai-bi|    |');
  WriteLn('------------------------------------------------------------------------');
  repeat
    a0:=a1;
    b0:=b1;
    if StaticPoint(b) then begin
      a1:=a0-(f(a0)*(b0-a0)/(f(b0)-f(a0)));
      b1:=b0-(f(b0)/df(b0));
      static:=a1;
    end;
    if StaticPoint(a) then begin
      b1:=b0-(f(b0)*(a0-b0)/(f(a0)-f(b0)));
      a1:=a0-(f(a0)/df(a0));
      static:=b1;
    end;
    WriteLn(' ',i,' | ',a0:0:6,' | ',b0:0:6,' |   ',a1:0:6,'   |   ',b1:0:6,'   | ',abs(a1-b1):0:10,'  |');
    i:=i+1;
  until abs(a1-b1)<h;
  WriteLn;
  WriteLn('Ответ:', a1:0:5);
end;

var x:Real; ex:Boolean;

begin
  WriteLn('f = x+ln(x)-0.5'); WriteLn;
  WriteLn('fx = -ln(x)-0.5'); WriteLn;
  WriteLn('погрешность равна 0.00001'); WriteLn;
  WriteLn('Исходный интервал = (',a:0:1,' : ',b:0:1,')'); WriteLn;
  ex:=false;

  if f(a)*f(b)<0 then begin//как минимум один корень
    ex:=true;
    FindRes; //уточнение корня методом простых итераций
    Readln;
    CombMeth;//комбинированный метод
    Readln;
  end else begin //нахождение корня если их четное количество
    x:=a;
    while (f(x)<=0) or (x>=b) do x:=x+h;
    if x>=b then WriteLn('Корни на данном промежутке отсутствуют') else ex:=true;
    if ex then begin
      FindRes; //уточнение корня методом простых итераций
      Readln;
      CombMeth;//комбинированный метод
      Readln;
    end;
  end;
end.
