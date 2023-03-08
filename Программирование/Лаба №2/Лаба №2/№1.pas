program lab2;
var mas: array[1..100] of integer;
i,j,k,b: integer;
begin
  writeLn('Введите количество элементов массива в диапазоне от 1 до 100: ');
  readLn(b);
  if (b>100) or (b<1) then
    writeLn('Введено число, несоответсвующее диапазону чисел массива: ') else
      begin
           for i := 1 to b do
             begin
      writeLn('Введите ',i, '-ый элемент массива: ');
        readLn(mas[i]);
        end;
        writeLn('Введите число k: ');
        readLn(k);
        for i := 1 to b do
          for j := 1 to b do  
            if abs(mas[i]-mas[j])=k then
              writeLn('Вот эти числа: ', mas[i], ' ', mas[j]);
              end;
end.