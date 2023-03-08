

#include <iostream>
#include <fstream>
#include <vector>

using namespace std;

int main()
{
    cout << "Generation begins\n";
    vector<int> test(3);
    for (int i = 0; i < 9; i++) {
        test = {rand() % 9, rand() % 9, rand() % 9 };
        for (int j = 0; j < 2; j++) {
            cout << test[i]<<" ";
        }
        cout << "\n";
    }

}

