//
//  Person.m
//  0119_GameInheritance
//
//  Created by Won Suk Choi on 2017. 1. 19..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void) eat:(Person*)food;
{
    NSLog(@"%@를 먹습니다.", food.name);
}

@end
