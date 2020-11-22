#include <stdio.h>
typedef struct Node Node;
struct Node {
  Node *next;
  Node *body;
};

Node *local[100];
Node *nop(){
  Node head = {};
  Node *cur = &head;
  printf("nop*******%p\n", cur);
  
  cur = cur->next;
  printf("nop*******%p\n", cur);
  
  return &head;
}
int main() {
  int a = 0;
  int *b;
  int c[] = {10,5,15};
  char *kw[] = {"aaa", "bbb", "ccc"};
  printf("%d\n",sizeof(kw));
  printf("%d\n",sizeof(*kw));
  printf("%d\n",sizeof(kw)/sizeof(*kw));
  printf("%d\n",sizeof(a));
  printf("%d\n", sizeof(b));
  printf("%d\n", sizeof(c));

  printf("%p,\n",local);
  Node head = {};
  printf("nop*******%p\n", head.next);

  Node *cur = &head;
  printf("nop*******%p\n", cur);
  
  cur = cur->next;
  printf("nop*******%p\n", cur);
  
 
  return 0;
}


