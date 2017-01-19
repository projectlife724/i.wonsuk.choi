//
//  Human.h
//  Game_3
//
//  Created by Won Suk Choi on 2017. 1. 18..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GameCharacter.h"

@class Orc;

@interface Human : GameCharacter


- (id)attackTo: (Orc*)orc;

- (id)spellTo: (Orc*)orc;

@end
