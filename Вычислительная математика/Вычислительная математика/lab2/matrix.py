# -*- coding: utf-8 -*-
from prettytable import PrettyTable
from copy import copy
from math import sin, cos, tan
import numpy as np


matrixGauss = [[2.00, 0.05, -3.01, -0.11, 0.21],             
               [1.00, -2.00, 3.02, 0.05, 0.18],             
               [0.17, 0.99, -2.00, -0.17, 0.17],             
               [0.33, -0.07, 0.33, 2.00, 0.17]]
          
matrixZeidel = [[0.21, 0.12, -0.34, -0.16, -0.64],           
                [0.34, -0.08, -0.17, -0.18, 1.42],           
                [0.16, 0.34, 0.15, -0.31, -0.42],           
                [0.12, -0.26, -0.08, 0.25, 0.83]]   
          
matrixRev = [[1, 2, 1, 5], [3, -5, 4, 6], [2, 6, 1, 10]] 

def printMatrix(text, matrix):
    print(text)
    table = PrettyTable(['X1', 'X2', 'X3', 'X4', 'ans'])
    for i in range(len(matrix)):
        table.add_row([round(matrix[i][j], 4) for j in range(len(matrix[i]))])
    
    print(table)    

def gauss(matrix):
    printMatrix('Решение методом Гаусса.\nИсходная матрица: ', matrix)
    
    b1 = [0, 0, 0, 0, 0]
    b2 = [0, 0, 0, 0, 0]
    b3 = [0, 0, 0, 0, 0]
    
    for i in range(4, -1, -1):
        b1[i] = matrix[0][i] / matrix[0][0]
    
    print('b = {}'.format([round(b1[i], 4) for i in range(len(b1))])) 
    
    for i in range(1, 4):
        for j in range(1, 5):
            matrix[i][j] = matrix[i][j] - b1[j]*matrix[i][0]
    
    for i in range(4):
        for j in range(5):
            if i == 0 or j == 0:
                matrix[i][j] = 0
        
    printMatrix('\nПервая итерация', matrix) 
    
    for i in range(4, 0, -1):
        b2[i] = matrix[1][i] / matrix[1][1]       

    print('b = {}'.format([round(b2[i], 4) for i in range(len(b2))]))    
    
    for i in range(2, 4):
        for j in range(2, 5):
            matrix[i][j] = matrix[i][j] - b2[j]*matrix[i][1]
            
    for i in range(4):
        for j in range(5):
            if i == 1 or j == 1:
                matrix[i][j] = 0
        
    printMatrix('\nВторая итерация', matrix) 

    for i in range(4, 1, -1):
        b3[i] = matrix[2][i] / matrix[2][2]       

    print('b = {}'.format([round(b3[i], 4) for i in range(len(b3))]))     
    
    for i in range(3, 4):
        for j in range(3, 5):
            matrix[i][j] = matrix[i][j] - b3[j]*matrix[i][2]

    for i in range(4):
        for j in range(5):
            if i == 2 or j == 2:
                matrix[i][j] = 0     
     
    printMatrix('\nТретья итерация', matrix)
    
    x4 = matrix[3][4] / matrix[3][3]
    x3 = b3[4] - b3[3] * x4
    x2 = b2[4] - b2[3] * x4 - b2[2] * x3
    x1 = b1[4] - b1[3] * x4 - b1[2] * x3 - b1[1] * x2
    
    print('\nx1 = {:.4}\nx2 = {:.4}\nx3 = {:.4}\nx4 = {:.4}\n'.format(x1,x2,x3,x4))

def xx(matrix, x1, x2, x3, x4, num):
    return matrix[num][0] * x1 + matrix[num][1] * x2 + matrix[num][2] * x3 + matrix[num][3] * x4 + matrix[num][4]

def zeidel(matrix):
    print('Метод Зейделя\n')
    printMatrix('Начальная матрица', matrix)
    print('Итерации: ')
    table = PrettyTable(['№', 'X1', 'X2', 'X3', 'X4'])
    iters = 1
    e = 0.0001;
    x1 = matrix[0][4] / matrix[0][0]
    x2 = matrix[1][4] / matrix[1][1]
    x3 = matrix[2][4] / matrix[2][2]
    x4 = matrix[3][4] / matrix[3][3]
    table.add_row([iters, round(x1, 4), round(x2, 4), round(x3, 4), round(x4, 4)])
    iters += 1
    y1 = xx(matrix, x1, x2, x3, x4, 0)
    y2 = xx(matrix, x1, x2, x3, x4, 1)
    y3 = xx(matrix, x1, x2, x3, x4, 2)
    y4 = xx(matrix, x1, x2, x3, x4, 3)
    while ((abs(x1 - y1) > e) or (abs(x2 - y2) > e) or (abs(x3 - y3) > e) or (abs(x4 - y4) > e)):    
        x1 = y1
        x2 = y2
        x3 = y3
        x4 = y4
        table.add_row([iters, round(x1, 4), round(x2, 4), round(x3, 4), round(x4, 4)])
        iters += 1
        y1 = xx(matrix, x1, x2, x3, x4, 0)
        y2 = xx(matrix, x1, x2, x3, x4, 1)
        y3 = xx(matrix, x1, x2, x3, x4, 2)
        y4 = xx(matrix, x1, x2, x3, x4, 3)
    x1 = y1
    x2 = y2
    x3 = y3
    x4 = y4
    
    table.add_row([iters, round(x1, 4), round(x2, 4), round(x3, 4), round(x4, 4)])
    print(table)
    print('\nx1 = {:.5}\nx2 = {:.5}\nx3 = {:.5}\nx4 = {:.5}\n'.format(x1,x2,x3,x4))

def det2(matrix):
    return matrix[0][0] * matrix[1][1] - matrix[1][0] * matrix[0][1]

def det3(matrix):
    return matrix[0][0] * matrix[1][1] * matrix[2][2] + matrix[0][1] * matrix[1][2] * matrix[2][0] + matrix[1][0] * matrix[2][1] * matrix[0][2] - matrix[2][0] * matrix[1][1] * matrix[0][2] - matrix[1][0] * matrix[0][1] * matrix[2][2] - matrix[2][1] * matrix[1][2] * matrix[0][0]

def obr(matrix):
    matrix0 = [[0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0]]
    matrix2 = [[0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0]]
    ans = [[0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0]]
    
    x = 0
    y = 0
    q = abs(det3(matrix))
    if (q != 0):
        for i in range(0, 3):
            for j in range(0, 3):
                for k in range(0, 3):
                    for l in range(0, 3):
                        if ((k != i) and (l != j)):
                            matrix2[x][y] = matrix[k][l]
                            if y == 0:
                                y = 1
                            else:
                                y = 0
                                x = 1
                x = 0
                y = 0
                w = det2(matrix2)
                matrix2 = copy(matrix0)
                ans[i][j] = w / q
                if ((i + j) % 2) == 1:
                    ans[i][j] = (-1) * ans[i][j]
                    
    return ans
    
def rev(matrix):
    print('Метод обратной матрицы\n')
    table = PrettyTable(['X1', 'X2', 'X3', 'ans'])
    #obrMatrix = obr(matrix)
    print(matrix)
    obrMatrix = np.linalg.inv([[matrix[0][i] for i in range(3)], [matrix[1][i] for i in range(3)], [matrix[2][i] for i in range(3)]])    
    x1 = 0
    x2 = 0
    x3 = 0
    
    for i in range(3):
        table.add_row(matrix[i])
    
    print('Начальная матрица')    
    print(table)    
    
    trans = [[0, 0, 0], [0, 0, 0], [0, 0, 0]]    
    
    for i in range(0, 3):
        for j in range(0, 3):
            trans[i][j] = obrMatrix[j][i]
    
    for i in range(0, 3):
        x1 += trans[0][i] * matrix[i][3] 
        x2 += trans[1][i] * matrix[i][3]
        x3 += trans[2][i] * matrix[i][3]

    table1 = PrettyTable(['X1', 'X2', 'X3'])

    for i in range(3):
        table1.add_row([round(trans[i][j], 4) for j in range(3)])
        
    print('Обратная матрица')
    print(table1)

    print('\nx1 = {:.4}\nx2 = {:.4}\nx3 = {:.4}\n'.format(x1 * 2, x2 * 2,x3 * 2))  

def gaussForNewton(n, x, matrix):  
    k = 0
    i = 1
    matrix[i][1] -= matrix[i][k] * matrix[k][1] / matrix[k][k]
    matrix[i][2] -= matrix[i][k] * matrix[k][2] / matrix[k][k]
    c = matrix[k][k]
    for l in range(n+2):
        matrix[k][l] /= c
    x[n] = matrix[n][n+1] / matrix[n][n]
    k = 0
    s = matrix[k][1] * x[1] 
    x[k] = (matrix[k][n + 1] - s) / matrix[k][k]

def f1(x, y):
    return tan(5*x) - cos(3.5*y)

def f2(x, y):
    return 2.4*(y**3) - (x**2) - 4*x - 3

def f1x(x, y):
    return 5/(cos(5*x))**2

def f1y(x, y):
    return -3.5*sin(3.5*x)

def f2x(x, y):
    return -2*x - 4

def f2y(x, y):
    return 2.4*3*(y**2)   
            
def newton(n, x):
    print('\nМетод Ньютона')
    print('Первое уравнение: tg(5*x)-cos(3,5*y)=0\nВторое уравнение:  2,4(y^3)-x^2-4*x-3=0\n')
    table = PrettyTable(['№', 'Невязка X', 'Невязка Y', 'X', 'Y'])    
    counter = 0
    nev = [0,0,0,0]
    eps = 0.001
    table.add_row([counter, '-', '-', x[0], x[1]])
    matrix = [[0, 0, 0, 0, 0], [0, 0, 0, 0, 0], [0, 0, 0, 0, 0], [0, 0, 0, 0, 0]] 
    while True:
        matrix[0][0] = f1x(x[0], x[1])
        matrix[0][1] = f1y(x[0], x[1])
        matrix[1][0] = f2x(x[0], x[1])
        matrix[1][1] = f2y(x[0], x[1])
        matrix[0][2] = -f1(x[0], x[1])
        matrix[1][2] = -f2(x[0], x[1])
        
        gaussForNewton(n - 1, nev, matrix)
        
        for i in range(n):
            x[i] += nev[i]
        
        if abs(nev[0]) > abs(nev[1]):
            m = nev[0] ** 2
        else:
            m = nev[1] ** 2
            
        counter += 1
        table.add_row([counter, nev[0], nev[1], x[0], x[1]])
        if (m<eps) or (counter>30):
            print(table)
            print('\nx = {:.4}\ny = {:.4}\n'.format(x[0],x[1]))
            break       
          
if __name__ == '__main__':
    gauss(matrixGauss)
    print('\n\n\n')
    zeidel(matrixZeidel)
    print('\n\n\n')
    rev(matrixRev) 
    print('\n\n\n')
    newton(2, [0.5, 1])         

   

