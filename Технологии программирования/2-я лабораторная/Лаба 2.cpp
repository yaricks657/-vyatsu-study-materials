#include <iostream>
#include <string>

using namespace std;

struct Test		//Using types
{
	double doub;
	string str;	
};

struct Node		//Pointers
{
	Test value;
	Node* prev;
	Node* next;
};

struct Deque	//Deque
{
	Node* start;
	Node* end;
	int size;
};

int* DequeNew(Deque* deque)		//New deque
{
	deque->start = NULL;
	deque->end = NULL;
	deque->size = 0;
	return 0;
}

int* DequeDelete(Deque* deque)		//Deleting of structure
{
	while (deque->start != NULL)
	{
		Node* next = deque->start->next;
		delete deque->start;
		deque->start = next;
	}
	deque->start = deque->end = NULL;
	deque->size = 0;
	return 0;
}

void DequePushBack(Deque* deque, Test value)	//Adding to the end
{
	Node* temp = new Node;
	temp->value = value;
	temp->next = temp->prev = NULL;
	if (deque->start == NULL) {
		deque->end = deque->start = temp;
	}
	else
	{
		deque->end->next = temp;
		temp->prev = deque->end;
		deque->end = temp;
	}
	++deque->size;
}

int DequePopBack(Deque* deque)		//Deleting from the end
{
	if (deque->size == 0)
	{
		cout << "Deque is empty.\n";
		return -1;
	}
	else
	{
		Node* prev = deque->end->prev;
		delete deque->end;
		deque->end = prev;
		if (deque->end == NULL)
			deque->start = deque->end;
		else
			deque->end->next = NULL;
		-deque->size;

		return 0;
	}
}

int DequeSize(Deque* deque)		//Size of the deque
{
	if (deque->size == 0)
	{
		cout << "Deque is empty.\n";
		return -1;
	}
	else
	{
		int s = deque->size;
		cout << "Size of the deque is " << s << endl;
		return s;
	}
}

int DequePushHead(Deque* deque, Test value)		//Adding to the begining
{
	Node* temp = new Node;
	temp->value = value;
	temp->next = temp->prev = NULL;
	if (deque->start == NULL) {
		deque->end = deque->start = temp;
	}
	else {
		deque->start->prev = temp;
		temp->next = deque->start;
		deque->start = temp;
	}
	++deque->size;
	return 0;
}

int DequePopHead(Deque* deque)		//Deleting from the begining
{
	if (deque->size == 0)
	{
		cout << "Deque is empty.\n";
		return -1;
	}
	else
	{
		Node* next = deque->start->next;
		delete deque->start;
		deque->start = next;
		if (deque->start == NULL)
			deque->end = deque->start;
		else
			deque->start->prev = NULL;
		-deque->size;
		return 0;
	}
}

int* DequePrintStart(Deque* deque)		//Show first element of the structure
{
	Node* temp;
	cout << "First double-number is " << deque->start->value.doub << endl;
	cout << "First string is " << deque->start->value.str << endl;
	return 0;
}

int* DequePrintEnd(Deque* deque)		//Show last element of the structure
{
	Node* temp;
	cout << "Last double-number is " << deque->end->value.doub << endl;
	cout << "Last string is " << deque->end->value.str << endl;
	return 0;
}

int main()
{
	Test result;
	int variant;
	Deque deque;
	DequeNew(&deque);
	bool gg = false;
	int menu;
	while (gg == false) {
		system("cls");
		cout << "Deque for working with data types like string and double.\n"<<endl;
		cout << "1. Add an element to the begining.\n";
		cout << "2. Add an element to the end.\n";
		cout << "3. Delete an element from the begining.\n";
		cout << "4. Delete an element from the end.\n";
		cout << "5. Show the first element of the deque.\n";
		cout << "6. Show the last element of the deque.\n";
		cout << "7. Size of the deque.\n";
		cout << "8. Clear the structure.\n";
		cout << "9. Exit.\n";
		cout << endl;
		cin >> menu;

		switch (menu)
		{
		case 1: {
			cout << "Enter a double-number: ";
			cin >> result.doub;
			cout << endl;
			cout << "Enter a string: ";
			cin >> result.str;
			cout << endl;
			DequePushHead(&deque, result);
			break;
		}
		case 2: {
			cout << "Enter a double-number: ";
			cin >> result.doub;
			cout << endl;
			cout << "Enter a string: ";
			cin >> result.str;
			cout << endl;
			DequePushBack(&deque, result);
			break;
		}
		case 3: {
			DequePopHead(&deque);
			system("pause");
			break;
		}
		case 4: {
			DequePopBack(&deque);
			system("pause");
			break;
		}
		case 5: {
			DequePrintStart(&deque);
			system("pause");
			break;
		}
		case 6: {
			DequePrintEnd(&deque);
			system("pause");
			break;
		}
		case 7: {
			DequeSize(&deque);
			system("pause");
			break;
		}
		case 8: {
			DequeDelete(&deque);
			break;
		}
		case 9: {
			cout << "Bye-bye\n";
			gg = true;
			system("pause");
			break;
		}
		default: {
			cout << "Try again" << endl;
			system("pause");
			break;
		}
		}
	}
}

