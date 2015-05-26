//Program that brings all nonzero elements to the left of the array & returns the number of nonzero elements.

#import <Foundation/Foundation.h>

NSUInteger removeZeros(NSMutableArray *numberArray){
  
  NSUInteger leftIndex = 0;
  NSUInteger rightIndex = numberArray.count-1;
  
  while (leftIndex <= rightIndex) {
    
    if([numberArray[leftIndex] integerValue] != 0){
      leftIndex++;
    }
    else if ([numberArray[rightIndex] integerValue] == 0){
      rightIndex--;
    }
    else {
      [numberArray replaceObjectAtIndex:leftIndex withObject:numberArray[rightIndex]];
      leftIndex++;
      rightIndex--;
    }
    
  }
  
  return leftIndex;
}

int main(int argc, const char *argv[]){
  @autoreleasepool {
    
    NSMutableArray *numberArray = [[NSMutableArray alloc] initWithArray:@[@1,@0,@0,@4,@0,@5,@9,@2,@0,@6,@0,@0]];
    NSUInteger numNonZeroElements = removeZeros(numberArray);
    NSLog(@"Array: %@, number of non-zero elements: %lu",numberArray, (unsigned long)numNonZeroElements);
    
  }
  
  return 0;
}