#include <stdio.h>

#define FORMAT_STRING "%s"
#define MESSAGE       "Hello, world!\n"

int glvar;
int aaa = 10;
int
main(int argc, char *argv[]) {
  int a = 0;
  glvar = 1;
  aaa *= 200;
  printf(FORMAT_STRING, MESSAGE);
  return 0;
}

