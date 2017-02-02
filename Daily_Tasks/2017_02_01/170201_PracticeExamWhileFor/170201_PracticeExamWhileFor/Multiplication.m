//
//  Multiplication.m
//  170201_PracticeExamWhileFor
//
//  Created by Won Suk Choi on 2017. 2. 1..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import "Multiplication.h"

@implementation Multiplication


-(void)multiplicationWhile:(NSUInteger)num
{
    NSUInteger countFront = 1;
    NSUInteger countBack = 1;
    while (countFront <= num) {
        while (countBack <= num) {
            NSLog(@"%lu * %lu = %lu", countFront, countBack, countFront * countBack);
            countBack += 1;
        
        }
        countBack = 1;
        countFront += 1;
    }
}

-(void)multiplicationFor:(NSUInteger)num
{
    
    for (NSUInteger countFront = 1; countFront <= num; countFront++) {
//        NSUInteger countBack = 1;
        for (NSUInteger countBack = 1; countBack <= num; countBack++) {
            NSLog(@"%lu * %lu = %lu", countFront, countBack, countFront * countBack);
        }
       // countBack = 1;
    }
}

@end
