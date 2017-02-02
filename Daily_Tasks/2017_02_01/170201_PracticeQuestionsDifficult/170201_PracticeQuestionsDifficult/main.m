//
//  main.m
//  170201_PracticeQuestionsDifficult
//
//  Created by Won Suk Choi on 2017. 2. 1..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fibonacci.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        Fibonacci *fibon = [[Fibonacci alloc] init];
        [fibon fibonacci:5];
        
    }
    return 0;
}
