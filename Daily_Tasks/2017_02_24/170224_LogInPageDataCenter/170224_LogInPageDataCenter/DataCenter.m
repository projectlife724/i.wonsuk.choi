//
//  DataCenter.m
//  170224_LogInPageDataCenter
//
//  Created by Won Suk Choi on 2017. 2. 24..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import "DataCenter.h"

@interface DataCenter ()

@property NSDictionary *LogInData;


@end

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
        [self setLogInData];
    }
    return self;
}


-(void)setLogInData
{
    self.iD = @"1";
    self.pW = @"1";
}











@end
