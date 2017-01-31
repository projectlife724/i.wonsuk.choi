//
//  GpaConversion.m
//  0124_GpaConversion
//
//  Created by Won Suk Choi on 2017. 1. 24..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import "GpaConversion.h"

@implementation GpaConversion

- (NSString *)scoreConversion:(NSInteger)score;
{
    NSString *scoreConvers = 0;
    if (score >= 95)
    {
        scoreConvers = @"A+";
    }
    else if (score<95 && score>=90)
    {
        scoreConvers = @"A";
    }
    else if (score<90 && score >=85)
    {
        scoreConvers = @"B+";
    }
    else if (score<85 && score>=80)
    {
        scoreConvers = @"B";
    }
    else if (score<80 && score>=75)
    {
        scoreConvers = @"C+";
    }
    else if (score<75 && score>=70)
    {
        scoreConvers = @"C";
    }
    else if (score<70 && score >=60)
    {
        scoreConvers = @"D";
    }
    else
    {
        scoreConvers = @"F";
    }
}
@end
