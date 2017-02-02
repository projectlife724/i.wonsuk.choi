//
//  Calculation.h
//  170201_PracticeQuestionsEasy
//
//  Created by Won Suk Choi on 2017. 2. 1..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculation : NSObject

- (NSUInteger) absoluteNum:(NSInteger)aNum;

- (NSInteger)calculOP:(NSString *)operation num1:(NSInteger)num1 num2:(NSInteger)num2;

- (CGFloat) round3Num: (CGFloat)rNum;

- (void) getMultiplicationTable:(NSUInteger)num;


@end
