// dllmain.cpp : Определяет точку входа для приложения DLL.
#include "pch.h"
#include <math.h>
#include "Dll1Trap.h"
BOOL APIENTRY DllMain( HMODULE hModule,
                       DWORD  ul_reason_for_call,
                       LPVOID lpReserved
                     )
{
    switch (ul_reason_for_call)
    {
    case DLL_PROCESS_ATTACH:
    case DLL_THREAD_ATTACH:
    case DLL_THREAD_DETACH:
    case DLL_PROCESS_DETACH:
        break;
    }
    return TRUE;
}
void trap(int b, int a, int n, int a4, int arg, double trapp[20],int bbb)
{
	double y = 0.0;
	switch (a4)
	{
	case 1: {
		//double  dy;
		//y = 0.0;
		double dy = 1.0 * (b - a) / n * 1.0;
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
		double	dy = 1.0 * (b - a) / n * 1.0;
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
		double	dy = 1.0 * (b - a) / n * 1.0;
		y += 1.0 * sin(a) / cos(a) + sin(b) / cos(b) * 1.0;
		for (int i = 1; i < n; i++)
		{
			y += 2.0 * sin(a + dy * i) / cos(a + dy * i) * 1.0;
		}
		trapp[bbb] = 1.0 * (b - a) / (2.0 * n) * y * arg * 1.0;
		bbb = bbb + 1;
	}
		  break;

	case 4: {
		//double y, dy;
		double	dy = 1.0 * (b - a) / n * 1.0;
		y += 1.0 * 1 / tan(a) + 1 / tan(b);//1.0 * cos(a)/sin(a) + cos(b)/sin(b) * 1.0;
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
		double	dy = 1.0 * (b - a) / n * 1.0;
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
		double	dy = 1.0 * (b - a) / n * 1.0;
		y += 1.0 * a * a + b * b * 1.0;
		for (int i = 1; i < n; i++)
		{
			y += 2.0 * (a + dy * i) * (a + dy * i) * 1.0;
		}
		trapp[bbb] = 1.0 * (b - a) / (2.0 * n) * y * arg * 1.0;
		bbb = bbb + 1;
	}
		  break;

	case 7: {
		//	double y, dy;
		double dy = 1.0 * (b - a) / n * 1.0;
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

void pryamoygolnik(int b, int a, int n, int a4, int arg, double integ[20], int bb)
{
	switch (a4)
	{
	case 1: {

		double s = 1.0 * (sin(a) + sin(b)) / 2.0;
		double h = 1.0 * (b - a) / n;
		for (int i = 1; i <= n - 1; i++)
		{
			s += 1.0 * sin(a + i * h) * 1.0;
		}
		integ[bb] = 1.0 * h * s * 1.0 * arg;// * 1.0;
		bb = bb + 1;
		//integ[0] = 12;
		//trapp[0] = 22;
	}
		  break;
	case 2: {
		double s = 1.0 * (cos(a) + cos(b)) / 2.0;
		double h = 1.0 * (b - a) / n;
		for (int i = 1; i <= n - 1; i++)
		{
			s += 1.0 * cos(a + i * h) * 1.0;
		}
		integ[bb] = 1.0 * h * s * arg * 1.0;
		bb = bb + 1;

	}
		  break;
	case 3: {
		double s = 1.0 * (sin(a) / cos(a) + sin(b) / cos(b)) / 2.0;
		double h = 1.0 * (b - a) / n * 1.0;
		for (int i = 1; i <= n - 1; i++)
		{
			s += 1.0 * sin(a + i * h) / cos(a + i * h) * 1.0;
		}
		integ[bb] = 1.0 * h * s * arg * 1.0;
		bb = bb + 1;

	}
		  break;
	case 4: {
		double s = 1.0 * (cos(a) / sin(a) + cos(b) / sin(b)) / 2.0;
		double h = 1.0 * (b - a) / n * 1.0;
		for (int i = 1; i <= n - 1; i++)
		{
			s += 1.0 * cos(a + i * h) / sin(a + i * h) * 1.0;
		}
		integ[bb] = 1.0 * h * s * arg * 1.0;
		bb = bb + 1;

	}
		  break;
	case 5: {
		double s = 1.0 * (a + b) / 2.0;
		double h = 1.0 * (b - a) / n * 1.0;
		for (int i = 1; i <= n - 1; i++)
		{
			s += 1.0 * a + i * h * 1.0;
		}
		integ[bb] = 1.0 * h * s * arg * 1.0;
		bb = bb + 1;

	}
		  break;
	case 6: {
		double s = 1.0 * (a * a + b * b) / 2.0;
		double h = 1.0 * (b - a) / n * 1.0;
		for (int i = 1; i <= n - 1; i++)
		{
			s += 1.0 * (a + i * h) * (a + i * h) * 1.0;

		}
		integ[bb] = 1.0 * h * s * arg * 1.0;
		bb = bb + 1;

	}
		  break;

	case 7: {
		double s = 1.0 * (log(a) + log(b)) / 2.0;
		double h = 1.0 * (b - a) / n * 1.0;
		for (int i = 1; i <= n - 1; i++)
		{
			s += 1.0 * log(a + i * h) * 1.0;
		}
		integ[bb] = 1.0 * h * s * arg * 1.0;
		bb = bb + 1;

	}
		  break;

	}
}