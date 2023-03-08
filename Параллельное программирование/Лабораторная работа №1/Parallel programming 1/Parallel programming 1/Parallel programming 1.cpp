#include <iostream>
#include <fstream>
#include <vector>
#include <complex>
#include <bitset>
#include <ctime>
//#include <wide_integer>

using namespace std;

typedef complex<double> base;

vector<int> information[100];	//data vector
vector<int> result(10000000);	//result vector
int counter = 1;


void fill_from_file(string path,int number_of_vectors,int size_of_vectors) {	//reading data from the file
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

void bad_realisation(vector<base>& a,bool invert) {		//main part of the fast conversion
	int n = (int)a.size();
	if (n == 1)  return;

	vector<base> a0(n / 2), a1(n / 2);
	for (int i = 0, j = 0; i < n; i += 2, ++j) {
		a0[j] = a[i];
		a1[j] = a[i + 1];
	}
	bad_realisation(a0,invert);
	bad_realisation(a1,invert);

	double ang = 2 * 3.14 / n * (invert ? -1 : 1);
	base w(1), wn(cos(ang), sin(ang));
	for (int i = 0; i < n / 2; ++i) {
		a[i] = a0[i] + w * a1[i];
		a[i + n / 2] = a0[i] - w * a1[i];
		if (invert)
			a[i] /= 2, a[i + n / 2] /= 2;
		w *= wn;
	}
}

void bad_multiplication(const vector<int>& a, const vector<int>& b, vector<int>& res,int number) {		//multiplication of two vectors
	if (counter != number) {
		vector<base> fa(a.begin(), a.end()), fb(b.begin(), b.end());
		int n = 1;
		while (n < max(a.size(), b.size()))  n <<= 1;
		n <<= 1;
		fa.resize(n), fb.resize(n);

		bad_realisation(fa, false), bad_realisation(fb, false);
		for (int i = 0; i < n; ++i)
			fa[i] *= fb[i];
		bad_realisation(fa, true);

		res.resize(n);
		for (int i = 0; i < n; ++i)
			res[i] = int(fa[i].real() + 0.5);
		counter++;
		bad_multiplication(information[counter], result, result,number);
	}
}

int rev(int num, int lg_n) {		//begining of good realisation
	int res = 0;
	for (int i = 0; i < lg_n; ++i)
		if (num & (1 << i))
			res |= 1 << (lg_n - 1 - i);
	return res;
}

void good_realisation(vector<base>& a, bool invert) {
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

void good_multiplication(const vector<int>& a, const vector<int>& b, vector<int>& res,int number) {		//multiplication of two vectors
	if (counter != number) {
		vector<base> fa(a.begin(), a.end()), fb(b.begin(), b.end());
		int n = 1;
		while (n < max(a.size(), b.size()))  n <<= 1;
		n <<= 1;
		fa.resize(n), fb.resize(n);

		good_realisation(fa, false), good_realisation(fb, false);
		for (int i = 0; i < n; ++i)
			fa[i] *= fb[i];
		good_realisation(fa, true);

		res.resize(n);
		for (int i = 0; i < n; ++i)
			res[i] = int(fa[i].real() + 0.5);
		counter++;
		good_multiplication(information[counter], result, result,number);
	}
}

void enter(string first,int number,int size, string path) {		//input

	cout <<"\n" +  first + " test is running\n";
	fill_from_file(path, number, size);	//number, size

	cout << "Bad algorithm: ";
	unsigned int start_time = clock();
	bad_multiplication(information[0], information[1], result, number);
	unsigned int end_time = clock();
	unsigned int search_time = end_time - start_time;
	cout << search_time << " mc\n";
	counter = 1;

	cout << "Good algorithm: ";
	start_time = clock();
	good_multiplication(information[0], information[1], result, number);
	end_time = clock();
	search_time = end_time - start_time;
	cout << search_time << " mc\n";
	counter = 1;
}

int main()
{
	/*int (0..1) 10 штук в размерности 5*/
	enter("The first", 10, 5, "int_0-1 10_5.txt");

   /*int (0..1) 10 штук в размерности 10*/
	enter("The second", 10, 10, "int_0-1 10_10.txt");

   /*int (0..1) 20 штук в размерности 5*/
	enter("The third", 20, 5, "int_0-1 20_5.txt");

	/*int (0..1) 20 штук в размерности 10*/
	enter("The fourth", 20, 10, "int_0-1 20_10.txt");

	/*int (0..100) 10 штук в размерности 1000*/
	enter("The fifth", 10, 1000, "int_0-100 10_1000.txt");

	/*int (0..100) 15 штук в размерности 1000*/
	enter("The sixth", 15, 1000, "int_0-100 15_1000.txt");

	/*int (0..100) 2 штук в размерности 1000000*/
	enter("The seventh", 2, 1000000, "int_0-100 2_1000000.txt");

	/*int (0..100) 4 штук в размерности 1000000*/
	enter("The eighth", 4, 1000000, "int_0-100 4_1000000.txt");






 //  cout << result.at(0)<<"\n";




}

