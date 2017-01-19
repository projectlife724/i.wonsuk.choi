//
//  main.m
//  Game_3
//
//  Created by Won Suk Choi on 2017. 1. 18..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Human.h"
#import "Orc.h"

int main(int argc, const char * argv[]) {

    Human *h1 = [[Human alloc] init];
    h1.name = @"인간";
    h1.hp = 300;
    h1.mp = 100;
    h1.ap = 10;
    h1.def = 10;
    
    
    Orc *o1 = [[Orc alloc] init];
    o1.name = @"굴단";
    o1.hp = 200;
    o1.mp = 300;
    o1.ap = 15;
    o1.def = 5;
    
    
    
    return 0;
}
