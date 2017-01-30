//
//  GPACalculator.h
//  0123_GPACalculator
//
//  Created by Won Suk Choi on 2017. 1. 23..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface GPACalculator : NSObject

@property NSString *name;
@property NSUInteger score;
@property NSString *tutorName;

- (NSUInteger) calSum:sum className:(GPACalculator *)score;
- (NSUInteger) calAverage:average;

@end
