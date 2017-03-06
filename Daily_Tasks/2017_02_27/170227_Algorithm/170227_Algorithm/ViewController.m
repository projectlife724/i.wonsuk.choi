//
//  ViewController.m
//  170227_Algorithm
//
//  Created by Won Suk Choi on 2017. 2. 27..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property NSMutableArray *numArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
}




- (void)primeNum:(NSInteger)num
{
    for (NSInteger i = 2; i <= num; i++) {
        
        for (NSInteger n = 2; n <= i; n++)  {
            
            NSInteger num1 = i / n;
            
            
            
            if () {
                <#statements#>
            }
        }
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
