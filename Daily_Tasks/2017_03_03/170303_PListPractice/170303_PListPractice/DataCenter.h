//
//  DataCenter.h
//  170303_PListPractice
//
//  Created by Won Suk Choi on 2017. 3. 3..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataCenter : NSObject

@property NSArray *friends;
@property NSDictionary *info;

+ (instancetype)defaultData;
- (void)setFriendsData;
- (void)setDocument;

- (void)saveDic:(NSMutableDictionary *)mDic;


@end
