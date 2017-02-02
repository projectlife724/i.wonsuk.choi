//
//  ViewController.m
//  170202_UIFoundation
//
//  Created by Won Suk Choi on 2017. 2. 2..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // Lowest Layer View
    UIView *puzzleView = [[UIView alloc] initWithFrame:CGRectMake(15, 15, self.view.frame.size.width - 30, self.view.frame.size.height - 30)];
    [puzzleView setBackgroundColor: [UIColor blueColor]];
    [puzzleView setAlpha: 0.5];
    [self.view addSubview:puzzleView];
    
    
    // Middle View
    UIView *secondView = [[UIView alloc] initWithFrame:CGRectMake(15, 15, puzzleView.frame.size.width - 30, puzzleView.frame.size.height - 30)];
    [secondView setBackgroundColor:[UIColor greenColor]];
    [secondView setAlpha:0.7];
    [puzzleView addSubview:secondView];
    
    
    // Front View 
    UIView *thirdView = [[UIView alloc] initWithFrame:CGRectMake(15, 15, secondView.frame.size.width - 30, secondView.frame.size.height - 30)];
    [thirdView setBackgroundColor:[UIColor redColor]];
    [thirdView setAlpha:0.9];
    [secondView addSubview:thirdView];
    
    
    
                                                         
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
