//
//  SecondViewController.m
//  170220_UIViewController&Nib
//
//  Created by Won Suk Choi on 2017. 2. 20..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIButton *nextBtn = [[UIButton alloc] initWithFrame:CGRectMake(30, 100, 100, 40)];
    [nextBtn addTarget:self action:@selector(onSelectedBtn:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:nextBtn];
    [nextBtn setTitle:@"BACK" forState:UIControlStateNormal];
    [nextBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
}

- (void)onSelectedBtn:(UIButton *)sender
{// 다음 페이지 이동
    // 1. 내리기
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
