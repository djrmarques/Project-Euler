/* By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13. */
/* What is the 10 001st prime number? */

#include <stdio.h>
#define n_prime 10001

int is_prime(int*);

int main(){
  int count=0, i=1;
  int test_yes=5, test_no=100;

  /* Testing the prime function */
  printf("Is 5 prime?: %d\n", is_prime(&test_yes));
  printf("Is 100 prime?: %d\n", is_prime(&test_no));
  printf("TESTING DONE\n");

  while(count < n_prime){
    i++;
    if (is_prime(&i)){
      count++;
    }
  }

  printf("%d\n", i);
}

int is_prime(int* n){

  int flag=1, i=1;
  while(++i < *n){
    if((*n % i) == 0){
      flag = 0;
      break;
    }
  }
  return flag;
}
