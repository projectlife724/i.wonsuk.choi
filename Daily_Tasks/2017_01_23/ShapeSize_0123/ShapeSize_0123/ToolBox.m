//
//  ToolBox.m
//  ShapeSize_0123
//
//  Created by Won Suk Choi on 2017. 1. 23..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import "ToolBox.h"

@implementation ToolBox

+ (CGFloat) cmToInch:(CGFloat)cmNum
{
    CGFloat inchNum = 2.54 * cmNum;
    NSLog(@"%.2fcm는 %.2finch입니다.", cmNum, inchNum);
    
    return inchNum;
}

+ (CGFloat) inchToCm:(CGFloat)cmInch
{
    CGFloat cmNum = 0.393701 * cmInch;
    NSLog(@"%.2finch는 %.2fcm입니다.", cmInch, cmNum);
    
    return cmNum;
}

+ (CGFloat) m2ToPyeong:(CGFloat)m2
{
    CGFloat pyeong = 3.305 * m2;
    NSLog(@"%.2f제곱미터는 %.2f평입니다.", m2, pyeong);
    
    return pyeong;
}


+ (CGFloat) pyeongToM2:(CGFloat)pyeong
{
    CGFloat m2 = 0.3025 * pyeong;
    NSLog(@"%.2f평은 %.2f제곱미터입니다.", pyeong, m2);
    
    return m2;
}


+ (CGFloat) fahrenheitToCelsius:(CGFloat)fahrenheit;
{
    CGFloat celsius = (fahrenheit - 32) / 1.8;
    NSLog(@"화씨 %.2f도는 섭씨 %.2f도 입니다.", fahrenheit, celsius);
    
    return celsius;
}
+ (CGFloat) celsiusToFahrenheit:(CGFloat)celsius;
{
    CGFloat fahrenheit = (1.8* celsius) + 32;
    NSLog(@"섭씨 %.2f도는 화씨 %.2f도 입니다.", celsius, fahrenheit);
    
    return fahrenheit;
}



@end
