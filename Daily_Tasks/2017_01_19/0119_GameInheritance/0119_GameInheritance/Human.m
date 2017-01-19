//
//  Human.m
//  Game_3
//
//  Created by Won Suk Choi on 2017. 1. 18..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import "Human.h"
#import "Orc.h"

@interface GameCharacter ()

@property (readwrite) NSString* name;


@end
@implementation Human

- (id)attackTo:(Orc *)orc
{
   NSInteger leftHP = orc.hp - self.ap;
    NSLog(@"오크는 %ld만큼 목숨이 남았습니다", (long)leftHP);
    return nil;
    
}

- (id)spellTo: (Orc*)orc
{
    NSInteger leftHP = orc.hp - self.sp;
    NSLog(@"오크는 %ld만큼 목숨이 남았습니다", (long)leftHP);
    return nil;
}

- (void)jumpTo:(GameCharacter *)character
{
    NSLog(@"높이 뛰어서 %@에게 점프를 합니다.", character.name);
}
@end
