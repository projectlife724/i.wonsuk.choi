//
//  ViewController.m
//  170222_Assignment
//
//  Created by Won Suk Choi on 2017. 2. 22..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import "ViewController.h"
#import "SettingsViewController.h"


@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.navigationItem.title = @"Before Settings";

    
    UIButton *settingsBtn = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 44, 44)];
    [settingsBtn setBackgroundImage:[UIImage imageNamed:@"back-button.jpg"] forState:UIControlStateNormal];
    [settingsBtn addTarget:self action:@selector(toSettings:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:settingsBtn];
    
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithCustomView:settingsBtn];
    self.navigationItem.leftBarButtonItem = item;
    
}

-(void)toSettings:(UIButton *)sender
{
    SettingsViewController *sVC = [[SettingsViewController alloc] init];
    [self.navigationController pushViewController:sVC animated:YES];
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
