#include <iostream>
#include <cstdio>


int main(int argn, char * argv[]){

	int a = int(argv[0][0]);
	int b = int(argv[0][1]);
	int c = 0;

	printf("argv[0] = %s\n", argv[0]);	
	printf("a, b = %d, %d\n", a, b);

	b++;
	puts("b++\n");
	printf("a, b = %d, %d\n", a, b);

	b+=a;
	puts("b+=a\n");
	printf("a, b = %d, %d\n", a, b);

	c = a + b;
	puts("c = a + b\n");
	printf("a, b, c = %d, %d, %d\n", a, b, c);

	return 0;

}
