//
//  Calculation.m
//  170201_PracticeQuestionsEasy
//
//  Created by Won Suk Choi on 2017. 2. 1..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import "Calculation.h"

@implementation Calculation

- (NSUInteger) absoluteNum:(NSInteger)aNum
{
    if (aNum > 0)
    {
        printf("%ld", aNum);
        return aNum;
    }
    else
    {
        aNum = aNum * -1;
        printf("%ld", aNum);
        return aNum;
    }
}

- (NSInteger)calculOP:(NSString *)operation num1:(NSInteger)num1 num2:(NSInteger)num2
{
    if ([operation isEqualToString:@"+"])
    {
        NSInteger resultPlus = num1 + num2;
        NSLog(@"%ld", resultPlus);
        return resultPlus;
    }
    else
    {
        if (num1 > num2)
        {
            NSInteger temp1 = num1;
            num1 = num2;
            num2 = temp1;
            NSInteger resultMinus = num1 - num2;
            NSLog(@"%ld", resultMinus);
            return resultMinus;
        }
        else
        {
            NSInteger resultMinus = num1 - num2;
            NSLog(@"%ld", resultMinus);
            return resultMinus;
        }
    }
}
    
    
- (CGFloat)round3Num:(CGFloat)rNum
    {
        CGFloat overNum = rNum + 0.005;
        NSInteger cutNum = (NSInteger)overNum * 100;
        CGFloat roundedNum = (CGFloat)cutNum/100;
        
        NSLog(@"%f", roundedNum);
        
        return roundedNum;

    }

- (void)getMultiplicationTable:(NSUInteger)num;
{
    num = 1;
    NSUInteger count = 1;
    
    while (num < 10) {
        while (count < 10) {
            NSLog(@"%ld * %ld = %ld", num, count, num*count);
            count = count + 1;  //increment
            }
        count = 1;
        num = num + 1;
    }
}
    
@end
