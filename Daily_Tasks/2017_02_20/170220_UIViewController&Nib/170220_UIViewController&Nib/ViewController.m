//
//  ViewController.m
//  170220_UIViewController&Nib
//
//  Created by Won Suk Choi on 2017. 2. 20..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
#import "XSecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *nextBtn = [[UIButton alloc] initWithFrame:CGRectMake(30, 100, 100, 40)];
    [nextBtn addTarget:self action:@selector(onSelectedBtn:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:nextBtn];
    [nextBtn setTitle:@"NEXT" forState:UIControlStateNormal];
}


- (void)onSelectedBtn:(UIButton *)sender
{// 다음 페이지 이동
    // 1. 스토리보드 객체 만들기
//    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    
    // 2. 뷰컨트롤러 객체 만들기
//    SecondViewController *sVC = [storyboard instantiateViewControllerWithIdentifier:@"SecondViewController"];
    
    XSecondViewController *xVC = [[XSecondViewController alloc] initWithNibName:@"XSecondViewController" bundle:[NSBundle mainBundle]];
    xVC.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    
    
    // 3. 페이지 전환
//    [self presentViewController:sVC animated:YES completion:nil];
//    [self presentViewController:xVC animated:YES completion:nil];
    
    [self.navigationController pushViewController:xVC animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
