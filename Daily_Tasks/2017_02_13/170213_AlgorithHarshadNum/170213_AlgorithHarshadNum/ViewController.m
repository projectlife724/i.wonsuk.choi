//
//  ViewController.m
//  170213_AlgorithHarshadNum
//
//  Created by Won Suk Choi on 2017. 2. 13..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
    
    [self harshadNum:@"1456"];
}

-(void)harshadNum:(NSString *)num
{
    NSMutableArray *myString = [[NSMutableArray alloc] initWithCapacity:[num length]];
    
    NSUInteger num1 = 0;
    
    for (NSInteger i = 0; i < [num length]; i++) {
        NSString *charString = [num substringWithRange:NSMakeRange(i, 1)];
        [myString addObject:charString];
    }
    
    for (NSInteger i = 0; i < [myString count]; i++) {
        num1 = num1 + [[myString objectAtIndex:i] integerValue];
        
    }
    
    if ([num integerValue]%num1 == 0) {
        NSLog(@"Harshad Number!");
    }
    else{
        NSLog(@"Not a Harshad Number!");
    }
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
