#include <iostream>

using namespace std;

int main(int argn, char *argv[]){
    int b = 12;

    if (!(b % 2)){
        cout << "2 can divde 'b'\n";
    } else if (!(b % 3)){
        cout << "3 can divde 'b'\n";
    } else if (!(b % 4)){
        cout << "4 can divde 'b'\n";
    } else {
        cout << "None of the above\n";
    }

    return 0;
}

