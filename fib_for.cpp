#include <iostream>

int main(int argn, char *argv[]){

    const int max_iter = 10000;

    const int upper_bound = 100;
    int a0 = 0, a1 = 1, a2 = 0;

    for (int i=0; (max_iter > i); ++i){
        a2 = a0 + a1;
        if (upper_bound < a2){
            break;
        }
        a0 = a1;
        a1 = a2;
        std::cout << a2 << ' ';
    }

    std::cout << "\nLargest Fibo below " << upper_bound << "= " << a1 << "\n";

}

