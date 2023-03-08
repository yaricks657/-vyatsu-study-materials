#pragma once

#include <fstream>
#include <random>
#include <atomic>
#include <string>
#include <thread>
#include <mutex>
#include "windows.h"



using namespace std;


//thread t1, t2;
string randomString;
bool flag_stop = false;
int i = 0;
int speed1 = 2000;
int speed2 = 2000;
bool firstThread = true;
bool secondThread = false;
string emptyRandomString;
int rowToRead = 0;
int rowToWrite = 0;

char chars[256];
string arrays[1000];




namespace OC1 {
	using namespace System::Threading;
	using namespace System;
	using namespace System::ComponentModel;
	using namespace System::Collections;
	using namespace System::Windows::Forms;
	using namespace System::Data;
	using namespace System::Drawing;
	using namespace std;
	using namespace System::Collections::Generic;

	/// <summary>
	/// Сводка для MyForm
	/// </summary>
	public ref class MyForm : public System::Windows::Forms::Form
	{
	public:
		MyForm(void)
		{
			InitializeComponent();
			//
			//TODO: добавьте код конструктора
			//
		}

	protected:
		/// <summary>
		/// Освободить все используемые ресурсы.
		/// </summary>
		~MyForm()
		{
			if (components)
			{
				delete components;
			}
		}
	public: Thread^ t1;
	public: Thread^ t2;
	public: Mutex^ mtx = gcnew Mutex();
	public: Mutex^ mtxForStr = gcnew Mutex();
	public: String^ s;
	public: delegate void SafeCallDelegate();
	private: System::Windows::Forms::TrackBar^ trackBar1;
	protected:

	private: System::Windows::Forms::TrackBar^ trackBar2;

	private: System::Windows::Forms::Button^ button1;
	private: System::Windows::Forms::GroupBox^ groupBox1;

	private: System::Windows::Forms::Button^ button2;
	private: System::Windows::Forms::Panel^ panel1;
	private: System::Windows::Forms::Label^ label5;
	private: System::Windows::Forms::Label^ label4;
	private: System::Windows::Forms::Label^ label3;
	private: System::Windows::Forms::Label^ label2;
	private: System::Windows::Forms::Label^ label1;

	public: System::Windows::Forms::DataGridView^ dataGridView1;
	private: System::Windows::Forms::DataGridViewTextBoxColumn^ Data;
	private: System::ComponentModel::IContainer^ components;
	protected:

	private:
		/// <summary>
		/// Обязательная переменная конструктора.
		/// </summary>



#pragma region Windows Form Designer generated code
		/// <summary>
		/// Требуемый метод для поддержки конструктора — не изменяйте 
		/// содержимое этого метода с помощью редактора кода.
		/// </summary>

		void InitializeComponent(void)
		{
			this->trackBar1 = (gcnew System::Windows::Forms::TrackBar());
			this->trackBar2 = (gcnew System::Windows::Forms::TrackBar());
			this->button1 = (gcnew System::Windows::Forms::Button());
			this->groupBox1 = (gcnew System::Windows::Forms::GroupBox());
			this->label5 = (gcnew System::Windows::Forms::Label());
			this->label4 = (gcnew System::Windows::Forms::Label());
			this->label3 = (gcnew System::Windows::Forms::Label());
			this->label2 = (gcnew System::Windows::Forms::Label());
			this->label1 = (gcnew System::Windows::Forms::Label());
			this->panel1 = (gcnew System::Windows::Forms::Panel());
			this->dataGridView1 = (gcnew System::Windows::Forms::DataGridView());
			this->Data = (gcnew System::Windows::Forms::DataGridViewTextBoxColumn());
			this->button2 = (gcnew System::Windows::Forms::Button());
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->trackBar1))->BeginInit();
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->trackBar2))->BeginInit();
			this->groupBox1->SuspendLayout();
			this->panel1->SuspendLayout();
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->dataGridView1))->BeginInit();
			this->SuspendLayout();
			// 
			// trackBar1
			// 
			this->trackBar1->BackColor = System::Drawing::Color::White;
			this->trackBar1->LargeChange = 1;
			this->trackBar1->Location = System::Drawing::Point(199, 445);
			this->trackBar1->Maximum = 100;
			this->trackBar1->Minimum = 1;
			this->trackBar1->Name = L"trackBar1";
			this->trackBar1->Size = System::Drawing::Size(554, 56);
			this->trackBar1->TabIndex = 0;
			this->trackBar1->Value = 1;
			this->trackBar1->Scroll += gcnew System::EventHandler(this, &MyForm::trackBar1_Scroll);
			// 
			// trackBar2
			// 
			this->trackBar2->BackColor = System::Drawing::SystemColors::Window;
			this->trackBar2->LargeChange = 1;
			this->trackBar2->Location = System::Drawing::Point(199, 352);
			this->trackBar2->Maximum = 100;
			this->trackBar2->Minimum = 1;
			this->trackBar2->Name = L"trackBar2";
			this->trackBar2->Size = System::Drawing::Size(554, 56);
			this->trackBar2->TabIndex = 1;
			this->trackBar2->Value = 1;
			this->trackBar2->Scroll += gcnew System::EventHandler(this, &MyForm::trackBar2_Scroll);
			// 
			// button1
			// 
			this->button1->BackColor = System::Drawing::Color::White;
			this->button1->Location = System::Drawing::Point(36, 200);
			this->button1->Name = L"button1";
			this->button1->Size = System::Drawing::Size(117, 47);
			this->button1->TabIndex = 2;
			this->button1->Text = L"Финиш";
			this->button1->UseVisualStyleBackColor = false;
			this->button1->Click += gcnew System::EventHandler(this, &MyForm::button1_Click);
			// 
			// groupBox1
			// 
			this->groupBox1->BackColor = System::Drawing::Color::FromArgb(static_cast<System::Int32>(static_cast<System::Byte>(224)), static_cast<System::Int32>(static_cast<System::Byte>(224)),
				static_cast<System::Int32>(static_cast<System::Byte>(224)));
			this->groupBox1->Controls->Add(this->label5);
			this->groupBox1->Controls->Add(this->label4);
			this->groupBox1->Controls->Add(this->label3);
			this->groupBox1->Controls->Add(this->label2);
			this->groupBox1->Controls->Add(this->label1);
			this->groupBox1->Controls->Add(this->panel1);
			this->groupBox1->Controls->Add(this->button1);
			this->groupBox1->Controls->Add(this->button2);
			this->groupBox1->Controls->Add(this->trackBar1);
			this->groupBox1->Controls->Add(this->trackBar2);
			this->groupBox1->Location = System::Drawing::Point(1, -1);
			this->groupBox1->Name = L"groupBox1";
			this->groupBox1->Size = System::Drawing::Size(782, 540);
			this->groupBox1->TabIndex = 3;
			this->groupBox1->TabStop = false;
			// 
			// label5
			// 
			this->label5->AutoSize = true;
			this->label5->Location = System::Drawing::Point(5, 472);
			this->label5->Name = L"label5";
			this->label5->Size = System::Drawing::Size(189, 17);
			this->label5->TabIndex = 9;
			this->label5->Text = L"Проверка символа в файле";
			// 
			// label4
			// 
			this->label4->AutoSize = true;
			this->label4->Location = System::Drawing::Point(11, 380);
			this->label4->Name = L"label4";
			this->label4->Size = System::Drawing::Size(164, 17);
			this->label4->TabIndex = 8;
			this->label4->Text = L"Запись символа в файл";
			// 
			// label3
			// 
			this->label3->AutoSize = true;
			this->label3->Location = System::Drawing::Point(22, 445);
			this->label3->Name = L"label3";
			this->label3->Size = System::Drawing::Size(149, 17);
			this->label3->TabIndex = 7;
			this->label3->Text = L"Скорость 2-го потока";
			// 
			// label2
			// 
			this->label2->AutoSize = true;
			this->label2->Location = System::Drawing::Point(22, 352);
			this->label2->Name = L"label2";
			this->label2->Size = System::Drawing::Size(149, 17);
			this->label2->TabIndex = 6;
			this->label2->Text = L"Скорость 1-го потока";
			// 
			// label1
			// 
			this->label1->AutoSize = true;
			this->label1->Location = System::Drawing::Point(419, 18);
			this->label1->Name = L"label1";
			this->label1->Size = System::Drawing::Size(112, 17);
			this->label1->TabIndex = 5;
			this->label1->Text = L"Выходной файл";
			// 
			// panel1
			// 
			this->panel1->BackColor = System::Drawing::Color::White;
			this->panel1->BorderStyle = System::Windows::Forms::BorderStyle::Fixed3D;
			this->panel1->Controls->Add(this->dataGridView1);
			this->panel1->Location = System::Drawing::Point(185, 53);
			this->panel1->Name = L"panel1";
			this->panel1->Size = System::Drawing::Size(584, 268);
			this->panel1->TabIndex = 4;
			// 
			// dataGridView1
			// 
			this->dataGridView1->AllowUserToDeleteRows = false;
			this->dataGridView1->BackgroundColor = System::Drawing::SystemColors::ControlLightLight;
			this->dataGridView1->ColumnHeadersHeightSizeMode = System::Windows::Forms::DataGridViewColumnHeadersHeightSizeMode::AutoSize;
			this->dataGridView1->Columns->AddRange(gcnew cli::array< System::Windows::Forms::DataGridViewColumn^  >(1) { this->Data });
			this->dataGridView1->Location = System::Drawing::Point(3, 3);
			this->dataGridView1->Name = L"dataGridView1";
			this->dataGridView1->ReadOnly = true;
			this->dataGridView1->RowHeadersWidth = 51;
			this->dataGridView1->RowTemplate->Height = 24;
			this->dataGridView1->Size = System::Drawing::Size(574, 258);
			this->dataGridView1->TabIndex = 0;
			this->dataGridView1->CellContentClick += gcnew System::Windows::Forms::DataGridViewCellEventHandler(this, &MyForm::dataGridView1_CellContentClick_1);
			// 
			// Data
			// 
			this->Data->HeaderText = L"Column1";
			this->Data->MinimumWidth = 6;
			this->Data->Name = L"Data";
			this->Data->ReadOnly = true;
			this->Data->Width = 500;
			// 
			// button2
			// 
			this->button2->BackColor = System::Drawing::Color::White;
			this->button2->BackgroundImageLayout = System::Windows::Forms::ImageLayout::Center;
			this->button2->Location = System::Drawing::Point(36, 131);
			this->button2->Name = L"button2";
			this->button2->Size = System::Drawing::Size(117, 47);
			this->button2->TabIndex = 3;
			this->button2->Text = L"Старт";
			this->button2->UseVisualStyleBackColor = false;
			this->button2->Click += gcnew System::EventHandler(this, &MyForm::button2_Click);
			// 
			// MyForm
			// 
			this->AutoScaleDimensions = System::Drawing::SizeF(8, 16);
			this->AutoScaleMode = System::Windows::Forms::AutoScaleMode::Font;
			this->BackColor = System::Drawing::Color::White;
			this->ClientSize = System::Drawing::Size(782, 540);
			this->Controls->Add(this->groupBox1);
			this->MaximizeBox = false;
			this->MinimizeBox = false;
			this->Name = L"MyForm";
			this->Text = L"Работа параллельных вычислительных потоков";
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->trackBar1))->EndInit();
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->trackBar2))->EndInit();
			this->groupBox1->ResumeLayout(false);
			this->groupBox1->PerformLayout();
			this->panel1->ResumeLayout(false);
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->dataGridView1))->EndInit();
			this->ResumeLayout(false);

		}


#pragma endregion
	private: System::Void vScrollBar1_Scroll(System::Object^ sender, System::Windows::Forms::ScrollEventArgs^ e) {
	}
	private: System::Void textBox1_TextChanged(System::Object^ sender, System::EventArgs^ e) {
	}
	private: System::Void trackBar2_Scroll(System::Object^ sender, System::EventArgs^ e) {
	}
	private: System::Void button1_Click(System::Object^ sender, System::EventArgs^ e) {
		flag_stop = true;

	}
	private: System::Void trackBar1_Scroll(System::Object^ sender, System::EventArgs^ e) {
	}
	private: System::Void tableLayoutPanel1_Paint(System::Object^ sender, System::Windows::Forms::PaintEventArgs^ e) {
	}

	public: bool flagForOperation;

	public: System::Void button2_Click(System::Object^ sender, System::EventArgs^ e) {
		threadStarting();
	}

		public: void openFile(bool flag) {
			mtx->WaitOne();
			if (flag==true) {
				ofstream file;
				file.open("text.txt");
				for (int i = 0; i < rowToWrite; i++) {
					file << arrays[i];
				}
				
				file.close();
				s = gcnew System::String(arrays[rowToWrite].c_str());
				rowToWrite++;
			}
			else {
				s = gcnew System::String(emptyRandomString.c_str());;
				if (arrays[rowToRead + 1] != "") {
					rowToRead++;
				}
			}
			if (dataGridView1->InvokeRequired) {
				dataGridView1->BeginInvoke(gcnew InvokeDelegate(this, &MyForm::SetText));
			};
			mtx->ReleaseMutex();
		}

		public: void threadStarting() {
			for (int i = 0, n = 0; i <= 255; ++i, ++n)
			{
				chars[n] = (char)i;
			};
			t1 = gcnew Thread(gcnew ThreadStart(this, &MyForm::writeSymbol));
			t2 = gcnew Thread(gcnew ThreadStart(this, &MyForm::deleteSymbol));
			t1->Start();
			t2->Start();
		}


		public: void writeSymbol() {
			if (flag_stop == false) {
				bool flag = true;
				randomString = "";
				for (int i = 0; i < 30; i++) {
					randomString += chars[rand() % 256];
				};
				arrays[rowToWrite] = randomString;
				
				openFile(flag);
				t1->Sleep(speed1);
				writeSymbol();
			}
		}

		public: void deleteSymbol() {
			if (flag_stop ==false) {
				emptyRandomString = "";
				string dop = arrays[rowToRead];
				for (int i = 0; i < dop.length(); i++) {
					for (int j = 0; j < 160; j++) {
						if (dop[i] == chars[j]) {
							emptyRandomString += dop[i];
							break;
						}
					}
				}
				bool flag = false;
				openFile(flag);
				t2->Sleep(speed2);
				deleteSymbol();
			}
		};

	delegate void InvokeDelegate();

	public: void SetText() {
		//System::String^ s = gcnew System::String(randomString.c_str());
		dataGridView1->Rows->Add("");
		dataGridView1[0, i]->Value = s;
		//dataGridView1->CurrentCell->Selected = false;
		//dataGridView1->CurrentCell = dataGridView1->Rows[i+1]->Cells[0];
		//dataGridView1->Rows[i+1]->Cells[0]->Selected = true;
		dataGridView1->FirstDisplayedScrollingRowIndex = dataGridView1->RowCount - 1;
		i++;
			speed1 = 2000 - trackBar2->Value * 15;
			speed2 = 2000 - trackBar1->Value * 15;
	}

	private: System::Void tableLayoutPanel1_Paint_1(System::Object^ sender, System::Windows::Forms::PaintEventArgs^ e) {

	}
	private: System::Void dataGridView1_CellContentClick(System::Object^ sender, System::Windows::Forms::DataGridViewCellEventArgs^ e) {
	}
	private: System::Void tableLayoutPanel1_Paint_2(System::Object^ sender, System::Windows::Forms::PaintEventArgs^ e) {
	}
	private: System::Void listView1_SelectedIndexChanged(System::Object^ sender, System::EventArgs^ e) {
	}
	private: System::Void textBox1_TextChanged_1(System::Object^ sender, System::EventArgs^ e) {
	}
	private: System::Void dataGridView1_CellContentClick_1(System::Object^ sender, System::Windows::Forms::DataGridViewCellEventArgs^ e) {
	}
};
}




