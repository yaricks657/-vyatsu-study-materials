#include <iostream>
#include <fstream>
#include <vector>


using namespace std;



void data_generator(string path, int min, int max, int size_of_vectors, int number_of_vectors)
{
    vector<int> test(size_of_vectors);
    ofstream out;
    out.open("C:\\Programming\\Parallel programming\\Lab 1\\" + path);

    for (int i = 0; i < number_of_vectors; i++) {
        for (int j = 0; j < size_of_vectors; j++) {
            test.at(j) = min + rand() % (max+1);
            out << test[j] << " ";
        }
        out << "\n";
    }
    out.close();
}

int main()
{
    cout << "Generation begins\n";
    data_generator("int_0-1 20_10.txt",0,1,10,20);
    data_generator("int_0-1 20_5.txt", 0, 1, 5, 20);   //size, number
    data_generator("int_0-1 10_10.txt", 0, 1, 10, 10);
    data_generator("int_0-1 10_5.txt", 0, 1, 5, 10); 
    data_generator("int_0-100 10_1000.txt", 0, 100, 1000, 10);
    data_generator("int_0-100 15_1000.txt", 0, 100, 1000, 15); //size, number
    data_generator("int_0-100 2_1000000.txt", 0, 100, 1000000, 2);
    data_generator("int_0-100 4_1000000.txt", 0, 100, 1000000, 4); //size, number
 //   data_generator("int_0-100 2_1000000.txt", 0, 100, 1000000, 2);
   // data_generator("int_0-100 3_1000000.txt", 0, 100, 1000000, 3); //size, number
    cout << "Generation ends";


}

