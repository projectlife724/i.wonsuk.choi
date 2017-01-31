//
//  Calendar.h
//  170131_Review_01
//
//  Created by Won Suk Choi on 2017. 1. 31..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calendar : NSObject

@property NSUInteger month;

- (NSUInteger) lastDayOfMonth:(NSUInteger)month;


@end
