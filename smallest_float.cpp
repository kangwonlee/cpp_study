#include <iostream>

int main(int argn, char *argv[]){
	double a = 1.0;

	for (int counter=0;counter < 1e10; ++counter){
		a *= 0.5;
		std::cout << "(" << counter << ") " << a << '\n';
		if (!(0<a)){
			break;
		}
	}
	return 0;
}

