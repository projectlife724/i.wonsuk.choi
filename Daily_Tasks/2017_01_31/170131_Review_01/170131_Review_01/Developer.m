//
//  Developer.m
//  170131_Review_01
//
//  Created by Won Suk Choi on 2017. 1. 31..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import "Developer.h"

@implementation Developer

- (instancetype)initWithName:(NSString *)name
                         age:(NSUInteger)age
                         job:(NSString *)job;
{
    self = [super init];
    
    if (self) {
    
        name = @"최우석";
        age = 18;
        job = @"학생";
        
        self.name = name;
        self.age = age;
        self.job = job;

    }
    NSLog(@"나는 실제로 %@이고 나이는 %lu살이다.", self.name, self.age);
    
    return self;
}
@end
