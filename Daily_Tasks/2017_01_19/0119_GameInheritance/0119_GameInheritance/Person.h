//
//  Person.h
//  0119_GameInheritance
//
//  Created by Won Suk Choi on 2017. 1. 19..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property NSString* name;
@property NSInteger age;

- (void)eat:(Person*)food;


@end
