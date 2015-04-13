#include <stdio.h>
#include <stdlib.h>
#include <time.h>
int main(int argc, char **argv)
{
	if(argc!=2){
		printf("check arguments!\n");
		return 0;
	}
	long begin,end;
	begin=clock();
	system(argv[1]);
	end=clock();
	printf("Run time %ld ms.\n",end-begin);
	return 0;
}