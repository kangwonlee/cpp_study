#include <iostream>

int main(int argn, char *argv[]){

    const int max_iter =10000;
    const int upper_bound = 100;
    
    int a0 = 0, a1 = 1, a2 = 0;
    
    int i = 0;

    while ((upper_bound > a2) && (max_iter > i)){
        i ++;
        a2 = a0 + a1;
	a0 = a1;
	a1 = a2;
        std::cout << a0 << ' ';
    }

    std::cout << "\nLargest Fibo below " << upper_bound << "= " << a0 << '\n';
}

