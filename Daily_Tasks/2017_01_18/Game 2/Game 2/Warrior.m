//
//  Warrior.m
//  Game
//
//  Created by Won Suk Choi on 2017. 1. 17..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import "Warrior.h"
#import "Wizard.h"

@implementation Warrior

- (void)physicalAttackTo:(Wizard *)someCharacter
{
    NSInteger leftHP = (wizard*)health - self.physicalPower;
}

- (void)magicalAttack {
    NSLog(@"마법공격을 사용합니다");
}

@end
