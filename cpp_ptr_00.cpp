#include <iostream>
#include <iomanip>

using namespace std;

int main(int argn, char *argv[]){
    int i = 0;
    int *p = &i;
    
    cout << "i  = " << setw(16) <<  i << '\n';
    cout << "&i = " << setw(16) << &i << '\n';
    
    cout << "*p = " << setw(16) << *p << '\n';
    cout << "p  = " << setw(16) <<  p << '\n';
    cout << "&p = " << setw(16) << &p << '\n';
    
    return 0;
}

