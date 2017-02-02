//
//  main.m
//  170201_PracticeQuestionsEasy
//
//  Created by Won Suk Choi on 2017. 2. 1..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Calculation.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Calculation *calculator = [[Calculation alloc] init];
        
        
        [calculator calculOP:@"+" num1:32 num2:36];
        [calculator getMultiplicationTable:13];
    }
    return 0;
}
