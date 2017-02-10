//
//  ViewController.m
//  170210_Algorithm
//
//  Created by Won Suk Choi on 2017. 2. 10..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property NSArray *letter;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self middleLetter:@[@"K", @"O", @"R", @"E", @"A", @"N"]];
    // Do any additional setup after loading the view, typically from a nib.
    
    UITextField *textField = [[UITextField alloc] initWithFrame:CGRectMake(self.view.center.x - 80, 80, 160, 20)];
    [self.view addSubview:textField];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(self.view.center.x - 80, 120, 160, 20)];
    [self.view addSubview:label];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

    // First Attempt

-(void)middleLetter:(NSArray *)letter
{
        if ([letter count]%2 == 0) {
            NSLog(@"%@, %@", [letter objectAtIndex:[letter count]/2 - 1], [letter objectAtIndex:[letter count]/2]);
        }
        else {
            NSLog(@"%@", [letter objectAtIndex:[letter count]/2]);
        }
    
}



// for (i = 0, i < [letter count], i++)

    // Second Attempt



@end
