#include <iostream>
#include <vector>

using namespace std;
 
int main ()
{
	// http://www.cplusplus.com/reference/vector/vector/
	vector<char> a ({'a', 'b', 'c', 'd'});

	for (unsigned int i=0; i < a.size(); ++i){
		cout << "a[" << i << "] = " << a[i] << "\n";
	}
    
	return 0;
}
