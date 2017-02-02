//
//  TriangularStar.m
//  170202_ReviewForWhile
//
//  Created by Won Suk Choi on 2017. 2. 2..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import "TriangularStar.h"

@implementation TriangularStar

-(void)triangularStar:(NSUInteger)num;
{
    NSString *triStar = @"";
    for (NSUInteger oneStar = 1; oneStar <= num; oneStar++) {
        NSString *add1Star = @"*";
        NSString *addOneStar = [NSString stringWithFormat:@"%@", add1Star];
        triStar = [triStar stringByAppendingString:addOneStar];
    
        for (NSUInteger count = 1; count < oneStar; count++) {
            NSString *add2star = @"*";
            NSString *addOneStar = [NSString stringWithFormat:@"%@", add2star];
            triStar = [triStar stringByAppendingString:addOneStar];
        

        }
    NSString *indent = [NSString stringWithFormat:@"\n"];
    triStar = [triStar stringByAppendingString:indent];
        
    }
    NSLog(@"%@", triStar);
}

-(void)triangularStarReverse:(NSUInteger)num
{
    NSString *triStar = @"";
    for (NSUInteger oneStar = num; oneStar > 0; oneStar--) {
        NSString *add1Star = @"*";
        NSString *addOneStar = [NSString stringWithFormat:@"%@", add1Star];
        triStar = [triStar stringByAppendingString:addOneStar];
        
        for (NSUInteger count = oneStar - 1; count  oneStar; count++) {
            NSString *add2star = @"*";
            NSString *addOneStar = [NSString stringWithFormat:@"%@", add2star];
            triStar = [triStar stringByAppendingString:addOneStar];
            
            
        }
        NSString *indent = [NSString stringWithFormat:@"\n"];
        triStar = [triStar stringByAppendingString:indent];
        
    }
    NSLog(@"%@", triStar);
    
}

@end
