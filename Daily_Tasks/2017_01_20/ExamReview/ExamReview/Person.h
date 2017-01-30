//
//  Person.h
//  ExamReview
//
//  Created by Won Suk Choi on 2017. 1. 20..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Bank.h"

@interface Person : NSObject

@property NSString *name;
@property NSInteger asset;


- (id) saveMoneyInBank:(Person *)money;

- (id) checkMoneyInBank:(Person *)stustus;

