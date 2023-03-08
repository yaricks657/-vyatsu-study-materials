#include <iostream>
#define MaxNodes 4
#define B 1000

using namespace std;

class Warshall
{
private:
    unsigned Adj[MaxNodes][MaxNodes]; //Матрица смежностей
    unsigned C[MaxNodes][MaxNodes];   //Матрица достижимости
public:
    void Vvod();
    void MinDlin();
    void Vyvod();
    void Matrix();
};

void Warshall::Vvod() //Ввод
{
    cout << "Enter the elements of the adjacency matrix by lines:\n";
    for (int i = 0; i < MaxNodes; i++)
        for (int j = 0; j < MaxNodes; j++)
        {
            cout << "Enter the [" << (i + 1) << "][" << (j + 1) << "]th element of the matrix: ";
            cin >> Adj[i][j];
            if (Adj[i][j] == 0) C[i][j] = B;
            else  C[i][j] = Adj[i][j];
        }
}

void Warshall::MinDlin()    //подсчет
{
    for (int k = 0; k < MaxNodes; k++)
        for (int i = 0; i < MaxNodes; i++)
            for (int j = 0; j < MaxNodes; j++)
                if (C[i][j] > C[i][k] + C[k][j])
                    C[i][j] = C[i][k] + C[k][j];
}

void Warshall::Matrix()
{
    cout << endl;
    cout << "The original matrix:\n";
    for (int i = 0; i < MaxNodes; i++) 
    {
        for (int j = 0; j < MaxNodes; j++)
            cout << Adj[i][j] << " ";
            cout << endl;
    }
}

void Warshall::Vyvod()  //Вывод матрицы минимальной
{
    cout << endl;
    cout << "Matrix of minimum path lengths:\n";
    for (int i = 0; i < MaxNodes; i++)
    {
        for (int j = 0; j < MaxNodes; j++)
            cout << C[i][j] << " ";
        cout << endl;
    }
    cout << endl;
}

void main()
{
    Warshall A;
    A.Vvod();
    A.Matrix();
    A.MinDlin();
    A.Vyvod();
}