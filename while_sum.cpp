#include <iostream>

int main(int argn, char *argv[]){

    int i = 0, s = 0;

    while (i < 100){
        s += (++i);
        // What if?
        // s += (i++);
    }

    std::cout << "sum = " << s << '\n';
}

