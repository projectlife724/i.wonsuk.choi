//
//  TriangularNumber.m
//  170201_PracticeExamWhileFor
//
//  Created by Won Suk Choi on 2017. 2. 1..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import "TriangularNumber.h"

@implementation TriangularNumber



-(NSUInteger)triangularNumberWhile:(NSUInteger)num;
{
    NSUInteger countWhile = 1;
    NSUInteger numWhile = 0;
    while (countWhile <= num) {
        numWhile += countWhile;
        countWhile += 1;
    }
    NSLog(@"%ld", numWhile);
    return numWhile;
}

-(NSUInteger)triangularNumberFor:(NSUInteger)num;
{
    
    NSUInteger numFor = 0;
    for (NSUInteger countFor = 1; countFor <= num; countFor++) {
        numFor += countFor ;
    }
    NSLog(@"%ld", numFor);
    return numFor;
}

@end
