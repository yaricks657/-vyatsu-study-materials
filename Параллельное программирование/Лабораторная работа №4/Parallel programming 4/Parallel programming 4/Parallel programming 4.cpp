#include <mpi.h>
#include <stdio.h>
#include <iostream>
#include <vector>
#include <complex>
#include <chrono>
#include <fstream>


using namespace std;

typedef complex<double> base;

	//result vector
int counter = 1;
int thread_counter = 8;

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

		{
			good_realisation(fa, false);

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

void fill_from_file(string path, int number_of_vectors, int size_of_vectors, vector<int> information[]) {	//reading data from the file
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

void enter(string first, int number, int size, string path, vector<int> information[]) {		//input

	std::cout << "\n" + first + " test is running\n";
	fill_from_file(path, number, size, information);	//number, size

	
	//counter = 1;
}


int main(int argc, char** argv) {

	vector<int> information[30];	//data vector
	//vector<int> result(10000000);
	MPI_Init(NULL, NULL);
	int world_rank;
	int world_size;
	// Get the rank of the process

	MPI_Comm_rank(MPI_COMM_WORLD, &world_rank);

	MPI_Status status;
	MPI_Request request;

	if (world_rank == 1) {
		/*Data for first test*/
		MPI_Recv(&information[0], 1000000, MPI_INT, 0, 0, MPI_COMM_WORLD, MPI_STATUS_IGNORE);

		good_multiplication(information[0], information[1], information[0], 2);
		MPI_Send(&information[0], 1000000, MPI_INT, 3, 2, MPI_COMM_WORLD);

		/*Data for second test*/
		MPI_Recv(&information[0], 1000000, MPI_INT, 0, 4, MPI_COMM_WORLD, MPI_STATUS_IGNORE);

		good_multiplication(information[0], information[1], information[0], 2);
		MPI_Send(&information[0], 1000000, MPI_INT, 3, 6, MPI_COMM_WORLD);

		/*Data for third test*/
		MPI_Recv(&information[0], 1000000, MPI_INT, 0, 8, MPI_COMM_WORLD, MPI_STATUS_IGNORE);

		good_multiplication(information[0], information[1], information[0], 2);
		MPI_Send(&information[0], 1000000, MPI_INT, 6, 10, MPI_COMM_WORLD);

		/*Data for fourth test*/
		MPI_Recv(&information[0], 1000000, MPI_INT, 0, 12, MPI_COMM_WORLD, MPI_STATUS_IGNORE);

		good_multiplication(information[0], information[1], information[0], 2);
		MPI_Send(&information[0], 1000000, MPI_INT, 6, 14, MPI_COMM_WORLD);

		/*Data for fith test*/
		MPI_Recv(&information[0], 1000000, MPI_INT, 0, 16, MPI_COMM_WORLD, MPI_STATUS_IGNORE);

		good_multiplication(information[0], information[1], information[0], 2);
		MPI_Send(&information[0], 1000000, MPI_INT, 6, 18, MPI_COMM_WORLD);

		/*Data for sixth test*/
		MPI_Recv(&information[0], 1000000, MPI_INT, 0, 20, MPI_COMM_WORLD, MPI_STATUS_IGNORE);

		good_multiplication(information[0], information[1], information[0], 2);
		MPI_Send(&information[0], 1000000, MPI_INT, 6, 22, MPI_COMM_WORLD);

		/*Data for seventh test*/
		MPI_Recv(&information[0], 1000000, MPI_INT, 0, 24, MPI_COMM_WORLD, MPI_STATUS_IGNORE);

		good_multiplication(information[0], information[1], information[0], 2);
		MPI_Send(&information[0], 1000000, MPI_INT, 6, 26, MPI_COMM_WORLD);

		/*Data for eighth test*/
		MPI_Recv(&information[0], 1000000, MPI_INT, 0, 28, MPI_COMM_WORLD, MPI_STATUS_IGNORE);

		good_multiplication(information[0], information[1], information[0], 2);
		MPI_Send(&information[0], 1000000, MPI_INT, 6, 30, MPI_COMM_WORLD);

	}

	if (world_rank == 2) {

		/*Data for first test*/
		MPI_Recv(&information[2], 1000000, MPI_INT, 0, 0, MPI_COMM_WORLD, MPI_STATUS_IGNORE);

		good_multiplication(information[0], information[1], information[0], 2);
		MPI_Send(&information[2], 1000000, MPI_INT, 3, 1, MPI_COMM_WORLD);

		/*Data for second test*/
		MPI_Recv(&information[2], 1000000, MPI_INT, 0, 5, MPI_COMM_WORLD, MPI_STATUS_IGNORE);

		good_multiplication(information[0], information[1], information[0], 2);
		MPI_Send(&information[2], 1000000, MPI_INT, 3, 6, MPI_COMM_WORLD);

		/*Data for third test*/
		MPI_Recv(&information[2], 1000000, MPI_INT, 0, 9, MPI_COMM_WORLD, MPI_STATUS_IGNORE);

		good_multiplication(information[0], information[1], information[0], 2);
		MPI_Send(&information[2], 1000000, MPI_INT, 6, 10, MPI_COMM_WORLD);

		/*Data for fourth test*/
		MPI_Recv(&information[2], 1000000, MPI_INT, 0, 13, MPI_COMM_WORLD, MPI_STATUS_IGNORE);
		
		good_multiplication(information[0], information[1], information[0], 2);
		MPI_Send(&information[2], 1000000, MPI_INT, 6, 14, MPI_COMM_WORLD);

		/*Data for fith test*/
		MPI_Recv(&information[2], 1000000, MPI_INT, 0, 17, MPI_COMM_WORLD, MPI_STATUS_IGNORE);

		good_multiplication(information[0], information[1], information[0], 2);
		MPI_Send(&information[2], 1000000, MPI_INT, 6, 18, MPI_COMM_WORLD);

		/*Data for sixth test*/
		MPI_Recv(&information[2], 1000000, MPI_INT, 0, 21, MPI_COMM_WORLD, MPI_STATUS_IGNORE);

		good_multiplication(information[0], information[1], information[0], 2);
		MPI_Send(&information[2], 1000000, MPI_INT, 6, 22, MPI_COMM_WORLD);

		/*Data for seventh test*/
		MPI_Recv(&information[2], 1000000, MPI_INT, 0, 25, MPI_COMM_WORLD, MPI_STATUS_IGNORE);

		good_multiplication(information[0], information[1], information[0], 2);
		MPI_Send(&information[2], 1000000, MPI_INT, 6, 26, MPI_COMM_WORLD);

		/*Data for eighth test*/
		MPI_Recv(&information[2], 1000000, MPI_INT, 0, 29, MPI_COMM_WORLD, MPI_STATUS_IGNORE);

		good_multiplication(information[0], information[1], information[0], 2);
		MPI_Send(&information[2], 1000000, MPI_INT, 6, 30, MPI_COMM_WORLD);

	}

	if (world_rank == 3) {

		/*Data for first test*/
		MPI_Recv(&information[0], 1000000, MPI_INT, 1, 2, MPI_COMM_WORLD, MPI_STATUS_IGNORE);
		MPI_Recv(&information[2], 1000000, MPI_INT, 2, 3, MPI_COMM_WORLD, MPI_STATUS_IGNORE);

		good_multiplication(information[0], information[2], information[0], 2);
		MPI_Send(&information[2], 1000000, MPI_INT, 0, 4, MPI_COMM_WORLD);

		/*Data for third test*/
		MPI_Recv(&information[0], 1000000, MPI_INT, 1, 6, MPI_COMM_WORLD, MPI_STATUS_IGNORE);
		MPI_Recv(&information[2], 1000000, MPI_INT, 2, 7, MPI_COMM_WORLD, MPI_STATUS_IGNORE);

		good_multiplication(information[0], information[2], information[0], 2);
		MPI_Send(&information[2], 1000000, MPI_INT, 0, 8, MPI_COMM_WORLD);

	}

	if (world_rank == 4) {

		/*Data for third test*/
		MPI_Recv(&information[0], 1000000, MPI_INT, 1, 5, MPI_COMM_WORLD, MPI_STATUS_IGNORE);

		good_multiplication(information[2], information[3], information[2], 2);
		MPI_Send(&information[2], 1000000, MPI_INT, 3, 7, MPI_COMM_WORLD);

		/*Data for fith test*/
		MPI_Recv(&information[0], 1000000, MPI_INT, 1, 4, MPI_COMM_WORLD, MPI_STATUS_IGNORE);

		good_multiplication(information[0], information[1], information[0], 2);
		MPI_Send(&information[0], 1000000, MPI_INT, 3, 6, MPI_COMM_WORLD);

		/*Data for sixth test*/
		MPI_Recv(&information[0], 1000000, MPI_INT, 1, 4, MPI_COMM_WORLD, MPI_STATUS_IGNORE);

		good_multiplication(information[0], information[1], information[0], 2);
		MPI_Send(&information[0], 1000000, MPI_INT, 3, 6, MPI_COMM_WORLD);

		/*Data for third test*/
		MPI_Recv(&information[0], 1000000, MPI_INT, 1, 4, MPI_COMM_WORLD, MPI_STATUS_IGNORE);

		good_multiplication(information[0], information[1], information[0], 2);
		MPI_Send(&information[0], 1000000, MPI_INT, 3, 6, MPI_COMM_WORLD);

		/*Data for fourth test*/
		MPI_Recv(&information[0], 1000000, MPI_INT, 1, 4, MPI_COMM_WORLD, MPI_STATUS_IGNORE);

		good_multiplication(information[0], information[1], information[0], 2);
		MPI_Send(&information[0], 1000000, MPI_INT, 3, 6, MPI_COMM_WORLD);

	}

	if (world_rank == 5) {

		/*Data for third test*/
		MPI_Recv(&information[0], 1000000, MPI_INT, 1, 5, MPI_COMM_WORLD, MPI_STATUS_IGNORE);

		good_multiplication(information[2], information[3], information[2], 2);
		MPI_Send(&information[2], 1000000, MPI_INT, 3, 7, MPI_COMM_WORLD);

		/*Data for fourth test*/
		MPI_Recv(&information[0], 1000000, MPI_INT, 1, 5, MPI_COMM_WORLD, MPI_STATUS_IGNORE);

		good_multiplication(information[2], information[3], information[2], 2);
		MPI_Send(&information[2], 1000000, MPI_INT, 3, 7, MPI_COMM_WORLD);

		/*Data for fith test*/
		MPI_Recv(&information[0], 1000000, MPI_INT, 1, 5, MPI_COMM_WORLD, MPI_STATUS_IGNORE);

		good_multiplication(information[2], information[3], information[2], 2);
		MPI_Send(&information[2], 1000000, MPI_INT, 3, 7, MPI_COMM_WORLD);

		/*Data for sixth test*/
		MPI_Recv(&information[0], 1000000, MPI_INT, 1, 5, MPI_COMM_WORLD, MPI_STATUS_IGNORE);

		good_multiplication(information[2], information[3], information[2], 2);
		MPI_Send(&information[2], 1000000, MPI_INT, 3, 7, MPI_COMM_WORLD);

	}


	if (world_rank == 6) {

		/*Data for third test*/
		MPI_Recv(&information[0], 1000000, MPI_INT, 1, 5, MPI_COMM_WORLD, MPI_STATUS_IGNORE);

		good_multiplication(information[2], information[3], information[2], 2);
		MPI_Send(&information[2], 1000000, MPI_INT, 3, 7, MPI_COMM_WORLD);

		/*Data for third test*/
		MPI_Recv(&information[0], 1000000, MPI_INT, 1, 5, MPI_COMM_WORLD, MPI_STATUS_IGNORE);

		good_multiplication(information[2], information[3], information[2], 2);
		MPI_Send(&information[2], 1000000, MPI_INT, 3, 7, MPI_COMM_WORLD);

		/*Data for fourth test*/
		MPI_Recv(&information[0], 1000000, MPI_INT, 1, 5, MPI_COMM_WORLD, MPI_STATUS_IGNORE);

		good_multiplication(information[2], information[3], information[2], 2);
		MPI_Send(&information[2], 1000000, MPI_INT, 3, 7, MPI_COMM_WORLD);

		/*Data for fith test*/
		MPI_Recv(&information[0], 1000000, MPI_INT, 1, 5, MPI_COMM_WORLD, MPI_STATUS_IGNORE);

		good_multiplication(information[2], information[3], information[2], 2);
		MPI_Send(&information[2], 1000000, MPI_INT, 3, 7, MPI_COMM_WORLD);

		/*Data for sixth test*/
		MPI_Recv(&information[0], 1000000, MPI_INT, 1, 5, MPI_COMM_WORLD, MPI_STATUS_IGNORE);

		good_multiplication(information[2], information[3], information[2], 2);
		MPI_Send(&information[2], 1000000, MPI_INT, 3, 7, MPI_COMM_WORLD);

	}

	if (world_rank == 7) {

		/*Data for third test*/
		MPI_Recv(&information[0], 1000000, MPI_INT, 1, 5, MPI_COMM_WORLD, MPI_STATUS_IGNORE);

		good_multiplication(information[2], information[3], information[2], 2);
		MPI_Send(&information[2], 1000000, MPI_INT, 3, 7, MPI_COMM_WORLD);

		/*Data for fourth test*/
		MPI_Recv(&information[0], 1000000, MPI_INT, 1, 5, MPI_COMM_WORLD, MPI_STATUS_IGNORE);

		good_multiplication(information[2], information[3], information[2], 2);
		MPI_Send(&information[2], 1000000, MPI_INT, 3, 7, MPI_COMM_WORLD);

		/*Data for fith test*/
		MPI_Recv(&information[0], 1000000, MPI_INT, 1, 5, MPI_COMM_WORLD, MPI_STATUS_IGNORE);

		good_multiplication(information[2], information[3], information[2], 2);
		MPI_Send(&information[2], 1000000, MPI_INT, 3, 7, MPI_COMM_WORLD);

		/*Data for sixth test*/
		MPI_Recv(&information[0], 1000000, MPI_INT, 1, 5, MPI_COMM_WORLD, MPI_STATUS_IGNORE);

		good_multiplication(information[2], information[3], information[2], 2);
		MPI_Send(&information[2], 1000000, MPI_INT, 3, 7, MPI_COMM_WORLD);
	}


	/*0 - Master thread, 1-2 and 4-5 - threads for first multiplication, 3 - last thread, 6-7 - threds for second multiplication(6 thread for 6-size vectors)*/

	if(world_rank==0){ /*Перемножение полиномов с помощью быстрого преобразования Фурье.*/

		/*First test*/
		cout << "4 vectors of size 100000";
		enter("The second", 4, 100000, "int_0-100 4_100000.txt",information);
		cout << "Good algorithm: ";
		unsigned int start_time = clock();
		MPI_Send(&information[0],100000, MPI_INT, 1, 0, MPI_COMM_WORLD);
		MPI_Send(&information[2], 100000, MPI_INT, 2, 1, MPI_COMM_WORLD);

		cout << "4 vectors of size 1000000";
		enter("The fifth", 4, 100000, "int_0-100 4_1000000.txt",information);
		MPI_Recv(&information[2], 100000, MPI_INT, 3, 4, MPI_COMM_WORLD, MPI_STATUS_IGNORE);
		unsigned int end_time = clock();
		unsigned int search_time = end_time - start_time;
		std::cout << search_time << " mc\n";
		cout << '\n';
		
		/*Second test*/
	 start_time = clock();
		MPI_Send(&information[0], 1000000, MPI_INT, 1, 5, MPI_COMM_WORLD);
		MPI_Send(&information[2], 1000000, MPI_INT, 2, 6, MPI_COMM_WORLD);

		cout << "6 vectors of size 100000";
		enter("The seventh", 6, 100000, "int_0-100 6_100000.txt", information);
		
		MPI_Recv(&information[2], 1000000, MPI_INT, 3, 8, MPI_COMM_WORLD, MPI_STATUS_IGNORE);
	 end_time = clock();
	 search_time = end_time - start_time;
		std::cout << search_time << " mc\n";
		cout << '\n';
		
		/*Third test*/
		start_time = clock();
		MPI_Send(&information[0], 100000, MPI_INT, 1, 9, MPI_COMM_WORLD);
		MPI_Send(&information[2], 100000, MPI_INT, 2, 10, MPI_COMM_WORLD);
		MPI_Send(&information[4], 100000, MPI_INT, 3, 11, MPI_COMM_WORLD);
		MPI_Send(&information[6], 100000, MPI_INT, 4, 12, MPI_COMM_WORLD);

		cout << "6 vectors of size 1000000";
		enter("The eighth", 6, 1000000, "int_0-100 6_1000000.txt", information);

		
		MPI_Recv(&information[2], 100000, MPI_INT, 3, 13, MPI_COMM_WORLD, MPI_STATUS_IGNORE);
		end_time = clock();
		search_time = end_time - start_time;
		cout << search_time << " mc\n";
		cout << '\n';

		/*Fourth test*/
		start_time = clock();
		MPI_Send(&information[0], 1000000, MPI_INT, 1, 13, MPI_COMM_WORLD);
		MPI_Send(&information[2], 1000000, MPI_INT, 2, 14, MPI_COMM_WORLD);
		MPI_Send(&information[4], 1000000, MPI_INT, 1, 13, MPI_COMM_WORLD);

		cout << "8 vectors of size 100000";
		enter("The third", 8, 100000, "int_0-100 8_100000.txt", information);
		MPI_Recv(&information[2], 1000000, MPI_INT, 3, 16, MPI_COMM_WORLD, MPI_STATUS_IGNORE);
		end_time = clock();
		search_time = end_time - start_time;
		std::cout << search_time << " mc\n";
		cout << '\n';

		/*Fifth test*/
		start_time = clock();
		MPI_Send(&information[0], 1000000, MPI_INT, 1, 17, MPI_COMM_WORLD);
		MPI_Send(&information[2], 1000000, MPI_INT, 2, 18, MPI_COMM_WORLD);
		MPI_Send(&information[0], 1000000, MPI_INT, 1, 17, MPI_COMM_WORLD);
		MPI_Send(&information[2], 1000000, MPI_INT, 2, 18, MPI_COMM_WORLD);

		cout << "8 vectors of size 100000";
		enter("The third", 8, 100000, "int_0-100 8_100000.txt", information);
		MPI_Recv(&information[2], 1000000, MPI_INT, 3, 20, MPI_COMM_WORLD, MPI_STATUS_IGNORE);
		end_time = clock();
		search_time = end_time - start_time;
		std::cout << search_time << " mc\n";
		cout << '\n';

		/*Sixth test*/
		start_time = clock();
		MPI_Send(&information[0], 1000000, MPI_INT, 1, 21, MPI_COMM_WORLD);
		MPI_Send(&information[2], 1000000, MPI_INT, 2, 22, MPI_COMM_WORLD);
		MPI_Send(&information[0], 1000000, MPI_INT, 1, 17, MPI_COMM_WORLD);
		MPI_Send(&information[2], 1000000, MPI_INT, 2, 18, MPI_COMM_WORLD);

		cout << "8 vectors of size 1000000";
		enter("The sixth", 8, 1000000, "int_0-100 8_1000000.txt", information);
		MPI_Recv(&information[2], 1000000, MPI_INT, 3, 24, MPI_COMM_WORLD, MPI_STATUS_IGNORE);
		end_time = clock();
		search_time = end_time - start_time;
		std::cout << search_time << " mc\n";
		cout << '\n';

		/*seventh test*/
		start_time = clock();
		MPI_Send(&information[0], 1000000, MPI_INT, 1, 25, MPI_COMM_WORLD);
		MPI_Send(&information[2], 1000000, MPI_INT, 2, 16, MPI_COMM_WORLD);
		MPI_Send(&information[0], 1000000, MPI_INT, 1, 17, MPI_COMM_WORLD);
		MPI_Send(&information[2], 1000000, MPI_INT, 2, 18, MPI_COMM_WORLD);

		cout << "8 vectors of size 10000";
		enter("The nineth", 8, 10000, "int_0-100 8_10000.txt",information);
		MPI_Recv(&information[2], 1000000, MPI_INT, 3, 18, MPI_COMM_WORLD, MPI_STATUS_IGNORE);
		end_time = clock();
		search_time = end_time - start_time;
		std::cout << search_time << " mc\n";
		cout << '\n';

		/*Eighth test*/
		start_time = clock();
		MPI_Send(&information[0], 1000000, MPI_INT, 1, 17, MPI_COMM_WORLD);
		MPI_Send(&information[0], 1000000, MPI_INT, 1, 17, MPI_COMM_WORLD);
		MPI_Send(&information[2], 1000000, MPI_INT, 2, 18, MPI_COMM_WORLD);
		MPI_Send(&information[2], 1000000, MPI_INT, 2, 18, MPI_COMM_WORLD);

		cout << "2 vectors of size 10000000";
		enter("The tenth", 2, 10000000, "int_0-100 2_10000000.txt",information); 
		MPI_Recv(&information[2], 1000000, MPI_INT, 3, 20, MPI_COMM_WORLD, MPI_STATUS_IGNORE);
		end_time = clock();
		search_time = end_time - start_time;
		std::cout << search_time << " mc\n";
		cout << '\n';

		/*Nineth test*/
		start_time = clock();
		MPI_Send(&information[0], 1000000, MPI_INT, 1, 17, MPI_COMM_WORLD);
		MPI_Send(&information[2], 1000000, MPI_INT, 2, 18, MPI_COMM_WORLD);

		cout << "2 vectors of size 1000000";
		enter("The fourth", 2, 1000000, "int_0-100 2_1000000.txt",information);
		MPI_Recv(&information[2], 1000000, MPI_INT, 3, 20, MPI_COMM_WORLD, MPI_STATUS_IGNORE);
		end_time = clock();
		search_time = end_time - start_time;
		std::cout << search_time << " mc\n";
		cout << '\n';

		/*Tenth test*/
		start_time = clock();
		MPI_Send(&information[0], 1000000, MPI_INT, 1, 17, MPI_COMM_WORLD);
		MPI_Send(&information[2], 1000000, MPI_INT, 2, 18, MPI_COMM_WORLD);

		MPI_Recv(&information[2], 1000000, MPI_INT, 3, 20, MPI_COMM_WORLD, MPI_STATUS_IGNORE);
		end_time = clock();
		search_time = end_time - start_time;
		std::cout << search_time << " mc\n";
		cout << '\n';
	}

	MPI_Finalize();

}