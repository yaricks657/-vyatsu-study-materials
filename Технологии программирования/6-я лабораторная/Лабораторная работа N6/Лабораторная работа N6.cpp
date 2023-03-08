#include <iostream>
using namespace std;


class Smartphones {
private:
    int s_counter;
protected:
    int summ_i=0;
    int summ_a=0;
public: 
    Smartphones(int s_counter = 0) {
        
    }
    ~Smartphones() {
      
    }
    void cleaning_s() {
        s_counter = 0;
    }
    int summ() { return summ_i + summ_a; }
    virtual int quantity() const { return s_counter; }
    virtual int money() {
        return 0;
    };
    virtual void setQuantity(int number) { s_counter = number; }
    virtual void phone_brands() {
        cout << "Apple\n";
        cout << "Samsung\n";
        cout << "Xiaomi\n";
        cout << "Huawei (Honor)\n";
        cout << "Vivo\n";
        cout << "Realme\n";
        cout << "Oppo\n";
        cout << "OnePlus\n";
    };
};

class iOS : public Smartphones {
private:
    int i_counter=0;
public:
    iOS(int i_counter = 0) {

    }
    ~iOS() {

    }
    int iOS_shop[20];
    int iOS_prise[20];
    void cleaning_i() {
        i_counter = 0;
        for (int i = 0; i < 20; i++)
        {
            iOS_shop[i] = 0;
            iOS_prise[i] = 0;
        }
        summ_i = 0;
    }
    void mass_i() {
        for (int i = 0; i < i_counter; i++) {
            if (iOS_shop[i] == 1) iOS_prise[i] = 109990;
            if (iOS_shop[i] == 2) iOS_prise[i] = 99990;
            if (iOS_shop[i] == 3) iOS_prise[i] = 79990;
            if (iOS_shop[i] == 4) iOS_prise[i] = 69990;
            if (iOS_shop[i] == 5) iOS_prise[i] = 95490;
            if (iOS_shop[i] == 6) iOS_prise[i] = 54990;
            if (iOS_shop[i] == 7) iOS_prise[i] = 47990;
            if (iOS_shop[i] == 8) iOS_prise[i] = 39990;
            if (iOS_shop[i] == 9) iOS_prise[i] = 21990;
        }
    }
    void iOS_summ() {
        summ_i = 0;
        for (int i = 0; i < i_counter-1; i++) {
            summ_i = summ_i + iOS_prise[i];
        }
    }
    virtual int money() {

        return summ_i;
    }
    virtual int quantity() const { return i_counter; }
    virtual void setQuantity(int number) {
        iOS_shop[i_counter] = number;
        i_counter =i_counter+1;
    }
    virtual void phone_brands() {
        cout << "1. Iphone 12 Pro Max - 109 900 rub.\n";
        cout << "2. Iphone 12 Pro - 99 990 rub.\n";
        cout << "3. Iphone 12 - 79 990 rub.\n";
        cout << "4. Iphone 12 mini - 69 990 rub.\n";
        cout << "5. Iphone 11 Pro - 95 490 rub.\n";
        cout << "6. Iphone 11 - 54 990 rub.\n";
        cout << "7. Iphone Xr - 47 990 rub.\n";
        cout << "8. Iphone SE 2 - 39 990 rub.\n";
        cout << "9. Iphone SE 1 - 21 990 rub.\n";
    };
};

class Android : public Smartphones {
private:
    int a_counter=0;
public:
    Android(int a_counter = 0) {

    }
    ~Android() {

    }
    int android_shop[20];
    int android_prise[20];
    void cleaning_a() {
        a_counter = 0;
        for (int i = 0; i < 20; i++)
        {
            android_shop[i] = 0;
            android_prise[i] = 0;
        }
        summ_a = 0;
    }
    void mass_a() {
        for (int i = 0; i < a_counter; i++) {
            if (android_shop[i] == 1) android_prise[i] = 109990;
            if (android_shop[i] == 2) android_prise[i] = 79990;
            if (android_shop[i] == 3) android_prise[i] = 89990;
            if (android_shop[i] == 4) android_prise[i] = 64779;
            if (android_shop[i] == 5) android_prise[i] = 49990;
            if (android_shop[i] == 6) android_prise[i] = 64375;
            if (android_shop[i] == 7) android_prise[i] = 59995;
            if (android_shop[i] == 8) android_prise[i] = 64990;
            if (android_shop[i] == 9) android_prise[i] = 44900;
            if (android_shop[i] == 10) android_prise[i] = 63990;
            if (android_shop[i] == 11) android_prise[i] = 49990;
            if (android_shop[i] == 12) android_prise[i] = 31990;
            if (android_shop[i] == 13) android_prise[i] = 54990;
            if (android_shop[i] == 14) android_prise[i] = 72990;
            if (android_shop[i] == 15) android_prise[i] = 64990;
            if (android_shop[i] == 16) android_prise[i] = 44990;
        }
    }
    void Android_summ() {
        for (int i = 0; i < a_counter-1; i++)
            summ_a = summ_a + android_prise[i];

    }

    virtual int money() {
      
        return summ_a;
    }
    virtual int quantity() const { return a_counter; }
   
    virtual void setQuantity(int number) {
        android_shop[a_counter] = number;
        a_counter = a_counter+1; 
    }
    virtual void phone_brands() {
        cout << "1. Samsung Galaxy S21 Ultra - 109 990 rub.\n";
        cout << "2. Samsung Galaxy S21 - 79 990 rub.\n";
        cout << "3. Samsung Galaxy Note20 Ultra - 89 990 rub.\n";
        cout << "4. Samsung Galaxy Note20 - 64 779 rub.\n";
        cout << "5. Samsung Galaxy S20 - 49 990 rub.\n";
        cout << "6. Xiaomi Mi 11 - 64 375 rub.\n";
        cout << "7. Xiaomi Mi 10 - 59 995 rub.\n";
        cout << "8. Huawei P40 Pro - 64 990 rub.\n";
        cout << "9. Huawei P40 - 44 990 rub.\n";
        cout << "10. OnePlus 8 Pro - 63 990 rub.\n";
        cout << "11. OnePlus 7 Pro - 43 990 rub.\n";
        cout << "12. Realme X3 Superzoom  - 31 990 rub.\n";
        cout << "13. Honor 30 Pro+ - 54 990 rub.\n";
        cout << "14. OPPO Find X2 - 72 990 rub.\n";
        cout << "15. Vivo X60 Pro - 64 990 rub.\n";
        cout << "16. Vivo X50 - 44 990 rub.\n";
    }
};

int main()
{
    Smartphones* ptr;
   
    int menu;
    bool gg = false;
    while (gg == false) {
        system("cls");
        cout << "1. Phone brands\n";
        cout << "2. Iphone store\n";
        cout << "3. Android store\n";
        cout << "4. Shopping cart\n";
        cout << "5. Clear shopping cart\n";
        cout << "6. Exit\n";
        cin >> menu;
        switch (menu)
        {
        case 1: {
            system("cls");
            ptr = new Smartphones();
           ptr->phone_brands(); 
           system("pause");
        }
              break;
        case 2: {
            system("cls");

            ptr = new iOS();//&i;
            ptr->phone_brands();
            system("pause");
            bool ggg = false;
            int ii;
            while (ggg == false) {
                cin >> ii;
                ptr->setQuantity(ii);
                if (ii == 100) ggg = true;
            }
            delete ptr;

        }
              break;
        case 3: {
            system("cls");
            ptr = new Android();
            ptr->phone_brands();
            system("pause");
            bool ggg = false;
            int ii;
            while (ggg == false) {
                cin >> ii;
                ptr->setQuantity(ii);
                if (ii == 100) ggg = true;
            }
            delete ptr;
        }
              break;
        case 4: {
            ptr = new iOS();
            int spent = 0;
            system("cls");
            static_cast<iOS*>(ptr)->mass_i();
            static_cast<iOS*>(ptr)->iOS_summ();
            static_cast<Android*>(ptr)->mass_a();
            static_cast<Android*>(ptr)->Android_summ();
            ptr = new iOS();//&i;
           
            cout << "The amount of money spent on IPhones:\n";
            cout << ptr->money() << endl;
            spent = ptr->money();
            ptr = new Android();
            cout << "The amount of money spent on Android-phones:\n";
            cout << ptr->money() << endl;
            spent += ptr->money();
            cout << "The amount of money spent on smartphones:\n";
            cout << spent << endl;
            system("pause");
        }
              break;
        case 5: {
          //  s.cleaning_s();
           // i.cleaning_i();
           // a.cleaning_a();
        }
              break;
        case 6: {
            gg = true;
        }
              break;
        }
    }
}

