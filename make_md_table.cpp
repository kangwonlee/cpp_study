// http://www.cplusplus.com/reference/fstream/fstream/
#include <fstream>
// https://stackoverflow.com/questions/7349689/how-to-print-using-cout-the-way-a-number-is-stored-in-memory
#include <bitset>

int main(int argn, char *argv[]){

	std::ofstream ofs("ascii_table.md", std::ofstream::out);	
	char elipsis_line[] = " ... | ... | ... \n";
	const int n = 8;

	ofs << " " << n << " bit bit pattern | `unsigned int" << n << "_t` | `char`\n";
	ofs << ":-----------------:|:--------:|:------:\n";

	std::bitset<n> x();

	for (int i=0; i<(8+1); ++i){
		std::bitset<n> x(i);
		ofs << x << " | " << i << " | " << char(i) << '\n';
	}
	ofs << elipsis_line;

	ofs.close();

	return 0;
}

