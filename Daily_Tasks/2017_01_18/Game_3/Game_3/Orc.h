//
//  Orc.h
//  Game_3
//
//  Created by Won Suk Choi on 2017. 1. 18..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Human;

@interface Orc : NSObject

@property NSString *name;
@property NSInteger hp;
@property NSInteger mp;
@property NSInteger ap;
@property NSInteger def;

- (id)attackTo: (Human*)human;
- (id)spellTo: (Human*)human;

@end
