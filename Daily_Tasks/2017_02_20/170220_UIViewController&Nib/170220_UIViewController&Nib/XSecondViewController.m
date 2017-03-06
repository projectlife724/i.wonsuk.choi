//
//  XSecondViewController.m
//  170220_UIViewController&Nib
//
//  Created by Won Suk Choi on 2017. 2. 20..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import "XSecondViewController.h"

@interface XSecondViewController ()

@end

@implementation XSecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    UIButton *backBtn = [[UIButton alloc] initWithFrame:CGRectMake(30, 100, 100, 40)];
    [backBtn addTarget:self action:@selector(selectedBtn:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:backBtn];
    [backBtn setTitle:@"BACK" forState:UIControlStateNormal];
    [backBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
}

- (void)selectedBtn:(UIButton *)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
