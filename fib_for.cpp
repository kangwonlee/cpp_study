#include <iostream>

int main(int argn, char *argv[]){

    const int max_iter = 10000;

    const int n = 10;
    int found = 2, fib[10] = {0, 1};

    for (int i=0; max_iter > i; ++i){
        fib[found] = fib[found-1] + fib[found-2];
	++found;
	if (n <= found){
	    break;
	}
    }
    /* // alternatively
    for (int i=0; (max_iter > i) && (n > found); ++i, ++found){
        fib[found] = fib[found-1] + fib[found-2];
    }*/

    std::cout << "fib = [";
    for (int j=0; n > j; ++j){
	std::cout << fib[j] << ", ";
    }
    std::cout << "]\n";

}

