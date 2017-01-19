//
//  Student.m
//  0119_GameInheritance
//
//  Created by Won Suk Choi on 2017. 1. 19..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import "Student.h"

@implementation Student

- (void)study:(Student*)student;
{
    NSLog(@"%f를 받았습니다.", self.grade);
}


- (void)eat:(Student *)studentfood;
{
    NSLog(@"학생은 %@를 먹습니다.", studentfood.studentFoodName);
}

@end
