#include <iostream>
#include <omp.h>
#include <vector>
#include <complex>
#include <chrono>
#include <fstream>

using namespace std;

typedef complex<double> base;

vector<int> information[30];	//data vector
vector<int> result(10000000);	//result vector
int counter = 1;
int thread_counter = 8;
//std::thread threads[8];	//8 threads were created


int rev(int num, int lg_n) {		//begining of good realisation
	int res = 0;
	for (int i = 0; i < lg_n; ++i)
		if (num & (1 << i))
			res |= 1 << (lg_n - 1 - i);
	return res;
}

void good_realisation(vector<base>& a, bool invert) {	//БПФ и обратное БПФ
	int n = (int)a.size();
	int lg_n = 0;
	while ((1 << lg_n) < n)  ++lg_n;

	for (int i = 0; i < n; ++i)
		if (i < rev(i, lg_n))
			swap(a[i], a[rev(i, lg_n)]);

	for (int len = 2; len <= n; len <<= 1) {
		double ang = 2 * 3.14 / len * (invert ? -1 : 1);
		base wlen(cos(ang), sin(ang));
		for (int i = 0; i < n; i += len) {
			base w(1);
			for (int j = 0; j < len / 2; ++j) {
				base u = a[i + j], v = a[i + j + len / 2] * w;
				a[i + j] = u + v;
				a[i + j + len / 2] = u - v;
				w *= wlen;
			}
		}
	}
	if (invert)
		for (int i = 0; i < n; ++i)
			a[i] /= n;
}

void good_multiplication(const vector<int>& a, const vector<int>& b, vector<int>& res, int number) {		//multiplication of two vectors
	vector<base> fa(a.begin(), a.end()), fb(b.begin(), b.end());
	int n = 1;
	while (n < max(a.size(), b.size()))  n <<= 1;
	n <<= 1;
	fa.resize(n), fb.resize(n);
	if (number == 2) {
#pragma omp parallel sections 
		{
	#pragma omp section
			{
		good_realisation(fa, false);
		}
	#pragma omp section
			{

	good_realisation(fb, false);
	}
		}
	}
	else {
		good_realisation(fa, false);

		good_realisation(fb, false);
	}

	for (int i = 0; i < n; ++i)
		fa[i] *= fb[i];
	good_realisation(fa, true);

	res.resize(n);
	for (int i = 0; i < n; ++i)
		res[i] = int(fa[i].real() + 0.5);
}

void fill_from_file(string path, int number_of_vectors, int size_of_vectors) {	//reading data from the file
	ifstream vectorr("C:\\Programming\\Parallel programming\\Lab 1\\" + path);

	for (int i = 0; i < number_of_vectors; i++) {
		information[i].resize(size_of_vectors);
	}

	for (int i = 0; i < number_of_vectors; i++) {
		for (int j = 0; j < size_of_vectors; j++) {
			vectorr >> information[i].at(j);
		}
	}
	vectorr.close();
}

void enter(string first, int number, int size, string path) {		//input

	std::cout << "\n" + first + " test is running\n";
	fill_from_file(path, number, size);	//number, size

	std::cout << "Good algorithm: ";
	unsigned int start_time = clock();


	switch (number) {
	case 2:
		good_multiplication(information[0], information[1], information[0], 2);

		break;

	case 4:
#pragma omp parallel for
		for(int i=0;i<2;i++)
			good_multiplication(information[i*2], information[i*2+1], information[i*2], 1);

		good_multiplication(information[0], information[2], information[0], 2);			


/*#pragma omp parallel sections 
	{
#pragma omp section
		{
			good_multiplication(information[0], information[1], information[0], 1);
		}
#pragma omp section
		{

			good_multiplication(information[2], information[3], information[2], 1);
		}
	}

		good_multiplication(information[0], information[2], information[0], 2);*/

		break;

	case 6:
#pragma omp parallel for
		for (int i = 0; i < 2; i++)
			good_multiplication(information[i * 2], information[i * 2 + 1], information[i * 2], 1);

#pragma omp parallel sections 
		{
#pragma omp section
			{
				good_multiplication(information[0], information[2], information[0], 1);
			}
#pragma omp section
			{
				good_multiplication(information[4], information[5], information[4], 1);
			}
		}

		good_multiplication(information[0], information[4], information[0], 2);

		break;

	case 8:
#pragma omp parallel for
		for (int i = 0; i < 4; i++)
			good_multiplication(information[i * 2], information[i * 2 + 1], information[i * 2], 1);

#pragma omp parallel sections 
		{
#pragma omp section
			{
				good_multiplication(information[0], information[2], information[0], 1);
			}
#pragma omp section
			{
				good_multiplication(information[4], information[6], information[4], 1);
			}
		}

		good_multiplication(information[0], information[4], information[0], 2);

		break;

	default:
		std::cout << "Wrong number of vectors";
	}


	unsigned int end_time = clock();
	unsigned int search_time = end_time - start_time;
	std::cout << search_time << " mc\n";
	cout << '\n';
	//counter = 1;
}

int main()
{
	cout << "2 vectors of size 100000";
	enter("The first", 2, 100000, "int_0-100 2_100000.txt");

	cout << "4 vectors of size 100000";
	enter("The second", 4, 100000, "int_0-100 4_100000.txt");

	cout << "8 vectors of size 100000";
	enter("The third", 8, 100000, "int_0-100 8_100000.txt");

	cout << "2 vectors of size 1000000";
	enter("The fourth", 2, 1000000, "int_0-100 2_1000000.txt");

	cout << "4 vectors of size 1000000";
	enter("The fifth", 4, 1000000, "int_0-100 4_1000000.txt");

	cout << "8 vectors of size 1000000";
	enter("The sixth", 8, 1000000, "int_0-100 8_1000000.txt");

	cout << "6 vectors of size 100000";
	enter("The seventh", 6, 100000, "int_0-100 6_100000.txt");

	cout << "6 vectors of size 1000000";
	enter("The eighth", 6, 1000000, "int_0-100 6_1000000.txt");

	cout << "8 vectors of size 10000";
	enter("The nineth", 8, 10000, "int_0-100 8_10000.txt");

	cout << "2 vectors of size 10000000";
	enter("The tenth", 2, 10000000, "int_0-100 2_10000000.txt");

}
