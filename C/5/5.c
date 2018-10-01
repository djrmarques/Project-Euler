/* 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder. */
/* What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20? */
/* Answer: 232792560 */

#include <stdio.h>
#define ANS 232792560
#define MAX 10

int is_divisable(int*);

int main(){
  int i=1;

  while(1){
    if(is_divisable(&i)){
      break;
    }

    i +=1;
  }
  
  if(i == ANS){printf("Correct\n");}
  else{printf("WRONG\n");}
}

int is_divisable(int* i){

  int flag=1;

  for(int j=1; j<=20; j++){
    if((*i % j) != 0){
      flag=0;
      break;
    }
  }
  return flag;
}
