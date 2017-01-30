//
//  Machine.m
//  Week1_Practice
//
//  Created by Won Suk Choi on 2017. 1. 20..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import "Machine.h"

@implementation Machine

-(id) produce:(Machine *)machine;
{
    NSLog(@"저는 오늘 %@를 추가해서 머신을 구매했습니다.", machine.cable);
    
    return nil;
}


@end
