//
//  MultiplicationFor.m
//  170201_PracticeWhileForStatement
//
//  Created by Won Suk Choi on 2017. 2. 1..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import "MultiplicationFor.h"

@implementation MultiplicationFor

-(void)multiplication:(NSUInteger)num
{
    for (NSInteger i = 1; i <= 9; i++) {
        for (NSInteger j = 1; j <= 9; j++) {
            NSLog(@"%ld * %ld = %ld", i, j, i*j);
            
        }
    }
}

//예제: 팩토리얼
-(void)factorial:(NSUInteger)num
{
    NSUInteger result = 1;
    
    for (NSUInteger i = 1; i < num; i++){
        result = result * (i +1);
        
    }
    NSLog(@"%ld", result);
    
    
}

@end
