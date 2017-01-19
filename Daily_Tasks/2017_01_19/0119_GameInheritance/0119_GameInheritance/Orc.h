//
//  Orc.h
//  Game_3
//
//  Created by Won Suk Choi on 2017. 1. 18..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GameCharacter.h"

@class Human;

@interface Orc : GameCharacter


- (id)attackTo: (Human*)human;
- (id)spellTo: (Human*)human;

@end
