//
//  main.m
//  0119_GameInheritance
//
//  Created by Won Suk Choi on 2017. 1. 19..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GameCharacter.h"
#import "Human.h"
#import "Orc.h"
#import "Person.h"
#import "Student.h"
#import "UniversityStudent.h"

@interface GameCharacter ()

@property NSString* name;
@property NSInteger hp;


@end


int main(int argc, const char * argv[]) {
    
    Human *h1 = [[Human alloc] init];
    h1.name = @"인간";
    h1.hp = 300;
    h1.mp = 100;
    h1.ap = 10;
    h1.def = 10;
    
    
    Orc *orc1 = [[Orc alloc] init];
    orc1.name = @"굴단";
    orc1.hp = 200;
    orc1.mp = 300;
    orc1.ap = 15;
    orc1.def = 5;
    
    [h1 jumpTo:orc1];
    [orc1 jumpTo:h1];
    
    UniversityStudent *me = [[UniversityStudent alloc] init];
    me.name = @"최원석";
    me.age = 28;
    me.grade = 3.5;
    me.major = @"국제학";
    
    [me study:me];
    [me goMT: me];
    
    
    return 0;
}
