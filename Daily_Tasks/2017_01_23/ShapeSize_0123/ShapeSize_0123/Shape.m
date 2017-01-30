//
//  Shape.m
//  ShapeSize_0123
//
//  Created by Won Suk Choi on 2017. 1. 23..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import "Shape.h"

@implementation Shape

- (NSUInteger)areaOfSquare:(Shape *)square;
{
    return square.width * square.length;
}


- (NSUInteger)perimeterOfSquare:(Shape *)square;
{
    return square.width * 4;
}


- (NSUInteger)areaOfRectangle: (Shape *)rectangle;
{
    NSUInteger areaRectangle = rectangle.width * rectangle.length;
    
    return areaRectangle;
}


- (NSUInteger)areaOfCircle:(Shape *)circle;
{
    return circle.radius * circle.radius * circle.pie ;
}


- (NSUInteger)areaOfTrapezoid:(Shape *)trapezoid
                    upperBase:(NSUInteger)upperBase
                    lowerBase:(NSUInteger)lowerBase
{
    return trapezoid.height * (upperBase + lowerBase);
}


- (NSUInteger)volumeOfCube:(Shape *)cube;
{
    return cube.width * 4;
}


- (NSUInteger)volumeOfRectangular:(Shape *)rectangular;

{
    return rectangular.width * rectangular.length * rectangular.height;
}


- (NSUInteger)volumeOfCylinder:(Shape *)cylinder;
{
    return cylinder.height * [self areaOfCircle:cylinder];
}

- (NSUInteger)volumeOfShpere: (Shape *)sphere;
{
    return [self areaOfCircle:sphere] * sphere.radius * 4 / 3;
}

- (NSUInteger)volumOfCone:(Shape *)cone;
{
    return [self volumeOfCylinder:cone] /3;
}

@end
