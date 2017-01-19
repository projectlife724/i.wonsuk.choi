//
//  Student.h
//  0119_GameInheritance
//
//  Created by Won Suk Choi on 2017. 1. 19..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@interface Student : Person

@property CGFloat grade;
@property NSString* studentFoodName;

- (void)study:(Student*)student;

- (void)eat:(Student*)studentfood;

@end
