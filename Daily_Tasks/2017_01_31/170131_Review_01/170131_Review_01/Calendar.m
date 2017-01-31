//
//  Calendar.m
//  170131_Review_01
//
//  Created by Won Suk Choi on 2017. 1. 31..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import "Calendar.h"

@implementation Calendar

- (NSUInteger) lastDayOfMonth:(NSUInteger)month
{
    NSUInteger evenMonth = 30;
    NSUInteger oddMonth = 31;
    
    switch (month) {
        case 1:
            NSLog(@"%lu월의 마지막 날은 %lu일입니다.", month, oddMonth);
            break;
        case 2:
            NSLog(@"%lu월의 마지막 날은 %lu일입니다.", month, evenMonth);
            break;
        case 3:
            NSLog(@"%lu월의 마지막 날은 %lu일입니다.", month, oddMonth);
            break;
        case 4:
            NSLog(@"%lu월의 마지막 날은 %lu일입니다.", month, evenMonth);
            break;
        case 5:
            NSLog(@"%lu월의 마지막 날은 %lu일입니다.", month, oddMonth);
            break;
        case 6:
            NSLog(@"%lu월의 마지막 날은 %lu일입니다.", month, evenMonth);
            break;
        case 7:
            NSLog(@"%lu월의 마지막 날은 %lu일입니다.", month, oddMonth);
            break;
        case 8:
            NSLog(@"%lu월의 마지막 날은 %lu일입니다.", month, oddMonth);
            break;
        case 9:
            NSLog(@"%lu월의 마지막 날은 %lu일입니다.", month, oddMonth);
            break;
        case 10:
            NSLog(@"%lu월의 마지막 날은 %lu일입니다.", month, evenMonth);
            break;
        case 11:
            NSLog(@"%lu월의 마지막 날은 %lu일입니다.", month, oddMonth);
            break;
        case 12:
            NSLog(@"%lu월의 마지막 날은 %lu일입니다.", month, evenMonth);
            break;
            
        default:
            break;
    }return oddMonth||evenMonth;
}

@end
