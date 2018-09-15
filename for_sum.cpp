#include <iostream>

int main(int argn, char *argv[]){

    int s = 0;

    for (int i=0; i <= 100; ++i){
        s += i;
    }

    std::cout << "sum = " << s << '\n';
}

