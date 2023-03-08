#pragma comment(linker,"\"/manifestdependency:type='win32' \
name='Microsoft.Windows.Common-Controls' version='6.0.0.0' \
processorArchitecture='*' publicKeyToken='6595b64144ccf1df' language='*'\"")

#define _CRT_SECURE_NO_WARNINGS
#define WINAPI __stdcall
#include <stdio.h>
#include <stdlib.h>
#include <iostream>
#include <Windows.h>
#include <string>
#include <math.h>

extern "C" {
	double __cdecl sinn(double b,double a,double n,int nn,double arg); 
}

extern "C" {
	double __cdecl coss(double b, double a, double n, int nn, double arg);
}

extern "C" {
	double __cdecl tgg(double b, double a, double n, int nn, double arg);
}

extern "C" {
	double __cdecl ctgg(double b, double a, double n, int nn, double arg);
}

extern "C" {
	double __cdecl xx(double b, double a, double n, int nn, double arg);
}

extern "C" {
	double __cdecl x22(double b, double a, double n, int nn, double arg);
}

extern "C" {
	double __cdecl lnxx(double b, double a, double n, int nn, double arg);
}


using namespace std;
string aa, n, a, b;
double s, h, I;
TCHAR buf[200];//Массив под строку в 4-м Edit
INT razmer;
char buff[200];
char znak[20];//Массви под знаки в функциях
double integ[20]; //Массив под функции
double trapp[20];
int arg[20];//Массив под аргументы функций
int bb,bbb; // счётчик функций
int ii, iii, iiii; //счётчики для всего
string cc;
int kek;
string k, kk;
double first, second;
TCHAR res1[10];
bool okno2 = false;
TCHAR res2[10];
int a1, a2, a3;
float wwe;
bool fflag;
char vv;
//double y;
bool okno;
int del;
bool kyk;

static pair<bool, HWND> AddWindow(const wstring&& winClass, const wstring&& title, HWND hParentWnd, const WNDPROC callback)
{
	UnregisterClass(winClass.c_str(), GetModuleHandle(nullptr));
	WNDCLASSEX wc{ sizeof(WNDCLASSEX) };
	HWND hWindow{};
	wc.cbClsExtra = 0;
	wc.cbWndExtra = 0;
	wc.hbrBackground = reinterpret_cast<HBRUSH>(GetStockObject(WHITE_BRUSH));
	wc.hCursor = LoadCursor(nullptr, IDC_ARROW);
	wc.hIcon = LoadIcon(nullptr, IDI_APPLICATION);
	wc.hIconSm = LoadIcon(nullptr, IDI_APPLICATION);
	wc.lpfnWndProc = callback;
	wc.lpszClassName = winClass.c_str();
	wc.style = CS_VREDRAW | CS_HREDRAW;

	const auto create_window = [&hWindow, &winClass, &title, &hParentWnd]() -> pair<bool, HWND> {
		if (hWindow = CreateWindow(winClass.c_str(), title.c_str(), WS_OVERLAPPEDWINDOW & ~WS_THICKFRAME & ~WS_MAXIMIZEBOX,
			(GetSystemMetrics(SM_CXSCREEN) - 300) / 2,
			(GetSystemMetrics(SM_CYSCREEN) - 300) / 2,
			450, 300, hParentWnd, nullptr, nullptr, nullptr); !hWindow)
			return { false, nullptr };

		ShowWindow(hWindow, SW_SHOWDEFAULT);
		UpdateWindow(hWindow);
		return { true, hWindow };
	};

	if (!RegisterClassEx(&wc))
		return create_window();

	return create_window();
}


void cifra(string check, HWND dd)
{
	if (razmer==0 || aa[razmer - 1]=='-' || aa[razmer-1]=='+' || isdigit(aa[razmer-1])) {
		razmer = razmer + 1;
		aa += check;
		del = 1;
		for (int i = 0; i < razmer; i++)
		{
			buf[i] = aa[i];
		}
		SetWindowText(dd, buf);
		GetWindowText(dd, buf, razmer);
	}
	else Beep(600, 800);
}

void pryamoygolnik(int b, int a, int n, int a4, int arg)
{
	switch (a4)
	{
	case 1: {			
	/*	double s = 1.0*(sin(a) + sin(b)) / 2.0;
		double h = 1.0 * (b - a) / n;	
		for (int i = 1; i <= n-1; i++)
		{
			s += 1.0* sin(a+i*h) * 1.0;
		}
		integ[bb] = 1.0 * h * s * 1.0 * arg;// * 1.0;*/
		int nn = n;

		integ[bb]  = sinn(b,a,n,nn,arg);
		bb = bb + 1;
		
	}
		  break;
	case 2: {
		/*double s = 1.0 * (cos(a) + cos(b)) / 2.0;
		double h = 1.0 * (b - a) / n;
		for (int i = 1; i <= n - 1; i++)
		{
			s += 1.0 * cos(a + i * h) * 1.0;
		}
		//double* d;
		integ[bb]= 1.0 * h * s * arg * 1.0;*/
		int nn = n;

		integ[bb] = coss(b, a, n, nn, arg);
		bb = bb + 1;

	}
		  break;
	case 3: {
		/*double s = 1.0 * (sin(a)/cos(a) + sin(b)/cos(b)) / 2.0;
		double h = 1.0 * (b - a) / n * 1.0;
		for (int i = 1; i <= n - 1; i++)
		{
			s += 1.0 * sin(a + i * h)/cos(a+i*h) * 1.0;
		}
		integ[bb] = 1.0 * h * s * arg * 1.0;*/
		int nn = n;

		integ[bb] = tgg(b, a, n, nn, arg);
		bb = bb + 1;

	}
		  break;
	case 4: {
		/*double s = 1.0 * (cos(a)/sin(a) + cos(b)/sin(b)) / 2.0;
		double h = 1.0 * (b - a) / n * 1.0;
		for (int i = 1; i <= n - 1; i++)
		{
			s += 1.0 * cos(a + i * h)/sin(a + i * h) * 1.0;
		}
		integ[bb] = 1.0 * h * s * arg * 1.0;*/
		int nn = n;

		integ[bb] = ctgg(b, a, n, nn, arg);
		bb = bb + 1;

	}
		  break;
	case 5: {
		/*double s = 1.0 * (a + b) / 2.0;
		double h = 1.0 * (b - a) / n * 1.0;
		for (int i = 1; i <= n - 1; i++)
		{
			s += 1.0 * a + i * h * 1.0;
		}
		integ[bb] = 1.0 * h * s * arg * 1.0;*/
		int nn = n;

		integ[bb] = xx(b, a, n, nn, arg);
		bb = bb + 1;

	}
		  break;
	case 6: {
		/*double s = 1.0 * (a*a + b*b) / 2.0;
		double h = 1.0 * (b - a) / n * 1.0;
		for (int i = 1; i <= n - 1; i++)
		{
			s += 1.0 * (a + i * h)*(a+i*h) * 1.0;

		}
		integ[bb] = 1.0 * h * s * arg * 1.0;*/
		int nn = n;

		integ[bb] = x22(b, a, n, nn, arg);
		bb = bb + 1;

	}
		  break;

	case 7: {
		/*double s = 1.0 * (log(a) + log(b)) / 2.0;
		double h = 1.0 * (b - a) / n * 1.0;
		for (int i = 1; i <= n - 1; i++)
		{
			s += 1.0 * log(a + i * h) * 1.0;
		}
		integ[bb] = 1.0 * h * s * arg * 1.0;*/
		int nn = n;

		integ[bb] = lnxx(b, a, n, nn, arg);
		bb = bb + 1;

	}
		  break;

	}
}

void trap(int b, int a, int n, int a4, int arg)
{
	double y = 0.0;
	switch (a4)
	{
	case 1: {
		//double  dy;
		//y = 0.0;
		double dy = 1.0*(b - a) / n * 1.0;
		 y += 1.0 * sin(a) + sin(b) * 1.0; // тут не так
		for (int i = 1; i < n; i++)
		{
			y += 2.0 * (sin(a + dy * i) * 1.0);
		}
		trapp[bbb] = 1.0 * (b - a) / (2.0 * n) * y * arg * 1.0;
		bbb = bbb + 1;
		//integ[0] = 12;
	//	trapp[0] = 22;
	}
		  break;

	case 2: {
	//	double y, dy;
	double	dy =1.0* (b - a) / n * 1.0;
	y += 1.0 * cos(a) + cos(b) * 1.0;
		for (int i = 1; i < n; i++)
		{
			y += 2.0 * cos(a + dy * i) * 1.0;
		}
		trapp[bbb] = 1.0 * (b - a) / (2.0 * n) * y * arg * 1.0;
		bbb = bbb + 1;
	}
		  break;

	case 3: {
		//double y, dy;
		double	dy = 1.0*(b - a) / n * 1.0;
		y += 1.0 * sin(a)/cos(a) + sin(b)/cos(b) * 1.0;
		for (int i = 1; i < n; i++)
		{
			y += 2.0 * sin(a + dy * i)/cos(a+dy*i) * 1.0;
		}
		trapp[bbb] = 1.0 * (b - a) / (2.0 * n) * y * arg * 1.0;
		bbb = bbb + 1;
	}
		  break;

	case 4: {
		//double y, dy;
		double	dy =1.0* (b - a) / n * 1.0;
		y += 1.0 * 1 / tan(a) + 1/tan(b);//1.0 * cos(a)/sin(a) + cos(b)/sin(b) * 1.0;
		for (int i = 1; i < n; i++)
		{
			y += 2.0 * 1 / tan(a + dy * i);//2.0 * cos(a+ dy * i)/sin(a + dy * i) * 1.0;
		}
		trapp[bbb] = 1.0 * (b - a) / (2.0 * n) * y * arg * 1.0;
		bbb = bbb + 1;
	}
		  break;

	case 5: {
		//double y, dy;
		double	dy =1.0* (b - a) / n * 1.0;
		y += 1.0 * a + b * 1.0;
		for (int i = 1; i < n; i++)
		{
			y += 2.0 * (a + dy * i) * 1.0;
		}
		trapp[bbb] = 1.0 * (b - a) / (2.0 * n) * y * arg * 1.0;
		bbb = bbb + 1;
	}
		  break;

	case 6: {
	//	double y, dy;
		double	dy = 1.0*(b - a) / n * 1.0;
		y += 1.0 * a*a + b*b * 1.0;
		for (int i = 1; i < n; i++)
		{
			y += 2.0 * (a + dy * i)*(a+dy*i) * 1.0;
		}
		trapp[bbb] = 1.0 * (b - a) / (2.0 * n) * y * arg * 1.0;
		bbb = bbb + 1;
	}
		  break;

	case 7: {
	//	double y, dy;
		double dy =1.0* (b - a) / n * 1.0;
		y += 1.0 * log(a) + log(b) * 1.0;
		for (int i = 1; i < n; i++)
		{
			y += 2.0 * log(a + dy * i) * 1.0;
		}
		trapp[bbb] = 1.0 * (b - a) / (2.0 * n) * y * arg * 1.0;
		bbb = bbb + 1;
	}
		  break;

	}
}
	

int CALLBACK wWinMain(HINSTANCE hInstance, HINSTANCE, PWSTR szCmdLine, int nCmdShow)
{
	static const UINT MY_DATA_MSG{WM_USER + 1000};
	static MSG msg{};// Информация о сообщении
	static HWND hwnd{}, hButton{}, hButton1{}, hChildWnd{}, hChildEdit1{}, hChildEdit2{}, hChildEdit3{}, hChildEdit4{};//Хранение дискриптора окна
	WNDCLASSEX wc{sizeof(WNDCLASSEX)};
	wc.cbClsExtra = 0;
	wc.cbWndExtra = 0;
	wc.hbrBackground = reinterpret_cast<HBRUSH>(GetStockObject(WHITE_BRUSH));
	wc.hCursor = LoadCursor(nullptr, IDC_ARROW);
	wc.hIcon = LoadIcon(nullptr, IDI_APPLICATION);
	wc.hIconSm = LoadIcon(nullptr, IDI_APPLICATION);
	wc.hInstance = hInstance;
	wc.lpfnWndProc = [](HWND hWnd, UINT uMsg, WPARAM wParam, LPARAM lParam)->LRESULT //Процедура обработки сообщений
	{
		switch (uMsg)
		{
		case WM_CREATE:
		{
			HWND hText = CreateWindow(TEXT("STATIC"), TEXT("Program for calculating the integral"),
				WS_VISIBLE | WS_CHILD,
				75, 10, 230, 50,
				hWnd, nullptr, nullptr, nullptr
			);

			HWND hButton = CreateWindow(
				L"BUTTON",
				L"Result",
				WS_CHILD | WS_VISIBLE | BS_PUSHBUTTON,
				50, 100, 300, 30, hWnd, reinterpret_cast<HMENU>(39), nullptr, nullptr
			);

			HWND hButton1 = CreateWindow(
				L"BUTTON",
				L"Input ",
				WS_CHILD | WS_VISIBLE | BS_PUSHBUTTON,
				50, 50, 300, 30, hWnd, reinterpret_cast<HMENU>(12), nullptr, nullptr
			);
		}
		return 0;

		case WM_COMMAND:
		{
			switch (LOWORD(wParam))
			{
			case 12:
			{
				//EnableWindow(hButton, False);
			//	hButton->Enabled = false;
				//SetClassLong(hWnd, GCL_STYLE, GetClassLong(hButton, GCL_STYLE) | CS_NOCLOSE);

				if (okno == false && okno2==false) {
					okno=true;
					aa = ""; n = ""; a = ""; b = "";
					s = 0; h = 0; I = 0;
					ZeroMemory(znak,20);
					ZeroMemory(buff, 200);
					for (int i = 0; i > 20; i++)
						integ[i] = 0;
					for (int i = 0; i > 20; i++)
						trapp[i] = 0;
					for (int i = 0; i > 20; i++)
						arg[i] = 0;
					bb = 0; bbb = 0;
					ii = 0; iii = 0; iiii = 0;
					cc = "";
					kek = 0;
					k = ""; kk = "";
					first = 0; second = 0;
					ZeroMemory(res2, 10);
					ZeroMemory(res1, 10);
					a1 = 0; a2 = 0; a3 = 0;
					wwe = 0;
					fflag = false;
					vv = ' ';
					//okno = false;
					del = 0;
					kyk = false;
					ZeroMemory(buf, 200);
					//for (int i = 0; i < razmer + 1; i++)
						//buf[i] = ' ';
					razmer = 0;
					aa = "";
					bb = 0;

					fflag = false;
					//if (hChildWnd) DestroyWindow(hChildWnd);
					const auto [flag, hChild] = AddWindow(L"MyAppChildClass", L"Input", hWnd, [](HWND hWnd, UINT uMsg, WPARAM wParam, LPARAM lParam)->LRESULT {
						switch (uMsg)
						{
						case WM_CREATE:
						{
							HWND hButton = CreateWindow(
								L"BUTTON",
								L"Enter",
								WS_CHILD | WS_VISIBLE | BS_PUSHBUTTON,
								115, 200, 200, 30, hWnd, reinterpret_cast<HMENU>(122), nullptr, nullptr
							);

							HWND hEdit1 = CreateWindow(
								L"Edit",
								L"",
								WS_CHILD | WS_BORDER | WS_VISIBLE,
								5, 0, 90, 20, hWnd, nullptr, nullptr, nullptr
							);
							hChildEdit1 = hEdit1;

							HWND hEdit2 = CreateWindow(
								L"Edit",
								L"",
								WS_CHILD | WS_BORDER | WS_VISIBLE,
								5, 25, 90, 20, hWnd, nullptr, nullptr, nullptr
							);
							hChildEdit2 = hEdit2;

							HWND hEdit3 = CreateWindow(
								L"Edit",
								L"",
								WS_CHILD | WS_BORDER | WS_VISIBLE,
								5, 50, 90, 20, hWnd, nullptr, nullptr, nullptr
							);
							hChildEdit3 = hEdit3;

							HWND hEdit4 = CreateWindow(
								L"Edit",
								L"",
								WS_CHILD | WS_BORDER | WS_VISIBLE | ES_READONLY,
								5, 75, 300, 20, hWnd, reinterpret_cast<HMENU>(14), nullptr, nullptr
							);
							hChildEdit4 = hEdit4;

							HWND hText1 = CreateWindow(TEXT("STATIC"), TEXT("Upper limit"),
								WS_VISIBLE | WS_CHILD,
								100, 0, 120, 20,
								hWnd, nullptr, nullptr, nullptr
							);

							HWND hText2 = CreateWindow(TEXT("STATIC"), TEXT("Lower limit"),
								WS_VISIBLE | WS_CHILD,
								100, 25, 120, 20,
								hWnd, nullptr, nullptr, nullptr
							);

							HWND hText3 = CreateWindow(TEXT("STATIC"), TEXT("Number of splits"),
								WS_VISIBLE | WS_CHILD,
								100, 50, 120, 20,
								hWnd, nullptr, nullptr, nullptr
							);

							HWND hText4 = CreateWindow(TEXT("STATIC"), TEXT("Definite integral"),
								WS_VISIBLE | WS_CHILD,
								310, 75, 120, 20,
								hWnd, nullptr, nullptr, nullptr
							);

							HWND hButton1 = CreateWindow(			//Кнопки для интегрирования
								L"BUTTON",
								L"sin(x)",
								WS_CHILD | WS_VISIBLE | BS_PUSHBUTTON,
								5, 100, 50, 30, hWnd, reinterpret_cast<HMENU>(1), nullptr, nullptr
							);

							HWND hButton2 = CreateWindow(
								L"BUTTON",
								L"cos(x)",
								WS_CHILD | WS_VISIBLE | BS_PUSHBUTTON,
								60, 100, 50, 30, hWnd, reinterpret_cast<HMENU>(2), nullptr, nullptr
							);

							HWND hButton3 = CreateWindow(
								L"BUTTON",
								L"tg(x)",
								WS_CHILD | WS_VISIBLE | BS_PUSHBUTTON,
								115, 100, 50, 30, hWnd, reinterpret_cast<HMENU>(3), nullptr, nullptr
							);

							HWND hButton4 = CreateWindow(
								L"BUTTON",
								L"ctg(x)",
								WS_CHILD | WS_VISIBLE | BS_PUSHBUTTON,
								170, 100, 50, 30, hWnd, reinterpret_cast<HMENU>(4), nullptr, nullptr
							);

							HWND hButton5 = CreateWindow(
								L"BUTTON",
								L"x",
								WS_CHILD | WS_VISIBLE | BS_PUSHBUTTON,
								225, 100, 50, 30, hWnd, reinterpret_cast<HMENU>(5), nullptr, nullptr
							);

							HWND hButton6 = CreateWindow(
								L"BUTTON",
								L"(x^2)",
								WS_CHILD | WS_VISIBLE | BS_PUSHBUTTON,
								280, 100, 50, 30, hWnd, reinterpret_cast<HMENU>(6), nullptr, nullptr
							);

							HWND hButton7 = CreateWindow(
								L"BUTTON",
								L"ln(x)",
								WS_CHILD | WS_VISIBLE | BS_PUSHBUTTON,
								335, 100, 50, 30, hWnd, reinterpret_cast<HMENU>(7), nullptr, nullptr
							);

							HWND hButton9 = CreateWindow(
								L"BUTTON",
								L"+",
								WS_CHILD | WS_VISIBLE | BS_PUSHBUTTON,
								5, 135, 30, 30, hWnd, reinterpret_cast<HMENU>(9), nullptr, nullptr
							);

							HWND hButton10 = CreateWindow(
								L"BUTTON",
								L"-",
								WS_CHILD | WS_VISIBLE | BS_PUSHBUTTON,
								40, 135, 30, 30, hWnd, reinterpret_cast<HMENU>(10), nullptr, nullptr
							);

							HWND hButton11 = CreateWindow(
								L"BUTTON",
								L"1",
								WS_CHILD | WS_VISIBLE | BS_PUSHBUTTON,
								75, 135, 30, 30, hWnd, reinterpret_cast<HMENU>(11), nullptr, nullptr
							);

							HWND hButton12 = CreateWindow(
								L"BUTTON",
								L"2",
								WS_CHILD | WS_VISIBLE | BS_PUSHBUTTON,
								110, 135, 30, 30, hWnd, reinterpret_cast<HMENU>(12), nullptr, nullptr
							);

							HWND hButton13 = CreateWindow(
								L"BUTTON",
								L"3",
								WS_CHILD | WS_VISIBLE | BS_PUSHBUTTON,
								145, 135, 30, 30, hWnd, reinterpret_cast<HMENU>(13), nullptr, nullptr
							);

							HWND hButton14 = CreateWindow(
								L"BUTTON",
								L"4",
								WS_CHILD | WS_VISIBLE | BS_PUSHBUTTON,
								180, 135, 30, 30, hWnd, reinterpret_cast<HMENU>(14), nullptr, nullptr
							);

							HWND hButton15 = CreateWindow(
								L"BUTTON",
								L"5",
								WS_CHILD | WS_VISIBLE | BS_PUSHBUTTON,
								215, 135, 30, 30, hWnd, reinterpret_cast<HMENU>(15), nullptr, nullptr
							);

							HWND hButton16 = CreateWindow(
								L"BUTTON",
								L"6",
								WS_CHILD | WS_VISIBLE | BS_PUSHBUTTON,
								250, 135, 30, 30, hWnd, reinterpret_cast<HMENU>(16), nullptr, nullptr
							);

							HWND hButton17 = CreateWindow(
								L"BUTTON",
								L"7",
								WS_CHILD | WS_VISIBLE | BS_PUSHBUTTON,
								285, 135, 30, 30, hWnd, reinterpret_cast<HMENU>(17), nullptr, nullptr
							);

							HWND hButton18 = CreateWindow(
								L"BUTTON",
								L"8",
								WS_CHILD | WS_VISIBLE | BS_PUSHBUTTON,
								320, 135, 30, 30, hWnd, reinterpret_cast<HMENU>(18), nullptr, nullptr
							);

							HWND hButton19 = CreateWindow(
								L"BUTTON",
								L"9",
								WS_CHILD | WS_VISIBLE | BS_PUSHBUTTON,
								355, 135, 30, 30, hWnd, reinterpret_cast<HMENU>(19), nullptr, nullptr
							);

							HWND hButton21 = CreateWindow(
								L"BUTTON",
								L"0",
								WS_CHILD | WS_VISIBLE | BS_PUSHBUTTON,
								390, 135, 30, 30, hWnd, reinterpret_cast<HMENU>(21), nullptr, nullptr
							);

						/*	HWND hButton20 = CreateWindow(
								L"BUTTON",
								L"←",
								WS_CHILD | WS_VISIBLE | BS_PUSHBUTTON,
								390, 100, 40, 65, hWnd, reinterpret_cast<HMENU>(20), nullptr, nullptr
							);*/
						}
						return 0;


						case WM_COMMAND:
						{
							switch (LOWORD(wParam))
							{
							case 122:
							{

								
								aa = "";
								iii = 0;
								bb = 0;
								cc = ' ';
								ii = 0;
								if (buf[0] != '-')
								{
									for (int i = razmer; i >= 0; i--)
									{
										buf[i + 1] = buf[i];
									}
									buf[0] = '+';
								}

								for (int i = 0; i < razmer; i++)   //Обработчик знаков функции
								{
									if (buf[i] == '-' || buf[i] == '+')
									{
										znak[ii] = buf[i];
										ii = ii + 1;

									}
								}

								for (int i = 0; i < razmer; i++)		//Обработчик аргументов функций
								{
									if (buf[i] == '-' || buf[i] == '+')

									{
										if (buf[i + 1] == '1' || buf[i + 1] == '2' || buf[i + 1] == '3' || buf[i + 1] == '4' || buf[i + 1] == '5' || buf[i + 1] == '6' || buf[i + 1] == '7' || buf[i + 1] == '8' || buf[i + 1] == '9' || buf[i+1]=='0')
										{
											cc = buf[i + 1];
											if (buf[i + 2] == '1' || buf[i + 2] == '2' || buf[i + 2] == '3' || buf[i + 2] == '4' || buf[i + 2] == '5' || buf[i + 2] == '6' || buf[i + 2] == '7' || buf[i + 2] == '8' || buf[i + 2] == '9' || buf[i + 1] == '0')
											{
												cc += buf[i + 2];
												if (buf[i + 3] == '1' || buf[i + 3] == '2' || buf[i + 3] == '3' || buf[i + 3] == '4' || buf[i + 3] == '5' || buf[i + 3] == '6' || buf[i + 3] == '7' || buf[i + 3] == '8' || buf[i + 3] == '9' || buf[i + 1] == '0')
												{
													cc += buf[i + 3];
													if (buf[i + 4] == '1' || buf[i + 4] == '2' || buf[i + 4] == '3' || buf[i + 4] == '4' || buf[i + 4] == '5' || buf[i + 4] == '6' || buf[i + 4] == '7' || buf[i + 4] == '8' || buf[i + 4] == '9' || buf[i + 1] == '0')
													{
														cc += buf[i + 4];
														arg[iii] = stoi(cc);
														iii = iii + 1;
													}
													else
													{
														arg[iii] = stoi(cc);
														iii = iii + 1;
													}
												}
												else
												{
													arg[iii] = stoi(cc);
													iii = iii + 1;
												}
											}
											else
											{
												arg[iii] = stoi(cc);
												iii = iii + 1;
											}

										}
										else
										{
											arg[iii] = 1;
											iii = iii + 1;
										}
									}
								}
								try {
									TCHAR tcA[4];
									TCHAR tcB[4];
									TCHAR tcN[5];
									//char kk[2];
									string ss, sss, ssss;
									GetWindowText(hChildEdit1, tcA, 4);
									GetWindowText(hChildEdit2, tcB, 4);
									GetWindowText(hChildEdit3, tcN, 5);
									for (int i = 0; i < 3; i++)
										sss += static_cast<TCHAR>(tcA[i]);
									a1 = stoi(sss);
									for (int i = 0; i < 3; i++)
										ssss += static_cast<TCHAR>(tcB[i]);
									a2 = stoi(ssss);
									for (int i = 0; i < 4; i++)
										ss += static_cast<TCHAR>(tcN[i]);
									a3 = stoi(ss);
									fflag = true;
									if (a1 < 0 || a1>99 || a2 < 0 || a2>99)
									{
										MessageBox(hWnd, L"The limits of integration shoud be within [0..99]", L"Out of range", MB_OK | MB_ICONSTOP);
									} else
									if (a3 < 1 || a3>999)
									{
										MessageBox(hWnd, L"The number of splits shoud be within [1..999]", L"Out of range", MB_OK | MB_ICONSTOP);
									}
									else
										if (a2 > a1)
										{
											MessageBox(hWnd, L"The upper limit of integration must be greater than or equal to the lower limit", L"Wrong integration limits", MB_OK | MB_ICONSTOP);
										}
									//	else
											/*if (buf[3] == ' ')
											{
												MessageBox(hWnd, L"All fields should be fill in", L"ppp", MB_OK | MB_ICONSTOP);
											}*/ else kyk = true;
									fflag = true;
								}
								catch (invalid_argument) {
									MessageBox(hWnd, L"All fields must be filled in correctly", L"Incorrect input", MB_OK | MB_ICONSTOP);
								}
								catch (out_of_range) {
									MessageBox(hWnd, L"The limits of integration shoud be within [1..99]", L"Out of range", MB_OK | MB_ICONSTOP);
								}
								if (kyk == true) {
									if (a1 != 0 || a2 != 0) {
										for (int i = 0; i < razmer + 1; i++)
										{
											if (buf[i] == 's' && buf[i + 1] == 'i')
											{
												pryamoygolnik(a1, a2, a3, 1, arg[kek]);
												trap(a1, a2, a3, 1, arg[kek]);
												kek = kek + 1;
											}
											else
												if (buf[i] == 'c' && buf[i + 1] == 'o')
												{
													pryamoygolnik(a1, a2, a3, 2, arg[kek]);
													trap(a1, a2, a3, 2, arg[kek]);
													kek = kek + 1;
												}
												else if (buf[i] == 't' && buf[i + 1] == 'g' && buf[i - 1] != 'c')
												{
													pryamoygolnik(a1, a2, a3, 3, arg[kek]);
													trap(a1, a2, a3, 3, arg[kek]);
													kek = kek + 1;
												}
												else
													if (buf[i] == 'c' && buf[i + 1] == 't')
													{
														pryamoygolnik(a1, a2, a3, 4, arg[kek]);
														trap(a1, a2, a3, 4, arg[kek]);
														kek = kek + 1;
													}
													else
														if (buf[i] == 'x' && buf[i + 1] != ')' && buf[i + 1] != '^')
														{
															pryamoygolnik(a1, a2, a3, 5, arg[kek]);
															trap(a1, a2, a3, 5, arg[kek]);
															kek = kek + 1;
														}
														else
															if (buf[i] == 'x' && buf[i + 1] == '^')
															{
																pryamoygolnik(a1, a2, a3, 6, arg[kek]);
																trap(a1, a2, a3, 6, arg[kek]);
																kek = kek + 1;
															}
															else
																if (buf[i] == 'l' && buf[i + 1] == 'n')
																{
																	pryamoygolnik(a1, a2, a3, 7, arg[kek]);
																	trap(a1, a2, a3, 7, arg[kek]);
																	kek = kek + 1;
																}
										}
										first = integ[0];
										second = trapp[0];


										for (int i = 1; i < ii; i++)
										{
											if (znak[i] == '-')		//Предусмотреть для первого отрицательного аргумента
											{
												first = first - integ[i];
												second = second - trapp[i];
											}
											else
											{
												first = first + integ[i];
												second = second + trapp[i];
											}
										}
										//	fflag = true;
										if (fflag == true)
										{
											DestroyWindow(hChildWnd);
											okno = false;
										}

									}
								}
							}
							
							break;

							case 1:
							{
								//if (razmer==0)
								if (razmer == 0 || aa[razmer - 1] == '-' || aa[razmer - 1] == '+' || isdigit(aa[razmer - 1]))
								{
									razmer = razmer + 6;
									aa += "sin(x)";
									del = 6;
									for (int i = 0; i < razmer; i++)
									{
										buf[i] = aa[i];
									}
									SetWindowText(hChildEdit4, buf);
									GetWindowText(hChildEdit4, buf, razmer + 1);
								}
								else Beep(600, 300);
							}
							break;

							case 2:
							{
								if (razmer == 0 || aa[razmer - 1] == '-' || aa[razmer - 1] == '+' || isdigit(aa[razmer - 1]))
								{
									razmer = razmer + 6;
									aa += "cos(x)";
									del = 6;
									for (int i = 0; i < razmer; i++)
									{
										buf[i] = aa[i];
									}
									SetWindowText(hChildEdit4, buf);
									GetWindowText(hChildEdit4, buf, razmer + 1);
								}
								else Beep(200, 300);
							}
							break;

							case 3:
							{
								if (razmer == 0 || aa[razmer - 1] == '-' || aa[razmer - 1] == '+' || isdigit(aa[razmer - 1]))
								{
									razmer = razmer + 5;
									aa += "tg(x)";
									del = 5;
									for (int i = 0; i < razmer; i++)
									{
										buf[i] = aa[i];
									}
									SetWindowText(hChildEdit4, buf);
									GetWindowText(hChildEdit4, buf, razmer + 1);
								}
								else Beep(400, 800);
							}
							break;

							case 4:
							{
								if (razmer == 0 || aa[razmer - 1] == '-' || aa[razmer - 1] == '+' || isdigit(aa[razmer - 1]))
								{
									razmer = razmer + 6;
									del = 6;
									aa += "ctg(x)";
									for (int i = 0; i < razmer; i++)
									{
										buf[i] = aa[i];
									}
									SetWindowText(hChildEdit4, buf);
									GetWindowText(hChildEdit4, buf, razmer + 1);
								}
								else Beep(700, 400);						}
							break;

							case 5:
							{
								if (razmer == 0 || aa[razmer - 1] == '-' || aa[razmer - 1] == '+' || isdigit(aa[razmer - 1]))
								{
									razmer = razmer + 1;
									aa += "x";
									del = 1;
									for (int i = 0; i < razmer; i++)
									{
										buf[i] = aa[i];
									}
									SetWindowText(hChildEdit4, buf);
									GetWindowText(hChildEdit4, buf, razmer + 1);
								}
								else Beep(400, 890);
							}
							break;

							case 6:
							{
								if (razmer == 0 || aa[razmer - 1] == '-' || aa[razmer - 1] == '+' || isdigit(aa[razmer - 1]))
								{
									razmer = razmer + 5;
									aa += "(x^2)";
									del = 5;
									for (int i = 0; i < razmer; i++)
									{
										buf[i] = aa[i];
									}
									SetWindowText(hChildEdit4, buf);
									GetWindowText(hChildEdit4, buf, razmer + 1);
								}
								else Beep(500, 300);
							}
							break;

							case 7:
							{
								if (razmer == 0 || aa[razmer - 1] == '-' || aa[razmer - 1] == '+' || isdigit(aa[razmer - 1]))
								{
									razmer = razmer + 5;
									aa += "ln(x)";
									del = 5;
									for (int i = 0; i < razmer; i++)
									{
										buf[i] = aa[i];
									}
									SetWindowText(hChildEdit4, buf);
									GetWindowText(hChildEdit4, buf, razmer + 1);
								}
								else Beep(600, 200);
							}
							break;

							case 9:				//Начало цифр и знаков
							{
								//cifra("+", hChildEdit4);
								if (razmer != 0)
									if (aa[razmer - 1] == ')' || aa[razmer - 1] == 'x') {
										razmer = razmer + 1;
										aa += '+';
										del = 1;
										for (int i = 0; i < razmer; i++)
										{
											buf[i] = aa[i];
										}
										SetWindowText(hChildEdit4, buf);
										GetWindowText(hChildEdit4, buf, razmer);
									}
									else Beep(500, 700);
							}
							break;

							case 10:
							{
								//cifra("-", hChildEdit4);
								if (razmer != 0)
									if (aa[razmer - 1] == ')' || aa[razmer - 1] == 'x') {
										razmer = razmer + 1;
										aa += '-';
										del = 1;
										for (int i = 0; i < razmer; i++)
										{
											buf[i] = aa[i];
										}
										SetWindowText(hChildEdit4, buf);
										GetWindowText(hChildEdit4, buf, razmer);
									}
									else Beep(500, 700);
							}
							break;

							case 11:
							{
								cifra("1", hChildEdit4);
							}
							break;

							case 12:
							{
								cifra("2", hChildEdit4);
							}
							break;

							case 13:
							{
								cifra("3", hChildEdit4);
							}
							break;

							/*	case 14:
								{
									cifra("4", hChildEdit4);
								}
								break;*/

							case 15:
							{
								cifra("5", hChildEdit4);
							}
							break;

							case 16:
							{
								cifra("6", hChildEdit4);
							}
							break;

							case 17:
							{
								cifra("7", hChildEdit4);
							}
							break;

							case 18:
							{
								cifra("8", hChildEdit4);
							}
							break;

							case 19:
							{
								cifra("9", hChildEdit4);
							}
							break;

							case 21:
							{
								cifra("0", hChildEdit4);
							}
							break;

						/*	case 20:
							{
								if (razmer > 0)
								{
									switch (del)
									{
										case 1:
										{
											buf[razmer] = '\0';
											aa[razmer] = '\0';
											razmer = razmer - 1;
											for (int i = 0; i < razmer;i++)
											{
												buf[i] = aa[i];
											}
											SetWindowText(hChildEdit4, buf);
											GetWindowText(hChildEdit4, buf, razmer);
										}
										break;
									
									case 3:
									{

									}
									break;

									case 5:
									{

									}
									break;

									case 6:
									{

									}
									break;
									}
								}
								else Beep(329, 500);
							}

							break;*/

							}
							//	DestroyWindow(hChildWnd);

						}

						case MY_DATA_MSG:
						{

						}
						return 0;
						}
						return DefWindowProc(hWnd, uMsg, wParam, lParam);
						});
					hChildWnd = hChild;
					//	DestroyWindow(hChildWnd);

				}
					}
			break;

			case 39:
			{
				if (razmer == 0)
					MessageBox(hWnd, L"Data input is empty", L"Input is empty", MB_OK | MB_ICONINFORMATION); else
				if (okno2==false){
					const auto [flag, hChild] = AddWindow(L"MyAppChildClass", L"Result", hWnd, [](HWND hWnd, UINT uMsg, WPARAM wParam, LPARAM lParam)->LRESULT {
						switch (uMsg)
						{
						case WM_CREATE:
						{
							HWND hText1 = CreateWindow(TEXT("STATIC"), TEXT("Rectangle method"),
								WS_VISIBLE | WS_CHILD,
								140, 0, 150, 20,
								hWnd, nullptr, nullptr, nullptr
							);

							HWND hText2 = CreateWindow(TEXT("STATIC"), TEXT("Trapezoid method"),
								WS_VISIBLE | WS_CHILD,
								140, 100, 150, 20,
								hWnd, nullptr, nullptr, nullptr
							);

							HWND hButton = CreateWindow(
								L"BUTTON",
								L"Close",
								WS_CHILD | WS_VISIBLE | BS_PUSHBUTTON,
								100, 200, 200, 30, hWnd, reinterpret_cast<HMENU>(399), nullptr, nullptr
							);

							HWND hEdit1 = CreateWindow(
								L"Edit",
								L"",
								WS_CHILD | WS_BORDER | WS_VISIBLE | ES_READONLY,
								150, 50, 100, 20, hWnd, nullptr, nullptr, nullptr
							);
							hChildEdit1 = hEdit1;

							HWND hEdit2 = CreateWindow(
								L"Edit",
								L"",
								WS_CHILD | WS_BORDER | WS_VISIBLE | ES_READONLY,
								150, 150, 100, 20, hWnd, nullptr, nullptr, nullptr
							);
							hChildEdit2 = hEdit2;

						}
						
						vv = static_cast<char>(znak[0]);
						okno2 = true;
						//SetWindowText(hChildEdit1, to_wstring(first).c_str());
						SetWindowText(hChildEdit1, to_wstring(first).c_str());
						SetWindowText(hChildEdit2, to_wstring(second).c_str());


						return 0;

						case WM_COMMAND:
						{
							switch (LOWORD(wParam))
							{
							case 399:
							{

								okno2 = false;
								DestroyWindow(hChildWnd);

							}
							}
						}

						case MY_DATA_MSG:
						{

						}
						return 0;
						}
						return DefWindowProc(hWnd, uMsg, wParam, lParam);
						});
					hChildWnd = hChild;
				}
				}
				

				break;
			}
			}
			return 0;

		case WM_DESTROY:
		{
			PostQuitMessage(EXIT_SUCCESS);
		}
		return 0;
		}
		return DefWindowProc(hWnd, uMsg, wParam, lParam);
		
	};
	wc.lpszClassName = L"MyAppClass";
	wc.lpszMenuName = nullptr;
	wc.style = CS_VREDRAW | CS_HREDRAW;

	if (!RegisterClassEx(&wc))	//Регистрация окна в системе
		return EXIT_FAILURE;
	
	if (hwnd = CreateWindow(wc.lpszClassName, L"Calculation of the integral", WS_OVERLAPPEDWINDOW & ~WS_THICKFRAME & ~WS_MAXIMIZEBOX,
		(GetSystemMetrics(SM_CXSCREEN) - 400) / 2,
		(GetSystemMetrics(SM_CYSCREEN) - 400) / 2,
		400, 200, nullptr, nullptr, wc.hInstance, nullptr); hwnd == INVALID_HANDLE_VALUE)
		return EXIT_FAILURE;

	ShowWindow(hwnd, nCmdShow);
	UpdateWindow(hwnd);

	while (GetMessage(&msg, nullptr, 0, 0)) 
	{
		TranslateMessage(&msg);
		 DispatchMessage(&msg);
	}

	return static_cast<int>(msg.wParam);

}




