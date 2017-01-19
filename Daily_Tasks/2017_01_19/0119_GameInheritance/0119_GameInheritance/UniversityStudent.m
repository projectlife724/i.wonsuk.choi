//
//  UniversityStudent.m
//  0119_GameInheritance
//
//  Created by Won Suk Choi on 2017. 1. 19..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import "UniversityStudent.h"

@implementation UniversityStudent

- (void)goMT: (UniversityStudent*)uStudent;
{
    NSLog(@"저 대학생은 %@를 전공으로 공부하고 있다.", uStudent.major);
}

@end
