#include <stdio.h>

extern char _start;
int main()
{
    printf("&_start = %p\n",&_start);
    return 0;
}

