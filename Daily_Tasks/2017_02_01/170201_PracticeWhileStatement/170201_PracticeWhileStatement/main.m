//
//  main.m
//  170201_PracticeWhileStatement
//
//  Created by Won Suk Choi on 2017. 2. 1..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Multiplication.h"
#import "MultiplicationFor.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Multiplication *multi = [[Multiplication alloc] init];
        [multi findMultipleNum:4 maxLange:20];
        
        MultiplicationFor *multiFor = [[MultiplicationFor alloc] init];
        [multiFor multiplication:18];
        [multiFor factorial:5];
    }
    return 0;
}
