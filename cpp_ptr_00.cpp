#include <iostream>
#include <iomanip>

using namespace std;

int main(int argn, char *argv[]){
    int i = 0, j = 0x01020304;
    int *p = &i;

    cout << "i  = " << setw(16) <<  i << '\n';
    cout << "&i = " << setw(16) << &i << '\n';

    cout << "*p = " << setw(16) << *p << '\n';
    cout << "p  = " << setw(16) <<  p << '\n';
    cout << "&p = " << setw(16) << &p << '\n';

    p = &j;

    cout << "j  = " << setw(16) <<  j << '\n';
    cout << "&j = " << setw(16) << &j << '\n';

    cout << "*p = " << setw(16) << *p << '\n';
    cout << "p  = " << setw(16) <<  p << '\n';
    cout << "&p = " << setw(16) << &p << '\n';
    
    return 0;
}

