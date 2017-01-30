//
//  ToolBox.h
//  ShapeSize_0123
//
//  Created by Won Suk Choi on 2017. 1. 23..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ToolBox : NSObject

+ (CGFloat) cmToInch:(CGFloat)cmNum;
+ (CGFloat) inchToCm:(CGFloat)cmInch;
+ (CGFloat) m2ToPyeong:(CGFloat)m2;
+ (CGFloat) pyeongToM2:(CGFloat)peyong;
+ (CGFloat) fahrenheitToCelsius:(CGFloat)fahrenheit;
+ (CGFloat) celsiusToFahrenheit:(CGFloat)celsius;

@end
