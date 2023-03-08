# -*- coding: utf-8 -*-
from prettytable import PrettyTable
from math import factorial, sqrt, log
import matplotlib.pyplot as plt
from numpy import arange
         
def sqrNear(ax, ay, y1, y2, y3):
    
    def gauss(arr):
        sa = arr[1][0] / arr[0][0]
        arr[1][0] = arr[1][0] - sa * arr[0][0]
        arr[1][1] = arr[1][1] - sa * arr[0][1]
        arr[1][2] = arr[1][2] - sa * arr[0][2]
        b = arr[1][2] / arr[1][1]
        a = (arr[0][2] - arr[0][1] * b) / arr[0][0]
        return (a, b)      
    
    tableStart = PrettyTable(['X', 'Y'])
    for i in range(len(ax)):
        tableStart.add_row([ax[i], ay[i]])
    print('Начальные данные')
    print(tableStart)
    
    k = 5
    mi = 0
    print('Тип сходимости:', end = ' ')
    if mi == 0:
        print('Линейная (y = ax + b)')
    elif mi == 1:
        print('Показательная (y = a * (b ^ x))')
    elif mi == 2:
        print('Дробно-линейная (y = 1 / (ax + b))')
    elif mi == 3:
        print('Логарифмическая (y = a * ln(x) + b)')
    elif mi == 4:
        print('Степенная (y = a * (x ^ b)')
    elif mi == 5:
        print('Гиперболическая (y = a + (b / x)')
    else:
        print('Дробно-рациональная (y = x / (ax + b))')

    s = sum(ax)
    ss = 0
    sy = sum(ay)
    pro = 0
    for i in range(len(ax)):
        ss += ax[i] ** 2
        pro += (ax[i] * ay[i])
        
    koef = [[0 for i in range(3)] for i in range(2)] 
    koef[0][0] = ss
    koef[0][1] = s
    koef[0][2] = pro
    koef[1][0] = s
    koef[1][1] = k
    koef[1][2] = sy

    print('{:.6} * a + {:.6} * b = {:.6}'.format(koef[0][0], koef[0][1], koef[0][2]))
    print('{:.6} * a + {} * b = {:.6}'.format(koef[1][0], koef[1][1], koef[1][2]))
    a, b = gauss(koef)

    print('\na = {:.6}\nb = {:.6}\n'.format(a, b))  
    
    def f1(x):
        return a * x + b
    
    def f2(x):
        return a * (b ** x)

    def f3(x):
        return 1 / f1(x)

    def f4(x):
        return a * log(x) + b
    
    def f5(x):
        return a * (x ** b)

    def f6(x):
        return a + (b / x)

    def f7(x):
        return x / f1(x)   
    
    func = [f1, f2, f3, f4, f5, f6, f7]    
    
    tableAns = PrettyTable(['i', 'Y теор', 'Отклонение'])    
    
    for i in range(len(ax)):
        tableAns.add_row([i + 1, round(func[mi](ax[i]), 6), round(func[mi](ax[i]) - ay[i], 6)])
    
    print(tableAns)
    
    ssq = 0
    for i in range(len(ax)):
        ssq += (func[mi](ax[i]) - ay[i]) ** 2
        
    ssq = sqrt(ssq / 10)
        
    print('Среднеквадратичное отклонение = {:.6}'.format(ssq))
    
    aax = arange(ax[0], ax[-1], 0.1)
    plt.plot(aax, func[mi](aax), 'm')
    plt.plot(aax, ay, 'k')
    plt.grid(True)
    plt.show()    
    
if __name__ == '__main__':
    sqrNear([2.0 + (i * 0.2) for i in range(10)], [1.20, 1.38, 1.58, 1.82, 2.09, 2.40, 2.80, 3.17, 3.64, 4.18], 2, 3, 4)