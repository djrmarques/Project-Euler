/* A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99. */
/* Find the largest palindrome made from the product of two 3-digit numbers. */
/* Answer: 906609 */

#include <stdio.h>
#define ANS 906609

/* Returs True of False */
int is_pal(int*);

int main(){

  int v=0, max=0;


  for(int i=1; i<1000; i++){
    for(int j=1; j<1000; j++){
      v = j * i;

      if((is_pal(&v) == 1) && (v > max)){
        max = v;
      }
    }
  }

  /* Checks the answer */
  if(max == ANS){printf("CORRECT\n");}
  else{printf("WRONG\n");}
}

int is_pal(int *v){
  int rev=0, remain, temp=*v;

  while(temp > 0){
    remain = temp % 10;
    rev = rev*10 + remain;
    temp /= 10;
  }

  if(rev == *v){return 1;}
  else{return 0;}
}
