//
//  Machine.h
//  Week1_Practice
//
//  Created by Won Suk Choi on 2017. 1. 20..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Machine : NSObject

@property NSString *converter;
@property NSString *cable;


- (id)produce:(Machine*)machine;


@end
