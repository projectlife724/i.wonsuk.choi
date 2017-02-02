//
//  main.m
//  170202_ReviewForWhile
//
//  Created by Won Suk Choi on 2017. 2. 2..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TriangularStar.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        TriangularStar *tStar = [[TriangularStar alloc] init];
  //      [tStar triangularStar:5];
        [tStar triangularStarReverse:5];
    }
    return 0;
}
