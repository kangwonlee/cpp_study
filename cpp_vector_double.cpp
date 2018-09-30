#include <iostream>
#include <vector>

using namespace std;

// https://www.geeksforgeeks.org/inheritance-in-c/
class dvector : vector<double>{
};

int main ()
{
	vector<double> a ({0.0, 1.1, 2.2, 3.3});

	for (unsigned int i=0; i < a.size(); ++i){
		cout << "a[" << i << "] = " << a[i] << "\n";
	}
    
	return 0;

}
