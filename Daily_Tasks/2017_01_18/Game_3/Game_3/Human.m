//
//  Human.m
//  Game_3
//
//  Created by Won Suk Choi on 2017. 1. 18..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import "Human.h"
#import "Orc.h"

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

@end
