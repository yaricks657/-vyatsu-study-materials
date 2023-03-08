#include "MyForm.h" 
#include <Windows.h> 
#include <string>
#include <cmath>
using namespace Simplex; // Название проекта 

int WINAPI WinMain(HINSTANCE, HINSTANCE, LPSTR, int) {
	Application::EnableVisualStyles();
	Application::SetCompatibleTextRenderingDefault(false);
	Application::Run(gcnew MyForm);
	return 0;
}
