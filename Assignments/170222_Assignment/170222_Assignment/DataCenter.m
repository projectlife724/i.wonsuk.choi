//
//  DataCenter.m
//  170222_Assignment
//
//  Created by Won Suk Choi on 2017. 2. 23..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import "DataCenter.h"


@implementation DataCenter



+ (instancetype)sharedInstance
{
    static DataCenter *dataCenter;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        dataCenter = [[DataCenter alloc] init];
    });
    
    return dataCenter;
}


- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setSettingsData];
    }
    return self;
}


-(void)setSettingsData
{
    self.settings = @{@"generalSetting" : @[@"My profile", @"Account Settings", @"Smart Nofifications"],
                      @"originalSolution" : @[@"Original resolution photo upload"],
                      @"privateAccount" : @[@"Private account"],
                      @"appSettings" : @[@"Distance units", @"Temperature", @"Sync images over 3/4G"],
                      @"feedBack" : @[@"Common Questions", @"Send Us Feedback", @"About PolarSteps"]};
                      
}




@end
