/* The prime factors of 13195 are 5, 7, 13 and 29. */
/* What is the largest prime factor of the number 600851475143 ? */
/* Answer: 6857 */

#include <stdio.h>
#define ANS 6857

int main(){

  int i=2; 
  long int max=600851475143;
  
  /* Don't really understand why this works but k */
  while(i*i <= max){
    while ((max % i) == 0){
      max /= i;
    }
    i += 1;
  }
  if (max == ANS){ printf("CORRECT\n");}
  else{printf("WRONG");}
}
