#include <sys/syscall.h>
#include <stdlib.h>
int main(void) {
int *ptr;
ptr = (int *)0x100;
*ptr = 41;
exit(0);
}
