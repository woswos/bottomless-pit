/* strtol example */
#include <stdio.h>      /* printf */
#include <stdlib.h>     /* strtol */
#include <iostream>


void get_number(void){
  int offset;
  char input_int [128];
  int var;

  var = *(int *)(offset + 0x14);
  std::cin >> input_int;
  strtol(input_int,(char **)0x0,10);
  if (var != *(int *)(offset + 0x14)) {

  }

  return;
}



int main () {

    /*
    int iVar1;
    int *piVar2;

    puts("Can you tell me where to mail this postage?");
    piVar2 = (int *)get_number();
    iVar1 = *piVar2;
    if (iVar1 != -0x21524111) {
        puts("That doesn\'t look right... try again later, friend!");
    }
    else {
        puts("Got it! That\'s the right number!");
    }
    */

  return 0;
}
