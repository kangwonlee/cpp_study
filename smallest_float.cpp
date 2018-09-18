#include <iostream>
#include <bitset>

int main(int argn, char *argv[]){
	double a = 1.0;
	const int n = sizeof(a) * 8;
	unsigned long int * lp = (unsigned long int *) & a;

	for (int counter=0;counter < 1e10; ++counter){
		a *= 0.5;
		std::cout << "(" << counter << ") " 
			  << a 
			  << "[" << std::bitset<n>(*lp) << "]"
			  << '\n';
		if (!(0<a)){
			break;
		}
	}
	return 0;
}

