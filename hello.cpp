#include <iostream>
#include <cstdio>

int main(int argn, char * argv[]){

	int a = int(argv[0][0]);
	int b = int(argv[0][1]);
	int c = 0;

	printf("argv[0] = %s\n", argv[0]);
	printf("argv[1] = %s\n", argv[1]);
	printf("argv[2] = %s\n\n", argv[2]);

	printf("a, b, c = %d, %d, %d\n", a, b, c);

	b++;
	puts("\nb++");
	printf("a, b, c = %d, %d, %d\n", a, b, c);

	b+=a;
	puts("\nb+=a");
	printf("a, b, c = %d, %d, %d\n", a, b, c);

	c = a + b;
	puts("\nc = a + b");
	printf("a, b, c = %d, %d, %d\n", a, b, c);

	return 0;

}
