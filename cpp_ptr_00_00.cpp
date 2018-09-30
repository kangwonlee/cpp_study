#include <iostream>
#include <iomanip>

using namespace std;

int main(int argn, char *argv[]){
    // This is an integer variable
    int i = 0;

    // This is a pointer variable to the variable i
    int *p = &i;

    // Value of the variable i
    cout << "i  = " << setw(16) << hex <<  i << '\n';
    // Address of the variable i
    cout << "&i = " << setw(16) << &i << '\n';

    // Integer value at the location p
    cout << "*p = " << setw(16) << hex << *p << '\n';
    // Value of the pointer variable p
    cout << "p  = " << setw(16) <<  p << '\n';
    // Address of the pointer variable p
    cout << "&p = " << setw(16) << &p << '\n';
    // Address of the pointer value (p + 1)
    cout << "(p + 1) = " << setw(16) << (p + 1) << '\n';
    
    return 0;
}
