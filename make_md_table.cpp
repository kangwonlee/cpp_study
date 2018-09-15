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

	for (int i=0; i<(8+1); ++i){
		ofs << std::bitset<n>(i) << " | " << i << " | " << char(i) << '\n';
	}
	ofs << elipsis_line;

        for (int i=14; i<(50+1); ++i){
                ofs << std::bitset<n>(i) << " | " << i << " | " << char(i) << '\n';
        }
        ofs << elipsis_line;

        for (int i=57; i<(65+1); ++i){
                ofs << std::bitset<n>(i) << " | " << i << " | " << char(i) << '\n';
        }
        ofs << elipsis_line;

	for (int i=90; i<(97+1); ++i){
                ofs << std::bitset<n>(i) << " | " << i << " | " << char(i) << '\n';
        }
        ofs << elipsis_line;

	for (int i=122; i<(127+1); ++i){
                ofs << std::bitset<n>(i) << " | " << i << " | " << char(i) << '\n';
        }
        ofs << elipsis_line;


	ofs.close();

	return 0;
}

