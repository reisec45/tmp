int main(){
   char buf[100] = {};
   void (*rce)() = (void *)(0x00007ffff7ddf000 +0xeafab);
   rce();
}
