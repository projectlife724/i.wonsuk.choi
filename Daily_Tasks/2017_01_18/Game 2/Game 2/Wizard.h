//
//  Wizard.h
//  Game
//
//  Created by Won Suk Choi on 2017. 1. 17..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Warrior;
@interface Wizard : NSObject

@property id health;
@property id mana;
@property id physicalPower;
@property id magicalPower;
@property id weapon;

- (id)physicalAttackTo: (id)someCharacter;
- (id)magicalAttack: (id)someCharacter;
- (id)warcry: (id)someCharacter;

@end
