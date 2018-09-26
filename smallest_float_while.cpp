#include <iostream>

int main(int argn, char *argv[]){
	double a = 1.0;
	int counter = 0;

	while (0<a){
		a *= 0.5;
		std::cout << "(" << (++counter) << ") " 
			  << a 
			  << '\n';
		if (10000<counter){
			break;
		}
	}
	return 0;
}

