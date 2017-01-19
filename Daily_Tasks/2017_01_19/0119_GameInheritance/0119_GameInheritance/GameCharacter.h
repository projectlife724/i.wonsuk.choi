//
//  GameCharacter.h
//  0119_GameInheritance
//
//  Created by Won Suk Choi on 2017. 1. 19..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GameCharacter : NSObject

@property (readonly) NSString *name;
@property (readonly) NSInteger hp;
@property NSInteger mp;
@property NSInteger ap;
@property NSInteger sp;
@property NSInteger def;

- (void)jumpTo:(GameCharacter*)character;

@end
