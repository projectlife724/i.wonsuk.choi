//
//  ViewController.m
//  170221_ViewController
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
    
    UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
    [imgView setImage:[UIImage imageNamed:@"BMW Logo.png"]];
    [imgView setContentMode:UIViewContentModeScaleAspectFit];
    
    [self.navigationItem setTitleView:imgView];
    self.navigationItem.title = @"BMW";

    
    [self.navigationController.navigationBar setBarTintColor:[UIColor blueColor]];
    
    UIButton *backBtn = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 44, 44)];
    [backBtn setBackgroundImage:[UIImage imageNamed:@"back-button.jpg"] forState:UIControlStateNormal];
    [backBtn addTarget:self action:@selector(selectedBtn:) forControlEvents:UIControlEventTouchUpInside];

    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithCustomView:backBtn];
    self.navigationItem.leftBarButtonItem = item;
    
}



- (void)selectedBtn:(UIButton *)sender
{
    [self.navigationController popViewControllerAnimated:YES];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
