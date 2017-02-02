//
//  Factorial.m
//  170201_PracticeExamWhileFor
//
//  Created by Won Suk Choi on 2017. 2. 1..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import "Factorial.h"

@implementation Factorial

-(void)factorialWhile:(NSUInteger)num;
{
    NSUInteger i = 1;
    NSUInteger result = 1;
    while (i <= num) {
        result *= i;
        i += 1;
    }
    NSLog(@"%lu", result);
}


-(void)factorialFor:(NSUInteger)num;
{
    NSUInteger result = 1;
    for (NSUInteger i = 1; i <= num; i++) {
        result *= i;
    }
    NSLog(@"%lu", result);
}

@end
