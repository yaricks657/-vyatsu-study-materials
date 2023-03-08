#include <iostream>
#include <thread>
#include <mutex>
#include <vector>
#include <chrono>

using namespace std;
const int BEERS = 5,
HONEY = 3;
int awake_number = 0, countt = 0;
mutex q_mutex, io_mutex, c_mutex;
bool test_count() {
	lock_guard<mutex> c_lock(c_mutex);
	return awake_number < BEERS;
}
void beers(int awake_number) {
	while (test_count()) {
		bool ok = false;
		{
		//	lock_guard<mutex> q_lock(q_mutex);
			if (countt < HONEY) {
				lock_guard<mutex> c_lock(c_mutex);
				countt++;
				ok = true;
			}
		}
		if (ok) {
			{
				lock_guard<mutex> q_lock(q_mutex);
				cout << "The bee number " << rand() % BEERS+1 << " brought honey. In a pot of " << countt << " servings\n"; 
			}
			this_thread::sleep_for(chrono::milliseconds(800));
		}
	}
}
void bear_awake() {
	while (test_count())
	{
		this_thread::sleep_for(chrono::milliseconds(100));
		//lock_guard<mutex> q_lock(q_mutex);
		if (countt == HONEY) {
			lock_guard<mutex> io_lock(io_mutex);
			cout << "THE BEAR IS AWAKE!!!\n";
			this_thread::sleep_for(chrono::milliseconds(100));
			cout << "He ate the honey and the bee number " << awake_number+1<< endl;
			countt = 0;
			awake_number++;
			if (awake_number == BEERS)
				cout << "All the bees are eaten by the bear.";
		}
	}
}
int main() {
	auto bee = thread(beers, awake_number);
	auto bear = thread(bear_awake);
	bee.join();
	bear.join();
	return 0;
}