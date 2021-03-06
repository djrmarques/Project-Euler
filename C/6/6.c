/* The sum of the squares of the first ten natural numbers is, */
/* 1^2 + 2^2 + ... + 10^2 = 385 */
/* The square of the sum of the first ten natural numbers is, */
/* (1 + 2 + ... + 10)^2 = 55^2 = 3025 */
/* Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640. */
/* Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum. */

#include <stdio.h>
#define MAX 100

int main(){
  int sum=0, sum_squared=0;

  for(int i=0; i<=MAX; i++){
    sum += i;
    sum_squared += i*i;

  }
  sum *= sum;

  printf("Square of the sum: %d\n Sum of the squares: %d\n Difference: %d\n", sum, sum_squared, sum-sum_squared);

}
