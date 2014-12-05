#include <stdio.h>

#define ARRAYSIZE 8

void bubble_sort(int unsortedArray[], int arraySize){

  int temp;

  for(int i = 0; i < arraySize; i++){
    for(int j = 0; j < arraySize; j++){
      if(unsortedArray[j] > unsortedArray[j + 1]){
        temp = unsortedArray[j];
        unsortedArray[j] = unsortedArray[j + 1];
        unsortedArray[j + 1] = temp;
      }
    }
  }
}

int main(void){
  int array[ARRAYSIZE] = {12,9,4,99,120,1,3,6};
  
  printf("Before the sort: \n");
  for(int i = 0; i < ARRAYSIZE; i++){
    printf("%d ", array[i]);
  }
  printf("\n");

  bubble_sort(array,ARRAYSIZE);

  printf("After the sort: \n");
  for(int i = 0; i < ARRAYSIZE; i++){
    printf("%d ", array[i]);
  }
  printf("\n");
  return 0;
}

// To declare an array in C, a programmer specifies the type of 
// the elements and the number of elements required by an array as follows:
// type arrayName [ arraySize ];

