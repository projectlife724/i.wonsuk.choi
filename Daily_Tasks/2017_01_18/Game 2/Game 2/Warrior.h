//
//  Warrior.h
//  Game
//
//  Created by Won Suk Choi on 2017. 1. 17..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Wizard;

@interface Warrior : NSObject

@property NSUInteger health;
@property NSUInteger mana;
@property NSUInteger physicalPower;
@property NSUInteger magicalPower;
@property NSString *weapon;

- (id)physicalAttackTo: (Wizard *)someCharacter;
- (id)magicalAttack: (Wizard *)someCharacter;
- (id)frozenOrb: (Wizard *)someCharacter;

@end
