//
//  DataCenter.h
//  170224_LogInPageDataCenter
//
//  Created by Won Suk Choi on 2017. 2. 24..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataCenter : NSObject


@property NSString *iD;
@property NSString *pW;

+ (instancetype)sharedInstance;


@end
