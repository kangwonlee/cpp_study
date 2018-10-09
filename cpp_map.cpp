#include <iostream>
#include <map>
// https://en.cppreference.com/w/cpp/string/byte/strcmp
// https://stackoverflow.com/questions/3709031/mapstring-string-how-to-insert-data-in-this-map
#include <string>


using namespace std;


int main(int argn, char * argv[]){
	map<string, string>s;

	s["name"] = "python";
	s["year"] = "AD1989";
	s["cmd"] = "python";

	// https://stackoverflow.com/questions/14070940/
	
	for (auto& t: s){
		cout << t.first << ':' << t.second << '\n';
	}
	return 0;
}
