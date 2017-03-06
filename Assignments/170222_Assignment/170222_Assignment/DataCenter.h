//
//  DataCenter.h
//  170222_Assignment
//
//  Created by Won Suk Choi on 2017. 2. 23..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataCenter : NSObject

+ (instancetype)sharedInstance;

@property NSDictionary *settings;
@property BOOL swOnOff;


-(void)setSettingsData;



@end
