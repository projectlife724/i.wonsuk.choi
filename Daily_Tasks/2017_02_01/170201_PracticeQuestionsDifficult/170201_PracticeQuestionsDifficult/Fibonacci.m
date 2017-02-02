//
//  Fibonacci.m
//  170201_PracticeQuestionsDifficult
//
//  Created by Won Suk Choi on 2017. 2. 1..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import "Fibonacci.h"

@implementation Fibonacci

-(void)fibonacci:(NSUInteger)num;
{   NSUInteger num1 = 0;
    NSUInteger num2 = 1;
    NSUInteger num3 = 0;
    NSString *fibonacciStr = @"";
    
    for (NSUInteger numeral = 0; numeral <= num; numeral++) {
        
        if (numeral == 0) {
            NSString *beforeStr = [NSString stringWithFormat:@"%ld, ", num1];
            fibonacciStr = [fibonacciStr stringByAppendingString:beforeStr];
            
            NSString *middleStr = [NSString stringWithFormat:@"%ld, ", num2];
            fibonacciStr = [fibonacciStr stringByAppendingString:middleStr];
        }
        
        num3 = num1 + num2;
        
        NSString *afterStr = [NSString stringWithFormat:@"%ld, ", num3];
        fibonacciStr = [fibonacciStr stringByAppendingString:afterStr];
            
        num1 = num2;
        num2 = num3;
    }
    NSLog(@"%@", fibonacciStr);
}

@end
