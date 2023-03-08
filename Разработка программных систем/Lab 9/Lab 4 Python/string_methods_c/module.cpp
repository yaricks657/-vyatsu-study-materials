#include <pybind11/pybind11.h>
#include <string>
#include <set>

namespace py = pybind11;
using namespace std;

int number_of_words(string line)
{
	int count = 0;
	int p = line.length(), i = 0;
	while (i < p)
	{
		if (line[i] != ' ' && (line[i + 1] == ' ' || line[i + 1] == '\0'))
			count++;
		i++;
	}
	return count;
}

int number_of_symbols(string line)
{
	int count = 0;
	int len = line.length();

	for (int i = 0; i < len; i++)
	{
		if (line[i] != ' ')
			count++;
	}
	return count;
}

int number_of_universal_symbols(string line)
{
	set<char>x;
	for (int i = 0; i < line.length(); i++)
		x.insert(line[i]);
	return x.size();
}

int numbrer_of_defined_characters(string line, char symbols)
{
	int count = 0;

	for (unsigned int i = 0; i < line.length(); i++)
		if (line[i] == symbols)
			count++;
	return count;
}

PYBIND11_MODULE(string_methods_c, m) {
	m.def("number_of_words", &number_of_words);
	m.def("number_of_symbols", &number_of_symbols);
	m.def("number_of_universal_symbols", &number_of_universal_symbols);
	m.def("numbrer_of_defined_characters", &numbrer_of_defined_characters);
}