//
//  Wizard.m
//  Game
//
//  Created by Won Suk Choi on 2017. 1. 17..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import "Wizard.h"
@class Warrior;
@implementation Wizard

- (void)physicalAttackTo:(Warrior *)someCharacter
{
    NSLog(@"물리공격을 사용합니다.");
}

- (id)magicalAttack {
    NSLog(@"마법공격을 사용합니다.");
    return nil;
}

@end
