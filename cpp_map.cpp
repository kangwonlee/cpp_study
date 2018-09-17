#include <iostream>
#include <map>
// https://en.cppreference.com/w/cpp/string/byte/strcmp
#include <cstring>

using namespace std;

// https://stackoverflow.com/questions/4157687/
struct cmp_str
{
   bool operator()(char const *a, char const *b)
   {
      return std::strcmp(a, b) < 0;
   }
};

int main(int argn, char * argv[]){
	map<const char *, const char *, cmp_str>s;

	s["name"] = "python";
	s["year"] = "AD1989";
	s["cmd"] = "python";

	// https://stackoverflow.com/questions/14070940/
	
	for (auto& t: s){
		cout << t.first << ':' << t.second << '\n';
	}
	return 0;
}
