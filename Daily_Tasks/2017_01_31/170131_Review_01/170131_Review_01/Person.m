//
//  Person.m
//  170131_Review_01
//
//  Created by Won Suk Choi on 2017. 1. 31..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import "Person.h"

@implementation Person

- (instancetype)initWithName:(NSString *)name;
{
    self = [super init];
    if (self)
        self.name = name;
    
    return self;
}

- (void)aboutJob:(NSString *)job;
{
    self.job = job;
    
}

- (bool)whenIsBirthDay:(NSString *)birthDay;
{
    NSString *currentDate = @"2017.01.31";
    
    NSArray *tempList = [currentDate componentsSeparatedByString: @"."];
    NSUInteger year = [[tempList objectAtIndex:0] integerValue];
    NSUInteger month = [[tempList objectAtIndex:1] integerValue];
    NSUInteger day = [[tempList objectAtIndex:2] integerValue];
    
    NSUInteger myYear = [self.birthDay integerValue];
    NSUInteger myMonth = [self.birthDay integerValue];
    NSUInteger myDay = [self.birthDay integerValue];
    
    if (year == myYear && month == myMonth && day == myDay)
    {
        NSLog(@"오늘은 당신의 생일이 맞습니다.");
        return YES;
    }
    else
    {
        NSLog(@"오늘은 당신의 생일이 아닙니다");
        return NO;
    }

}
@end
