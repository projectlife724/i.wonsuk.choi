//
//  main.m
//  ShapeSize_0123
//
//  Created by Won Suk Choi on 2017. 1. 23..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Shape.h"
#import "ToolBox.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
   
        Shape *shape1 = [[Shape alloc] init];
        shape1.width = 5;
        shape1.length = 6;
        shape1.height = 7;
        
        NSLog(@"도형의 크기는 %lu입니다.", [shape1 volumeOfRectangular:shape1]);
        NSLog(@"직사각형의 넓이는 %lu입니다.", [shape1 areaOfRectangle:shape1]);
        
        [ToolBox cmToInch:30];
        [ToolBox inchToCm:50];
    }
    return 0;
}
