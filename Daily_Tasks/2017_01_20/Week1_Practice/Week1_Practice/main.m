//
//  main.m
//  Week1_Practice
//
//  Created by Won Suk Choi on 2017. 1. 20..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Machine.h"


int main(int argc, const char * argv[]) {
    
    Machine *siemens = [[Machine alloc] init];
    siemens.converter = @"변환기";
    siemens.cable = @"케이블";
    
    return 0;

}
