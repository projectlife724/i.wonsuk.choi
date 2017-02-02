//
//  Multiplication.m
//  170201_PracticeWhileForStatement
//
//  Created by Won Suk Choi on 2017. 2. 1..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import "Multiplication.h"

@implementation Multiplication

- (NSString *) findMultipleNum:(NSUInteger)multipleNum
                maxLange:(NSUInteger)maxNum;
{
    NSUInteger num = 1;
    
    NSString *additionStr = @"";  //
    
    while (num <= maxNum)
    {
        NSUInteger resultNum = num % multipleNum;
        
        if (resultNum == 0) {
            
            NSString *formatterStr = [NSString stringWithFormat:@"%ld ", num];
            additionStr = [additionStr stringByAppendingString:formatterStr];
            
            
        }
        num = num + 1;
    
    }
    NSLog(@"%@", additionStr);
    return additionStr;
}

@end
