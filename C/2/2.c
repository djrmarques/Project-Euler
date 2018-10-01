/* Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be: */
/* 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ... */
/* By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms. */
/* Answer: 4613732 */

#include <stdio.h>

#define MAX 4000000
#define ANS 4613732

void fib(int*, int*, int*);

int main(){
  int n1=0, n2=1, acc=0;

  while(n1 <= MAX){
    fib (&n1, &n2, &acc);
  }

  if (acc == ANS){
    printf("Correct\n");
  } else{
    printf("WRONG\n");
  }

}

void fib(int *n1, int *n2, int *acc){
  int ph=*n1;
  *n1 = *n2;
  *n2 = *n1 + ph;

  if((*n1 % 2) == 0){
    *acc +=  *n1;
  }
}