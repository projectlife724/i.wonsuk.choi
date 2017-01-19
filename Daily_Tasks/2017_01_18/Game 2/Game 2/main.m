//
//  main.m
//  Game 2
//
//  Created by Won Suk Choi on 2017. 1. 18..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Warrior.h"
#import "Wizard.h"

int main(int argc, const char * argv[]) {
    
    
    Person *me = [[Person alloc] init];
    me.name = @"wonsuk";
    [me eat];
    [me laugh];
    
    Person *girlfriend = [[Person alloc] init];
    girlfriend.name = @"eunsol";
    
    Warrior *warrior = [[Warrior alloc] init];
    warrior.health = @100;
    warrior.mana = @100;
    warrior.physicalPower = @800;
    warrior.magicalPower = @470;
    [warrior physicalAttackTo:<#(Wizard *)#>:
    [warrior magicalAttack];
    
    Warrior *monk = [[Warrior alloc] init];
    monk.health = @ 130;
    monk.mana = @ 70;
    monk.physicalPower = @ 300;
    monk.magicalPower = @ 140;
    [monk physicalAttack];
    [monk magicalAttack];
    
    Wizard *wizard = [[Wizard alloc] init];
    Wizard.health = @60;
    wizard.mana = @150;
    wizard.physicalPower = @50;
    wizard.magicalPower = @200;
    [wizard physicalAttack];
    [wizard magicalAttack];
    
    Wizard *necromancer = [[Wizard alloc] init];
    necromancer.health = @80;
    [necromancer physicalAttack];
    [necromancer magicalAttack];
    
    NSLog(@"My name is %@", me.name);
    NSLog(@"팔라딘의 매직데미지는 %@입니다.", paladin.magicalPower);
    return 0;
}
