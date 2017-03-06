//
//  ViewController.m
//  170221_Algorithm
//
//  Created by Won Suk Choi on 2017. 2. 21..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)calCommon:(NSInteger)num1
             num2:(NSInteger)num2
{
    NSInteger number;
    
    if (num1 > num2)  {
        number = num1;
        num1 = num2;
        num2 = number;
    }
    
    
    NSInteger gCommonDivisor;
    NSInteger lCommonMultiple;
    NSMutableArray numList;
    
    if (num2 % num1 == 0) {
        
        gCommonDivisor = num1;
    }
    else {
        
        for (NSInteger i = 1; i <= num1 || i <= num2; i++) {
            
            if (num1 % i == 0 && num2 % i == 0){
                
                [numList addObject:@"%ls", i];
                
            }
            

        }
    }
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
