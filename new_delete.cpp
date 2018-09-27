#include <iomanip>
#include <iostream>
#include <cstdlib>

using namespace std;

int main(const int argn, const char * argv[]){
    int n = 16;
    int * i = new int;
    int * m = new int [n];
    int * c = new int [n]();

    // must check if OS could successfully allocate memory
    if (!i){
        cout << "Unable to allocate i = new int\n";
        exit(EXIT_FAILURE);
    }

    if (!m){
        cout << "Unable to allocate m = new int [" 
             << (sizeof(int) * n)
             << "]\n";
        exit(EXIT_FAILURE);
    }

    if (!c){
        cout << "Unable to allocate c = new int [" 
             << n << ", " << sizeof(int)
             << "]()\n";
        exit(EXIT_FAILURE);
    }

    cout << "i = " << i << '\t'
	 << "sizeof(i) = " << sizeof(i) << '\n';

    cout << "m = " << m << '\t'
         << "sizeof(m) = " << sizeof m << '\n';

    cout << "c = " << c << '\t'
         << "sizeof(c) = " << sizeof c << '\n';


    for (int i=0; n > i; ++i){
        cout << "m[" << setw(2) << dec << i << "] = "
             << hex << m[i] << '\t';
        cout << "c[" << setw(2) << dec << i << "] = "
             << hex << c[i] << '\n';
    }

    free(c);
    free(m);

    return 0;
}

