//
//  main.m
//  0123_GPACalculator
//
//  Created by Won Suk Choi on 2017. 1. 23..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GPACalculator.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
        GPACalculator *python = [[GPACalculator alloc] init];
        python.name = @"Python";
        python.score = 90;
        python.tutorName = @"김 교수님";
        
      
    }
    return 0;
}
