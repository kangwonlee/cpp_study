#include <iostream>

using namespace std;

int main(int argn, char *argv[]){
    int c = 1;

    switch (c) {
        case 0 :
            cout << "i == 0\n";
            break;
        case 1 :
            cout << "i == 1\n";
            break;
        case 2 :
            cout << "i == 2\n";
            break;
        default :
            cout << "None of the above\n";
            break;
    }

    return 0;
}

