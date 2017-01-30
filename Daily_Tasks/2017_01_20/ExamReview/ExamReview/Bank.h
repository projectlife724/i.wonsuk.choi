//
//  Bank.h
//  ExamReview
//
//  Created by Won Suk Choi on 2017. 1. 20..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Bank : NSObject

@property NSString *bankName;
@property NSString *locaiton;



- (id) chnageLocation:(Bank *)lcation;

- (id) transferMoney:(Bank *)location;



@end
