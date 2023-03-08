import matplotlib.pyplot as plt
from numpy import log, arange
from prettytable import PrettyTable

a, b = 0.1, 0.9
eps = 0.00001       

def f(x):
    return 2*x + log(x) + 0.5
    
def df(x):
    return 1/x + 2

def ddf(x):
    return -1/(x*x)
    
def fi(x):
    return x - 0.1 * f(x) 
    
def dfi(x):
    return 1 - 0.1 * df(x)

def staticPoint(x):
    if (f(x) * ddf(x) > 0):
        return True
    else:
        return False
        
def minAB(a, b):
    if (abs(df(a)) > abs(df(b))):
        return abs(df(b))
    else:
        return abs(df(a))         

def showPlot(x, y):
    x = arange(x, y, eps) #последовательность

    plt.plot(x, f(x), 'k') #инициализация графика
    #plt.ylim(ymin=0) #ограничение по y
    plt.grid(True) #включение сетки
    plt.show() #показать график

def outText(startText, x, y, eps):
    print(startText)
    print('f(x) = 2*x+log(x)+0.5')
    print('eps = {}'.format(eps))
    print('Интервал = [{}, {}]'.format(x, y))   

def iteration(x, y):
    x1 = x
    i = 0
    x0 = x1
    err = False
    if ((f(x) * f(y)) > 0):
        print('Одинаковые знаки на концах графика')
        err = True
    else:
        print('dfi(x0) = {}'.format(dfi(x0)))
        print('|dfi(x0)| = {}'.format(abs(dfi(x0))))
        if (abs(dfi(x0)) < 1):
            print('Итерационный процесс сходится dfi(x) = {}, dfi(y) = {}'.format(dfi(x), dfi(y)))
            if (dfi(x) < 0) and (dfi(y) < 0):
                q = 1
                print('Тип сходимости: двусторонняя')
            else:    
                q = max(abs(dfi(x)), abs(dfi(y)))
                print('Тип сходимости: односторонняя')
        
        else:
            print('Итерационный процесс расходится {}, {}'.format(dfi(x), dfi(y)))
            err = True
        
    if err:
        print('Нет корней на данном интервале, либо он не единственный')
    else:    
        table = PrettyTable(['i', 'xi',  'fi(xi) = x(i+1)', '|xi - x(i+1)|']) 
        while True:
            x0 = x1
            x1 = fi(x0)
            table.add_row([i, x0, fi(x0), abs(x1 - x0)])
            i += 1
            if (x0 < x) or (x0 > y):
                err = True
                break
            if (abs(x1 - x0) <= q * eps):
                break
        if err:
            print(table)
            print('Нет ответа на промежутке')
        else:
            print(table)
            print('Ответ: {:.7}'.format(x1)) 
            print('Итераций: {}'.format(i - 1))
        
def combine(x, y, eps):
    while True:
      if (f(x + 0.1) * f(y - 0.1)) > 0:
          break  
      else:
          x += 0.1
          y -= 0.1
    
    print('Локализированный промежуток [{}, {}]'.format(x, y))     
    
    err = False
    i = 0
    if (f(x) * f(y) > 0):
        err = True
    
    if err:
        print('Нет корней на данном интервале, либо он не единственный')
    else:
        a1 = x
        b1 = y
        if staticPoint(a1): 
            print('f(a1) * ddf(a1) = {} * {} = {} > 0'.format(f(a1), ddf(a1), f(a1)*ddf(a1)))
            print('Неподвижная точка: х0 = a. Значение по недостатку - методом хорд. Значение по избытку - методом касательных Ньютона')
        elif staticPoint(b1):
            print('f(b1) * ddf(b1) = {} * {} = {} > 0'.format(f(b1), ddf(b1), f(b1)*ddf(b1)))
            print('Неподвижная точка: х0 = b. Значение по недостатку - методом касательных Ньютона. Значение по избытку - методом хорд')
        else:
            print('Ошибка!')
        
        table = PrettyTable(['i', 'ai', 'bi', 'a(i + 1)', 'b(i + 1)', '|ai - bi|'])
        while True:
            a0 = a1
            b0 = b1
            if staticPoint(y):
                a1 = a0 - (f(a0) * ((b0 - a0) / (f(b0) - f(a0))))
                b1 = b0 - (f(b0) / df(b0))
                static = a1
            elif staticPoint(x):
                a1 = b0 - (f(b0) * ((a0 - b0) / (f(a0) - f(b0))))
                b1 = a0 - (f(a0) / df(a0))
                static = b1
            else:
                print('Ошибка!')
                err = True
                break
            table.add_row([i, a0, b0, a1, b1, abs(a1 - b1)])
            
            if (abs(f(static) / minAB(x, y)) <= eps):
                break
            i += 1
            
        if err:
            print('Нет корней на данном интервале, либо он не единственный')
        else:
            print(table)
            print('Ответ: {:.7}'.format(b1))
            print('Итераций: {}'.format(i))
        
def main(x, y, eps):
    outText('Метод простых итераций', x, y, eps)
    iteration(x, y)
    print('\n\n\n\n\n')
    outText('Комбинированный метод', x, y, eps)
    combine(x, y, eps)
    
if __name__ == '__main__':
    showPlot(a, b)
    main(a, b, eps)