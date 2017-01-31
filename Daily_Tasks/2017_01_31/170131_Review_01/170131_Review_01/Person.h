//
//  Person.h
//  170131_Review_01
//
//  Created by Won Suk Choi on 2017. 1. 31..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property NSString *name;
@property NSUInteger age;
@property NSString *job;
@property NSString *birthDay;

- (instancetype)initWithName:(NSString *)name;
- (void)aboutJob:(NSString *)job;
- (bool)whenIsBirthDay:(NSString *)birthDay;

@end
