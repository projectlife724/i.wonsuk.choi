//
//  GameCharacter.m
//  0119_GameInheritance
//
//  Created by Won Suk Choi on 2017. 1. 19..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import "GameCharacter.h"

@interface GameCharacter ();

@property NSString *name;
@property NSInteger hp;

@end

@implementation GameCharacter

- (void)jumpTo:(GameCharacter*)character;
{
    NSLog(@"%@에게로 점프합니다.", character.name);
}


@end
