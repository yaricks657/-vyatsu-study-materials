#pragma once

namespace OC2 {

	//#include <cmath>
	#include <windows.h>
	#include <process.h>
//#include <iostream>
//#include <string>
	

	using namespace System;
	using namespace System::ComponentModel;
	using namespace System::Collections;
	using namespace System::Windows::Forms;
	using namespace System::Data;
	using namespace System::Drawing;
	using namespace System::Threading;
	using namespace std;

	int sharedResource = 0;
	//bool writeLock = true; // true, ксли писатель работает какой-либо
	int writers = 0;
	int readers = 0; //количество читателей на данный момент
	int queueReaders = 0; //количество читателей в очереди
	int queueWriters = 0; //количество писателей в очереди
	int maxValue = 500; //максимальное значение sharedResource
	bool stop = false;// флаг окончания работы программы
	int ii = 1;

	bool readLock = false;
	bool writeLock = false;
	int speed1 = 2000;
	int speed2 = 1000;
	int speed3 = 500;
	bool lockForFirst = false;
	bool lockForSecond = false;
	bool lockForThird = false;
	int readersForFirst = 0;
	int readersForSecond = 0;
	int readersForThird = 0;
	int writersForFirst = 0;
	int writersForSecond = 0;
	int writersForThird = 0;
	int resourceForWriter = 0;
	int resourceForReader1 = 0;
	int resourceForReader2 = 0;
	int queueForFirst = 0;
	int queueForSecond = 0;
	int queueForThird = 0;
	int queueForFirstReader1 = 0;	//Кто на какой поток из читателей 
	int queueForSecondReader1 = 0;
	int queueForThirdReader1 = 0;
	int queueForFirstReader2 = 0;
	int queueForSecondReader2 = 0;
	int queueForThirdReader2 = 0;
	bool flag = false;
	bool firstByReader1 = false;
	bool secondByReader1 = false;
	bool thirdByReader1 = false;
	bool firstByReader2 = false;
	bool secondByReader2 = false;
	bool thirdByReader2 = false;
	


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
	private: System::Windows::Forms::Panel^ panel1;
	private: System::Windows::Forms::PictureBox^ pictureBox1;
	private: System::Windows::Forms::PictureBox^ pictureBox2;
	private: System::Windows::Forms::PictureBox^ pictureBox3;
	private: System::Windows::Forms::Button^ button2;
	private: System::Windows::Forms::Button^ Старт;

	private: System::Windows::Forms::TrackBar^ trackBar2;
	private: System::Windows::Forms::TrackBar^ trackBar1;
	protected:

	public: Thread^ writer;
	public: Thread^ reader1;
	public: Thread^ reader2;
	public: Thread^ data;
	public: Mutex^ mtx = gcnew Mutex();
	private: System::Windows::Forms::Label^ label1;


	private: System::Windows::Forms::TrackBar^ trackBar3;
	private: System::Windows::Forms::PictureBox^ pictureBox4;
	private: System::Windows::Forms::PictureBox^ pictureBox5;
	private: System::Windows::Forms::PictureBox^ pictureBox6;
	private: System::Windows::Forms::PictureBox^ pictureBox7;
	private: System::Windows::Forms::PictureBox^ pictureBox8;
	private: System::Windows::Forms::PictureBox^ pictureBox9;



	private: System::Windows::Forms::PictureBox^ pictureBox10;
	private: System::Windows::Forms::PictureBox^ pictureBox11;
	private: System::Windows::Forms::PictureBox^ pictureBox12;







	public: delegate void SafeCallDelegate();

	private:
		/// <summary>
		/// Обязательная переменная конструктора.
		/// </summary>
		System::ComponentModel::Container ^components;

#pragma region Windows Form Designer generated code
		/// <summary>
		/// Требуемый метод для поддержки конструктора — не изменяйте 
		/// содержимое этого метода с помощью редактора кода.
		/// </summary>
		void InitializeComponent(void)
		{
			System::ComponentModel::ComponentResourceManager^ resources = (gcnew System::ComponentModel::ComponentResourceManager(MyForm::typeid));
			this->panel1 = (gcnew System::Windows::Forms::Panel());
			this->trackBar3 = (gcnew System::Windows::Forms::TrackBar());
			this->trackBar2 = (gcnew System::Windows::Forms::TrackBar());
			this->trackBar1 = (gcnew System::Windows::Forms::TrackBar());
			this->button2 = (gcnew System::Windows::Forms::Button());
			this->Старт = (gcnew System::Windows::Forms::Button());
			this->pictureBox1 = (gcnew System::Windows::Forms::PictureBox());
			this->pictureBox2 = (gcnew System::Windows::Forms::PictureBox());
			this->pictureBox3 = (gcnew System::Windows::Forms::PictureBox());
			this->label1 = (gcnew System::Windows::Forms::Label());
			this->pictureBox4 = (gcnew System::Windows::Forms::PictureBox());
			this->pictureBox5 = (gcnew System::Windows::Forms::PictureBox());
			this->pictureBox6 = (gcnew System::Windows::Forms::PictureBox());
			this->pictureBox7 = (gcnew System::Windows::Forms::PictureBox());
			this->pictureBox8 = (gcnew System::Windows::Forms::PictureBox());
			this->pictureBox9 = (gcnew System::Windows::Forms::PictureBox());
			this->pictureBox10 = (gcnew System::Windows::Forms::PictureBox());
			this->pictureBox11 = (gcnew System::Windows::Forms::PictureBox());
			this->pictureBox12 = (gcnew System::Windows::Forms::PictureBox());
			this->panel1->SuspendLayout();
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->trackBar3))->BeginInit();
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->trackBar2))->BeginInit();
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->trackBar1))->BeginInit();
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->pictureBox1))->BeginInit();
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->pictureBox2))->BeginInit();
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->pictureBox3))->BeginInit();
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->pictureBox4))->BeginInit();
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->pictureBox5))->BeginInit();
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->pictureBox6))->BeginInit();
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->pictureBox7))->BeginInit();
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->pictureBox8))->BeginInit();
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->pictureBox9))->BeginInit();
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->pictureBox10))->BeginInit();
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->pictureBox11))->BeginInit();
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->pictureBox12))->BeginInit();
			this->SuspendLayout();
			// 
			// panel1
			// 
			this->panel1->BackColor = System::Drawing::SystemColors::Info;
			this->panel1->BorderStyle = System::Windows::Forms::BorderStyle::Fixed3D;
			this->panel1->Controls->Add(this->trackBar3);
			this->panel1->Controls->Add(this->trackBar2);
			this->panel1->Controls->Add(this->trackBar1);
			this->panel1->Controls->Add(this->button2);
			this->panel1->Controls->Add(this->Старт);
			this->panel1->Location = System::Drawing::Point(12, 445);
			this->panel1->Name = L"panel1";
			this->panel1->Size = System::Drawing::Size(1217, 222);
			this->panel1->TabIndex = 0;
			// 
			// trackBar3
			// 
			this->trackBar3->BackColor = System::Drawing::SystemColors::ButtonHighlight;
			this->trackBar3->Location = System::Drawing::Point(236, 153);
			this->trackBar3->Maximum = 100;
			this->trackBar3->Minimum = 1;
			this->trackBar3->Name = L"trackBar3";
			this->trackBar3->Size = System::Drawing::Size(962, 56);
			this->trackBar3->TabIndex = 4;
			this->trackBar3->Value = 1;
			// 
			// trackBar2
			// 
			this->trackBar2->BackColor = System::Drawing::SystemColors::ButtonHighlight;
			this->trackBar2->Location = System::Drawing::Point(236, 84);
			this->trackBar2->Maximum = 100;
			this->trackBar2->Minimum = 1;
			this->trackBar2->Name = L"trackBar2";
			this->trackBar2->Size = System::Drawing::Size(962, 56);
			this->trackBar2->TabIndex = 3;
			this->trackBar2->Value = 1;
			// 
			// trackBar1
			// 
			this->trackBar1->BackColor = System::Drawing::SystemColors::ButtonHighlight;
			this->trackBar1->Location = System::Drawing::Point(236, 13);
			this->trackBar1->Maximum = 100;
			this->trackBar1->Minimum = 1;
			this->trackBar1->Name = L"trackBar1";
			this->trackBar1->Size = System::Drawing::Size(962, 56);
			this->trackBar1->TabIndex = 2;
			this->trackBar1->Value = 1;
			// 
			// button2
			// 
			this->button2->BackColor = System::Drawing::SystemColors::ActiveCaption;
			this->button2->Location = System::Drawing::Point(28, 84);
			this->button2->Name = L"button2";
			this->button2->Size = System::Drawing::Size(151, 49);
			this->button2->TabIndex = 1;
			this->button2->Text = L"Конец";
			this->button2->UseVisualStyleBackColor = false;
			// 
			// Старт
			// 
			this->Старт->BackColor = System::Drawing::SystemColors::ActiveCaption;
			this->Старт->Location = System::Drawing::Point(28, 20);
			this->Старт->Name = L"Старт";
			this->Старт->Size = System::Drawing::Size(151, 49);
			this->Старт->TabIndex = 0;
			this->Старт->Text = L"Старт";
			this->Старт->UseVisualStyleBackColor = false;
			this->Старт->Click += gcnew System::EventHandler(this, &MyForm::button1_Click);
			// 
			// pictureBox1
			// 
			this->pictureBox1->Image = (cli::safe_cast<System::Drawing::Image^>(resources->GetObject(L"pictureBox1.Image")));
			this->pictureBox1->Location = System::Drawing::Point(42, 221);
			this->pictureBox1->Name = L"pictureBox1";
			this->pictureBox1->Size = System::Drawing::Size(176, 213);
			this->pictureBox1->SizeMode = System::Windows::Forms::PictureBoxSizeMode::StretchImage;
			this->pictureBox1->TabIndex = 1;
			this->pictureBox1->TabStop = false;
			// 
			// pictureBox2
			// 
			this->pictureBox2->Image = (cli::safe_cast<System::Drawing::Image^>(resources->GetObject(L"pictureBox2.Image")));
			this->pictureBox2->Location = System::Drawing::Point(361, 221);
			this->pictureBox2->Name = L"pictureBox2";
			this->pictureBox2->Size = System::Drawing::Size(192, 213);
			this->pictureBox2->SizeMode = System::Windows::Forms::PictureBoxSizeMode::StretchImage;
			this->pictureBox2->TabIndex = 2;
			this->pictureBox2->TabStop = false;
			// 
			// pictureBox3
			// 
			this->pictureBox3->Image = (cli::safe_cast<System::Drawing::Image^>(resources->GetObject(L"pictureBox3.Image")));
			this->pictureBox3->Location = System::Drawing::Point(1015, 12);
			this->pictureBox3->Name = L"pictureBox3";
			this->pictureBox3->Size = System::Drawing::Size(214, 186);
			this->pictureBox3->SizeMode = System::Windows::Forms::PictureBoxSizeMode::StretchImage;
			this->pictureBox3->TabIndex = 3;
			this->pictureBox3->TabStop = false;
			this->pictureBox3->Click += gcnew System::EventHandler(this, &MyForm::pictureBox3_Click);
			// 
			// label1
			// 
			this->label1->AutoSize = true;
			this->label1->Font = (gcnew System::Drawing::Font(L"Microsoft Sans Serif", 16, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point,
				static_cast<System::Byte>(204)));
			this->label1->Location = System::Drawing::Point(267, 73);
			this->label1->Name = L"label1";
			this->label1->Size = System::Drawing::Size(0, 31);
			this->label1->TabIndex = 4;
			// 
			// pictureBox4
			// 
			this->pictureBox4->Image = (cli::safe_cast<System::Drawing::Image^>(resources->GetObject(L"pictureBox4.Image")));
			this->pictureBox4->Location = System::Drawing::Point(524, 104);
			this->pictureBox4->Name = L"pictureBox4";
			this->pictureBox4->Size = System::Drawing::Size(103, 100);
			this->pictureBox4->SizeMode = System::Windows::Forms::PictureBoxSizeMode::StretchImage;
			this->pictureBox4->TabIndex = 7;
			this->pictureBox4->TabStop = false;
			this->pictureBox4->Visible = false;
			// 
			// pictureBox5
			// 
			this->pictureBox5->Image = (cli::safe_cast<System::Drawing::Image^>(resources->GetObject(L"pictureBox5.Image")));
			this->pictureBox5->Location = System::Drawing::Point(179, 107);
			this->pictureBox5->Name = L"pictureBox5";
			this->pictureBox5->Size = System::Drawing::Size(99, 92);
			this->pictureBox5->SizeMode = System::Windows::Forms::PictureBoxSizeMode::StretchImage;
			this->pictureBox5->TabIndex = 8;
			this->pictureBox5->TabStop = false;
			this->pictureBox5->Visible = false;
			// 
			// pictureBox6
			// 
			this->pictureBox6->Image = (cli::safe_cast<System::Drawing::Image^>(resources->GetObject(L"pictureBox6.Image")));
			this->pictureBox6->Location = System::Drawing::Point(524, 107);
			this->pictureBox6->Name = L"pictureBox6";
			this->pictureBox6->Size = System::Drawing::Size(103, 97);
			this->pictureBox6->SizeMode = System::Windows::Forms::PictureBoxSizeMode::StretchImage;
			this->pictureBox6->TabIndex = 9;
			this->pictureBox6->TabStop = false;
			this->pictureBox6->Visible = false;
			// 
			// pictureBox7
			// 
			this->pictureBox7->Image = (cli::safe_cast<System::Drawing::Image^>(resources->GetObject(L"pictureBox7.Image")));
			this->pictureBox7->Location = System::Drawing::Point(178, 107);
			this->pictureBox7->Name = L"pictureBox7";
			this->pictureBox7->Size = System::Drawing::Size(100, 97);
			this->pictureBox7->SizeMode = System::Windows::Forms::PictureBoxSizeMode::StretchImage;
			this->pictureBox7->TabIndex = 10;
			this->pictureBox7->TabStop = false;
			this->pictureBox7->Visible = false;
			// 
			// pictureBox8
			// 
			this->pictureBox8->Image = (cli::safe_cast<System::Drawing::Image^>(resources->GetObject(L"pictureBox8.Image")));
			this->pictureBox8->Location = System::Drawing::Point(179, 107);
			this->pictureBox8->Name = L"pictureBox8";
			this->pictureBox8->Size = System::Drawing::Size(99, 99);
			this->pictureBox8->SizeMode = System::Windows::Forms::PictureBoxSizeMode::StretchImage;
			this->pictureBox8->TabIndex = 11;
			this->pictureBox8->TabStop = false;
			this->pictureBox8->Visible = false;
			// 
			// pictureBox9
			// 
			this->pictureBox9->Image = (cli::safe_cast<System::Drawing::Image^>(resources->GetObject(L"pictureBox9.Image")));
			this->pictureBox9->Location = System::Drawing::Point(524, 107);
			this->pictureBox9->Name = L"pictureBox9";
			this->pictureBox9->Size = System::Drawing::Size(103, 97);
			this->pictureBox9->SizeMode = System::Windows::Forms::PictureBoxSizeMode::StretchImage;
			this->pictureBox9->TabIndex = 12;
			this->pictureBox9->TabStop = false;
			this->pictureBox9->Visible = false;
			this->pictureBox9->Click += gcnew System::EventHandler(this, &MyForm::pictureBox9_Click);
			// 
			// pictureBox10
			// 
			this->pictureBox10->Image = (cli::safe_cast<System::Drawing::Image^>(resources->GetObject(L"pictureBox10.Image")));
			this->pictureBox10->Location = System::Drawing::Point(991, 221);
			this->pictureBox10->Name = L"pictureBox10";
			this->pictureBox10->Size = System::Drawing::Size(143, 144);
			this->pictureBox10->SizeMode = System::Windows::Forms::PictureBoxSizeMode::StretchImage;
			this->pictureBox10->TabIndex = 16;
			this->pictureBox10->TabStop = false;
			this->pictureBox10->Click += gcnew System::EventHandler(this, &MyForm::pictureBox10_Click);
			// 
			// pictureBox11
			// 
			this->pictureBox11->Image = (cli::safe_cast<System::Drawing::Image^>(resources->GetObject(L"pictureBox11.Image")));
			this->pictureBox11->Location = System::Drawing::Point(991, 221);
			this->pictureBox11->Name = L"pictureBox11";
			this->pictureBox11->Size = System::Drawing::Size(145, 144);
			this->pictureBox11->SizeMode = System::Windows::Forms::PictureBoxSizeMode::StretchImage;
			this->pictureBox11->TabIndex = 17;
			this->pictureBox11->TabStop = false;
			// 
			// pictureBox12
			// 
			this->pictureBox12->Image = (cli::safe_cast<System::Drawing::Image^>(resources->GetObject(L"pictureBox12.Image")));
			this->pictureBox12->Location = System::Drawing::Point(991, 221);
			this->pictureBox12->Name = L"pictureBox12";
			this->pictureBox12->Size = System::Drawing::Size(145, 144);
			this->pictureBox12->SizeMode = System::Windows::Forms::PictureBoxSizeMode::StretchImage;
			this->pictureBox12->TabIndex = 18;
			this->pictureBox12->TabStop = false;
			// 
			// MyForm
			// 
			this->AutoScaleDimensions = System::Drawing::SizeF(8, 16);
			this->AutoScaleMode = System::Windows::Forms::AutoScaleMode::Font;
			this->BackColor = System::Drawing::Color::WhiteSmoke;
			this->ClientSize = System::Drawing::Size(1249, 679);
			this->Controls->Add(this->pictureBox12);
			this->Controls->Add(this->pictureBox11);
			this->Controls->Add(this->pictureBox10);
			this->Controls->Add(this->pictureBox9);
			this->Controls->Add(this->pictureBox8);
			this->Controls->Add(this->pictureBox7);
			this->Controls->Add(this->pictureBox6);
			this->Controls->Add(this->pictureBox5);
			this->Controls->Add(this->pictureBox4);
			this->Controls->Add(this->label1);
			this->Controls->Add(this->pictureBox3);
			this->Controls->Add(this->pictureBox2);
			this->Controls->Add(this->pictureBox1);
			this->Controls->Add(this->panel1);
			this->FormBorderStyle = System::Windows::Forms::FormBorderStyle::FixedSingle;
			this->MaximizeBox = false;
			this->MinimizeBox = false;
			this->Name = L"MyForm";
			this->Text = L"Читатели и писатели";
			this->panel1->ResumeLayout(false);
			this->panel1->PerformLayout();
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->trackBar3))->EndInit();
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->trackBar2))->EndInit();
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->trackBar1))->EndInit();
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->pictureBox1))->EndInit();
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->pictureBox2))->EndInit();
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->pictureBox3))->EndInit();
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->pictureBox4))->EndInit();
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->pictureBox5))->EndInit();
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->pictureBox6))->EndInit();
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->pictureBox7))->EndInit();
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->pictureBox8))->EndInit();
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->pictureBox9))->EndInit();
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->pictureBox10))->EndInit();
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->pictureBox11))->EndInit();
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->pictureBox12))->EndInit();
			this->ResumeLayout(false);
			this->PerformLayout();

		}
#pragma endregion
	private: System::Void button1_Click(System::Object^ sender, System::EventArgs^ e) {
		int NumReaders = 2, NumWriters = 1;
		int Qty = NumReaders + NumWriters;
		writer = gcnew Thread(gcnew ThreadStart(this, &MyForm::write));
		reader1 = gcnew Thread(gcnew ThreadStart(this, &MyForm::read1));
		reader2 = gcnew Thread(gcnew ThreadStart(this, &MyForm::read2));
		//data = gcnew Thread(gcnew ThreadStart(this, &MyForm::dataShow));
		writer->Start();
		reader1->Start();
		reader2->Start();
		//cout << 1;
	}


	public: void read1() {
		read(1);
	}

	public: void read2() {
		read(2);
	}

	void snhro(int thread) {
		mtx->WaitOne();

		if (thread == 1) {
			//writers++;
			switch (resourceForWriter) {
			case 1:
				if (firstByReader1 == false && firstByReader2 == false ) {
					lockForFirst = true;
					writersForFirst = 1;
				}
				else {
					queueForFirst = thread; // 1 - это писатель
				}
				break;
			case 2:
				if (secondByReader1 == false && secondByReader2 == false) {
					lockForSecond = true;
					writersForSecond = 1;
				}
				else {
					//queueForSecond = 0;
				}
				break;
			case 3:
				if (thirdByReader1 == false && thirdByReader2 == false) {
					lockForThird = true;
					writersForThird = 1;
				}
				else {
					//queueForThird = 0;
				}
				break;
			default:
				writersForThird = 1;
				break;
			};

			/*if (writeLock == false && queueReaders) {
				readLock = true;
			}*/
		}
		 if (thread == 2){
			switch (resourceForReader1) {
			case 1:
				if (writersForFirst == 0) {
					lockForFirst = true;
					readersForFirst++;
				}
				else if (queueForFirst == 0){
					queueForFirst = thread;
				}
				else {
					queueForFirst = 4; // если оба читателя нуждаются
				}
				break;
			case 2:
				if (writersForSecond == 0) {
					lockForSecond = true;
					readersForSecond++;
				}
				else if (queueForSecond == 0) {
					queueForSecond = thread;
				}
				else {
					queueForSecond = 4; // если оба читателя нуждаются
				}
				break;
			case 3:
				if (writersForThird == 0) {
					lockForThird = true;
					readersForThird++;
				}
				else if (queueForThird == 0) {
					queueForThird = thread;
				}
				else {
					queueForThird = 4; // если оба читателя нуждаются
				}
				break;
			}
			//readers++;
			/*if (readLock == false) {
				writeLock = true;
			}*/
		}
		if (thread==3) {
			switch (resourceForReader2) {
			case 1:
				if (writersForFirst == 0) {
					lockForFirst = true;
					readersForFirst++;
				}
				else if (queueForFirst == 0) {
					queueForFirst = thread;
				}
				else {
					queueForFirst = 4; // если оба читателя нуждаются
				}
				break;
			case 2:
				if (writersForSecond == 0) {
					lockForSecond = true;
					readersForSecond++;
				}
				else if (queueForSecond == 0) {
					queueForSecond = thread;
				}
				else {
					queueForSecond = 4; // если оба читателя нуждаются
				}
				break;
			case 3:
				if (writersForThird == 0) {
					lockForThird = true;
					readersForThird++;
				}
				else if (queueForThird == 0) {
					queueForThird = thread;
				}
				else {
					queueForThird = 4; // если оба читателя нуждаются
				}
				break;
			}
		}
		mtx->ReleaseMutex();
	} 

	public: void read(int reader) {
		while (!flag) {
			//mtx->WaitOne();
			if (reader == 1) {
				resourceForReader1 = 1 + rand() % (4 - 1);
				//readers++;
				snhro(2);
				readBegin(resourceForReader1, 1);
			//	firstRead = true;
				switch (resourceForReader1) {
				case 1:
					if (label1->InvokeRequired) {
						label1->BeginInvoke(gcnew InvokeDelegate(this, &MyForm::showGreenForFirst));
					};
					break;
				case 2:
					if (label1->InvokeRequired) {
						label1->BeginInvoke(gcnew InvokeDelegate(this, &MyForm::showYellowForFirst));
					};
					break;
				case 3:
					if (label1->InvokeRequired) {
						label1->BeginInvoke(gcnew InvokeDelegate(this, &MyForm::showWhiteForFirst));
					};
					break;
				}
				reader1->Sleep(1000);

				switch (resourceForReader1) {
				case 1:
					if (label1->InvokeRequired) {
						label1->BeginInvoke(gcnew InvokeDelegate(this, &MyForm::hideGreenForFirst));
					};
					break;
				case 2:
					if (label1->InvokeRequired) {
						label1->BeginInvoke(gcnew InvokeDelegate(this, &MyForm::hideYellowForFirst));
					};
					break;
				case 3:
					if (label1->InvokeRequired) {
						label1->BeginInvoke(gcnew InvokeDelegate(this, &MyForm::hideWhiteForFirst));
					};
					break;
				}

				readEnd(reader, resourceForReader1);
				
				
				reader1->Sleep(speed1);
			}
			if (reader==2) {
				//readers++;
				resourceForReader2 = 1 + rand()%(4-1);
				snhro(3);
				readBegin(resourceForReader2, 2);
				//secondRead = true;
				switch (resourceForReader2) {
				case 1:
					if (label1->InvokeRequired) {
						label1->BeginInvoke(gcnew InvokeDelegate(this, &MyForm::showGreenForSecond));
					};
					break;
				case 2:
					if (label1->InvokeRequired) {
						label1->BeginInvoke(gcnew InvokeDelegate(this, &MyForm::showYellowForSecond));
					};
					break;
				case 3:
					if (label1->InvokeRequired) {
						label1->BeginInvoke(gcnew InvokeDelegate(this, &MyForm::showWhiteForSecond));
					};
					break;
				}
				reader2->Sleep(1000);

				switch (resourceForReader2) {
				case 1:
					if (label1->InvokeRequired) {
						label1->BeginInvoke(gcnew InvokeDelegate(this, &MyForm::hideGreenForSecond));
					};
					break;
				case 2:
					if (label1->InvokeRequired) {
						label1->BeginInvoke(gcnew InvokeDelegate(this, &MyForm::hideYellowForSecond));
					};
					break;
				case 3:
					if (label1->InvokeRequired) {
						label1->BeginInvoke(gcnew InvokeDelegate(this, &MyForm::hideWhiteForSecond));
					};
					break;
				}

				readEnd(reader, resourceForReader2);
				
				
				reader2->Sleep(speed2);
			}
			//readEnd();
			//mtx->ReleaseMutex();
		};
	};

	public: void write() {
		while (!stop) {
			resourceForWriter = 1 + rand() % (4 - 1);
			//writers++;
			snhro(1);
			writeBegin(resourceForWriter);
			

				switch (resourceForWriter) {
				case 1:
					if (label1->InvokeRequired) {
						label1->BeginInvoke(gcnew InvokeDelegate(this, &MyForm::showGreenForWritter));
					};
					break;
				case 2:
					if (label1->InvokeRequired) {
						label1->BeginInvoke(gcnew InvokeDelegate(this, &MyForm::showYellowForWritter));
					};
					break;
				case 3:
					if (label1->InvokeRequired) {
						label1->BeginInvoke(gcnew InvokeDelegate(this, &MyForm::showWhiteForWritter));
					};
					break;
				}
			
				writer->Sleep(1000);
				switch (resourceForWriter) {
				case 1:
					if (label1->InvokeRequired) {
						label1->BeginInvoke(gcnew InvokeDelegate(this, &MyForm::hideGreenForWritter));
					};
					break;
				case 2:
					if (label1->InvokeRequired) {
						label1->BeginInvoke(gcnew InvokeDelegate(this, &MyForm::hideYellowForWritter));
					};
					break;
				case 3:
					if (label1->InvokeRequired) {
						label1->BeginInvoke(gcnew InvokeDelegate(this, &MyForm::hideWhiteForWritter));
					};
					break;
				}

				writeEnd();

				writer->Sleep(speed3);
		}
	};



	public: void writeBegin(int resource) {
		//queueWriters++;
		switch (resource) {
		case 1:
			while (firstByReader1 == true || firstByReader2 == true) {
				//readersForFirst = 0;
			}
			writersForFirst = 1;
			break;
		case 2:
			while (secondByReader1 == true || secondByReader2 == true) {
				//readersForSecond = 0;
			}
			writersForSecond = 1;
			break;
		case 3:
			while (thirdByReader1 == true || thirdByReader2 == true) {
				//readersForThird = 0;
			}
			writersForThird = 1;
			break;
		default:
			break;
		}

	};

	public: void writeEnd() {
		writersForFirst = 0;
		writersForSecond = 0;
		writersForThird = 0;
		readLock = false;
	};

	delegate void InvokeDelegate();


	public: void readBegin(int resource,int reader) {
		switch (resource) {
		case 1:
			while (writersForFirst != 0) {

			}
			
			readersForFirst++;
			if (reader == 1) {
				firstByReader1 = true;
				queueForFirstReader1 = 1;
			}
			else {
				firstByReader2 = true;
				queueForFirstReader2 = 1;
			}
			
			break;
		case 2:
			while (writersForSecond != 0) {

			}
			
			readersForSecond++;
			if (reader == 1) {
				secondByReader1 = true;
				queueForSecondReader1 = 1;
			}
			else {
				secondByReader2 = true;
				queueForSecondReader2 = 1;
			}
			break;
		case 3:
			while (writersForThird != 0) {

			}
			
			readersForThird++;
			if (reader == 1) {
				thirdByReader1 = true;
				queueForThirdReader1 = 1;
			}
			else {
				thirdByReader2 = true;
				queueForThirdReader2 = 1;
			}
			break;
		}

	};

	public: void readEnd(int reader, int resource) {
		if (reader == 1) {
			switch (resourceForReader1) {
			case 1:
				readersForFirst--;
				firstByReader1 = false;
				//readersForSecond = 0;
				break;
			case 2:
				readersForSecond--;
				secondByReader1 = false;
				//readersForSecond = 0;
				break;
			case 3:
				readersForThird--;
				thirdByReader1 = false;
				//readersForSecond = 0;
				break;
			};
		}
		if (reader == 2) {
			switch (resourceForReader2) {
			case 1:
				readersForFirst--;
				firstByReader2 = false;
			//	readersForSecond = 0;
				break;
			case 2:
				readersForSecond--;
				secondByReader2 = false;
				//readersForSecond = 0;
				break;
			case 3:
				readersForThird--;
				thirdByReader2 = false;
				//readersForSecond = 0;
				break;
			};
		}
		/*if (readersForFirst < 0 || readersForFirst > 2) {
			readersForFirst = 2;
		}
		if (readersForSecond < 0 || readersForSecond > 2) {
			readersForSecond = 2;
		}
		if (readersForThird < 0 || readersForThird > 2) {
			readersForThird = 2;
		}*/
		//readers = readers - 1;
		//writeLock = false;
	};

	public: void showGreenForFirst() {
		pictureBox7->Visible = true;
		//label2->Visible = false;
		//label3->Visible = false;
	};

		  public: void showYellowForFirst() {
			  pictureBox8->Visible = true;
			  //label2->Visible = false;
			  //label3->Visible = false;
		  };

				public: void showWhiteForFirst() {
					pictureBox5->Visible = true;
					//label2->Visible = false;
					//label3->Visible = false;
				};

	public: void showGreenForSecond() {
		pictureBox9->Visible = true;
		//label2->Visible = false;
		//label3->Visible = false;
	};

		  public: void showYellowForSecond() {
			  pictureBox6->Visible = true;
			  //label2->Visible = false;
			  //label3->Visible = false;
		  };

	public: void showWhiteForSecond() {
		pictureBox4->Visible = true;
		//label2->Visible = false;
		//label3->Visible = false;
	}

	public: void showGreenForWritter() {
		pictureBox12->Visible = true;
		//label2->Visible = false;
		//label3->Visible = false;
	};

		  public: void showYellowForWritter() {
			  pictureBox11->Visible = true;
			  //label2->Visible = false;
			  //label3->Visible = false;
		  };

				public: void showWhiteForWritter() {
					pictureBox10->Visible = true;
					//label2->Visible = false;
					//label3->Visible = false;
				};

	/*HIED*/

	public: void hideGreenForFirst() {
		pictureBox7->Visible = false;
		//label2->Visible = false;
		//label3->Visible = false;
		speed1 = 2000 - trackBar2->Value * 15;
	};

		  public: void hideYellowForFirst() {
			  pictureBox8->Visible = false;
			  //label2->Visible = false;
			  //label3->Visible = false;
			  speed1 = 2000 - trackBar2->Value * 15;
		  };

				public: void hideWhiteForFirst() {
					pictureBox5->Visible = false;
					//label2->Visible = false;
					//label3->Visible = false;
					speed1 = 2000 - trackBar2->Value * 15;
				};

	public: void hideGreenForSecond() {
		pictureBox9->Visible = false;
		//label2->Visible = false;
		//label3->Visible = false;
		speed2 = 2000 - trackBar3->Value * 15;
	};

		  public: void hideYellowForSecond() {
			  pictureBox6->Visible = false;
			  //label2->Visible = false;
			  //label3->Visible = false;
			  speed2 = 2000 - trackBar3->Value * 15;
		  };

	public: void hideWhiteForSecond() {
		pictureBox4->Visible = false;
		//label2->Visible = false;
		//label3->Visible = false;
		speed2 = 2000 - trackBar3->Value * 15;
	}

	public: void hideGreenForWritter() {
		pictureBox12->Visible = false;
		//label2->Visible = false;
		//label3->Visible = false;
		speed3 = 2000 - trackBar1->Value * 15;
	};

		  public: void hideYellowForWritter() {
			  pictureBox11->Visible = false;
			  //label2->Visible = false;
			  //label3->Visible = false;
			  speed3 = 2000 - trackBar1->Value * 15;
		  };

				public: void hideWhiteForWritter() {
					pictureBox10->Visible = false;
					//label2->Visible = false;
					//label3->Visible = false;
					speed3 = 2000 - trackBar1->Value * 15;
				};
private: System::Void pictureBox3_Click(System::Object^ sender, System::EventArgs^ e) {
}
private: System::Void pictureBox10_Click(System::Object^ sender, System::EventArgs^ e) {
}
private: System::Void pictureBox9_Click(System::Object^ sender, System::EventArgs^ e) {
}
};
}
