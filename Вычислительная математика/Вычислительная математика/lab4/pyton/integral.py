from numpy import arange, sqrt, cos, sin
import matplotlib.pyplot as plt
from prettytable import PrettyTable


def showPlot(func, x, y, eps):
    xy = arange(x, y, eps) #последовательность
    
    plt.plot(xy, func(xy), 'k') #инициализация графика
    #plt.ylim(ymin=0) #ограничение по y
    plt.grid(True) #включение сетки
    plt.show() #показать график

def f1(x):
    return  1/sqrt(2+0,5*x**2)

def df1(x):
    return (f1(x) - f1(x + 0.0001))/0.0001

def df2(x):
    return (df1(x) - df1(x + 0.0001))/0.0001    

def df3(x):
    return (df2(x) - df2(x + 0.0001))/0.0001    

def df4(x):
    return (df3(x) - df3(x + 0.0001))/0.0001    

def f2(x):
    return sin(2*x)/x**2   
    
def f3(x):
     return  (x+1)/sqrt(x**2+2)    

def f(x, y):
    return x+y  

def maxm(a, b):
    x = a
    fMax = df4(a)    
    while True:
        x += 0.01
        if df4(x) > fMax:
            fMax = df4(x)
        if x >= b:
            break
    return fMax    
    
def h(a, b, eps):
    m = maxm(a, b)
    step = sqrt(sqrt((180 * eps)/((b - a) * m))) 
    n = round((b - a)/(2 * step))
    if n % 2 != 0:
        n += 2
    else:
        n += 1
    return (b - a)/(2 * n)    

def simpson(a, b, eps):
    st = h(a, b, eps)
    n = round((b - a) / st)
    integral = f1(a) + f1(b)
    x = a
    k = 0
    while True:
        x += st
        k += 1
        if k % 2 == 0:
            integral += 2 * f1(x)
        else:
            integral += 4 * f1(x)
        if k == n - 1:
            break
    integral *= (st/3)
    print('Определённый интеграл на промежутке [{};{}] = {}'.format(a, b, integral))
    showPlot(f1, a, b, 0.01)

def trapeze(a, b, eps):
    st = sqrt(eps)
    while True:
        x = a
        integral = (f2(a) + f2(b)) * 0.5
        integral1 = integral
        while True:
            x += st / 2
            integral1 += f2(x)
            x += st / 2
            integral += f2(x)
            integral1 += f2(x)
            if x >= (b - st):
                break
        integral *= st
        integral1 *= st / 2
        if (abs(integral - integral1) / 3) < eps:
            integral = integral1
            break
        else:
            st /= 2
    print('Определённый интеграл на интервале [{};{}] = {}'.format(a, b, integral))
    showPlot(f2, a, b, 0.01)        

def gauss(xes, aes, a, b):
    integral = 0
    if len(xes) != len(aes):
        exit
    for i in range(len(xes)):
        integral += aes[i] * f3(xes[i]*(b-a)/2+(b+a)/2)
    integral *= (b - a) / 2
    print('Определённый интеграл на интервале [{};{}] = {}'.format(a, b, integral)) 
    showPlot(f3, a, b, 0.01)              
 
def diff(a, b, y, h):
    x = a
    i = 0
    ax = []
    ay = []
    ax.append(x)
    ay.append(y)
    table = PrettyTable(['Шаг', 'Xi', 'Yi', 'F(Xi, Yi)', 'Xi + h', 'Yi + h*Y`i', 'F(Xi+h,Yi+h*Y`i)', 'dYi'])
    while True:
        i += 1
        x0 = x
        y0 = y
        q = f(x, y)
        x += h
        ax.append(x)
        a = y + h * q
        u = f(x, a)
        dy = h / 2 * (q + u)
        y += dy
        ay.append(y)
        table.add_row([i - 1, round(x0, 5), round(y0, 5), round(q, 5), round(x, 5), round(a, 5), round(u, 5), round(dy, 5)])
        if x >= b:
            break     
    print(table)  
      
    
    aax = arange(ax[0], ax[-1], 0.1)
    plt.plot(aax, ay[:-1], 'k')
    plt.grid(True)
    plt.show()
    
  
if __name__ == '__main__':    
    print('Интегрирование по формуле Симпсона')
    print('Функция 1/sqrt(x^2+4)')
    simpson(0.4, 1.2, 0.0001)     
    
    print('\n\n\n')
    
    print('Интегрирование по формуле трапеции')
    print('Функция cos(x^2)/(x+1) ')
    trapeze(0.8, 1.2, 0.0001)
    
    print('\n\n\n')
    
    print('Интегрирование по квадратурной формуле Гаусса с 5 узлами')
    print('Функция (x+0,5)/sqrt(x^2+1)')
    gauss([-0.86114 , -0.33998, 0.33998, 0.86114], [0.34785, 0.65215, 0.65215, 0.34785], 2.2, 3.8)
    
    print('\n\n\n')
    
    print('Интегрирование по квадратурной формуле Гаусса с 8 узлами')
    print('Функция (x+0,5)/sqrt(x^2+1)')
    gauss([-0,949107912, -0.741531186, -0.405845151, 0, 0.405845151, 0.741531186, 0.949107912], [0.129484966, 0.279705391, 0.381830051, 0.417959184, 0.381830051, 0.279705391, 0.129484966], 2.2, 3.8)
    
    print('\n\n\n')    
    
    print('Дифференцирование')
    print('Формула y`=2*y-2*x^2-3')
    print('y(0)=2; h=0.1; 0<=x<=1')
    diff(0, 0.8, 1, 0.1)
    