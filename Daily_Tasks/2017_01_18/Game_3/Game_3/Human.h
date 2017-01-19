//
//  Human.h
//  Game_3
//
//  Created by Won Suk Choi on 2017. 1. 18..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Orc;

@interface Human : NSObject

@property NSString *name;
@property NSInteger hp;
@property NSInteger mp;
@property NSInteger ap;
@property NSInteger sp;
@property NSInteger def;

- (id)attackTo: (Orc*)orc;

- (id)spellTo: (Orc*)orc;

@end
