#include <stdio.h>
typedef struct Node Node;
struct Node {
  int a;
  Node *next;
  Node *body;
};

Node *nop(){
  Node head = {};
  Node *cur = &head;
//  printf("nop*******%p\n", cur);
  
  //cur = cur->next;
  //printf("nop*******%p\n", cur);
  
  return cur;
}
int main() {
  Node a = {};
  printf("a=%d",a.a);
  Node head={};
  printf("head*******%p\n", &head);
  printf("head.next*******%p\n", head.next);

  Node *cur = &head;
  printf("cur*******%p\n", cur);
  cur->next = nop();  
  cur = cur->next;
  printf("cur=cur->next*******%p\n", cur);
  
 
  return 0;
}


