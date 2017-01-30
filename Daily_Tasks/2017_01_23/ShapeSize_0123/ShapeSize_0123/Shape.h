//
//  Shape.h
//  ShapeSize_0123
//
//  Created by Won Suk Choi on 2017. 1. 23..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Shape : NSObject

@property NSUInteger width;
@property NSUInteger length;
@property NSUInteger height;
@property NSUInteger radius;
@property NSUInteger pie;

- (NSUInteger)areaOfSquare:(Shape *)sqaure;
- (NSUInteger)perimeterOfSquare:(Shape *)square;
- (NSUInteger)areaOfRectangle:(Shape *)rectangle;
- (NSUInteger)areaOfCircle:(Shape *)circle;
- (NSUInteger)areaOfTrapezoid:(Shape *)trapezoid
                    upperBase:(NSUInteger)upperBase
                    lowerBase:(NSUInteger)lowerBase;
- (NSUInteger)volumeOfCube:(Shape *)cube;
- (NSUInteger)volumeOfRectangular:(Shape *)rectangular;
- (NSUInteger)volumeOfCylinder:(Shape *)cylinder;
- (NSUInteger)volumeOfShpere: (Shape *)sphere;
- (NSUInteger)volumOfCone:(Shape *)cone;

@end
