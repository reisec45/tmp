#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <ctype.h>
#include "loader.h"

void dump_section(std::string secname, Binary *bin) {
  int no_sec = 0;
  uint64_t j;
  uint64_t offset;
  Section *sec;
  for (int i = 0; i < bin->sections.size(); i++) {
    sec = &(bin->sections[i]);
    if(secname == sec->name.c_str()) {
      no_sec = 1;
      break;
    }
  }
  if (no_sec == 0) {
    printf("no section named %s\n", secname.c_str());
    exit(1);
  }
  for (uint64_t i = 0; i < sec->size; i+= 16) {
    printf ( "%08x:  ", sec->vma + i);
    for (j = 0; j < 16 && j + i < sec->size; j++) {
      printf ("%02x", sec->bytes[i+j]);
      printf("%s", (j%2 == 1) ? " " : "");
    }
    for (; j < 16; j++) {
      printf("%s", (j%2 == 1) ? "   " : "  ");
    }

    printf ("  ");
    for (j = 0; j < 16 && j + i < sec->size; j++) {
      printf ("%c", isprint(sec->bytes[i+j]) ? sec->bytes[i+j] : '.');
    }
    
    printf ("\n");
  }
}

int main(int argc, char *argv[]) {
  size_t i;
  Binary bin;
  Section *sec;
  Symbol *sym;
  std::string fname;

  if (argc < 2) {
    printf("Usage: %s <binary>\n", argv[0]);
    exit(1);
  }
  
  fname.assign(argv[1]);
  if (load_binary(fname, &bin, Binary::BIN_TYPE_AUTO) < 0) {
    exit(1);
  }

  printf("loaded binary '%s' %s/%s (%u bits) entry@0x%016jx\n",
      bin.filename.c_str(),
      bin.type_str.c_str(), bin.arch_str.c_str(),
      bin.bits, bin.entry);
  
  for (i = 0; i < bin.sections.size(); i++) {
    sec = &bin.sections[i];
    printf(" 0x%016jx %-8ju % -20s %s\n",
        sec->vma, sec->size, sec->name.c_str(),
        sec->type == Section::SEC_TYPE_CODE ? "CODE" : "DATA");
  }
  
  if (bin.symbols.size() > 0) {
    printf("sccaned symbol tables\n");
    for (i = 0; i < bin.symbols.size(); i++) {
      sym = &bin.symbols[i];
      printf(" %-40s 0x%016jx %s\n",
          sym->name.c_str(), sym->addr,
          (sym->type & Symbol::SYM_TYPE_FUNC) ? "FUNC" : "");
    }
  }
  
  if (argc > 2)
    dump_section(argv[2], &bin);

  unload_binary(&bin);
  exit(0);
  
}
