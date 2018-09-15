// http://www.cplusplus.com/reference/fstream/fstream/
// https://stackoverflow.com/questions/35045781/no-matching-function-for-call-to-stdbasic-ofstreamchar-stdchar-traitscha
#include <cstdio>

int main(int argn, char *argv[]){
	FILE *fp = fopen("ascii_table.md", "w");

	const char elipsis_line[] = " ... | ... | ... \n";
	const int n = 8;


	fprintf(fp, "%d bit bit pattern | `unsigned int%d_t` | `char \n", n, n);
	fputs(":-----------------:|:--------:|:------:\n", fp);
	fputs(elipsis_line, fp);

	fclose(fp);
}
