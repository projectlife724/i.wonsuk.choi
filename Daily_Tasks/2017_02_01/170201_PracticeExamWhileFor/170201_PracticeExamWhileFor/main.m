//
//  main.m
//  170201_PracticeExamWhileFor
//
//  Created by Won Suk Choi on 2017. 2. 1..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TriangularNumber.h"
#import "Multiplication.h"
#import "Factorial.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        TriangularNumber *tNum = [[TriangularNumber alloc] init];
        [tNum triangularNumberWhile:10];
        [tNum triangularNumberFor:10];
        
        Multiplication *mNum = [[Multiplication alloc] init];
        [mNum multiplicationWhile:9];
        [mNum multiplicationFor:9];
        
        Factorial *fNum = [[Factorial alloc] init];
        [fNum factorialWhile:6];
        [fNum factorialFor:6];
        
    }
    return 0;
}
