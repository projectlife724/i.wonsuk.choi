//
//  ViewController.m
//  170224_LogInPageDataCenter
//
//  Created by Won Suk Choi on 2017. 2. 24..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import "ViewController.h"
#import "LogInViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.navigationItem.title = @"Before Settings";
    
    
    UIButton *settingsBtn = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 44, 44)];
    [settingsBtn setBackgroundImage:[UIImage imageNamed:@"back-button.jpg"] forState:UIControlStateNormal];
    [settingsBtn addTarget:self action:@selector(toLogIn:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:settingsBtn];
    
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithCustomView:settingsBtn];
    self.navigationItem.leftBarButtonItem = item;
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(noti:) name:@"information" object:nil];
    
}

-(void)toLogIn:(UIButton *)sender
{
    LogInViewController *sVC = [[LogInViewController alloc] init];
    [self.navigationController pushViewController:sVC animated:YES];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)noti:(NSNotification*)sender
{
    
    NSLog(@"%@", sender.userInfo);
}


-(void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}


@end
