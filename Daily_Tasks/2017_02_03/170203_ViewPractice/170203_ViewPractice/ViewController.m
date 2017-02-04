//
//  ViewController.m
//  170203_ViewPractice
//
//  Created by Won Suk Choi on 2017. 2. 3..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    // iphone 6 375 * 667

    // Question 1
    
//    UIView *topView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 375, 64)];
//    [topView setBackgroundColor:[UIColor greenColor]];
//    [self.view addSubview:topView];
//    
//    UIView *bottomView = [[UIView alloc]initWithFrame:CGRectMake(0, 619, self.view.frame.size.width, 48)];
//    [bottomView setBackgroundColor:[UIColor blackColor]];
//    [self.view addSubview:bottomView];
    
    
    // Question 2
    
//    UIView *topView = [[UIView alloc] initWithFrame:CGRectMake(self.view.center.x - 50, self.view.center.y - 50, 90, 10)];
//    [topView setBackgroundColor:[UIColor greenColor]];
//    [self.view addSubview:topView];
//    
//    UIView *bottomView = [[UIView alloc] initWithFrame:CGRectMake(self.view.center.x - 40, self.view.center.y + 50, 90, 10)];
//    [bottomView setBackgroundColor:[UIColor blueColor]];
//    [self.view addSubview:bottomView];
//    
//    UIView *rightView = [[UIView alloc] initWithFrame:CGRectMake(self.view.center.x + 40, self.view.center.y - 50, 10, 90)];
//    [rightView setBackgroundColor:[UIColor blackColor]];
//    [self.view addSubview:rightView];
//    
//    UIView *leftView = [[UIView alloc] initWithFrame:CGRectMake(self.view.center.x - 50, self.view.center.y - 40, 10, 90)];
//    [leftView setBackgroundColor:[UIColor redColor]];
//    [self.view addSubview:leftView];
    
    
    // Question 3
    
    UIImageView *baseView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 15, self.view.frame.size.width, 80)];
    [baseView setBackgroundColor:[UIColor clearColor]];
    [self.view addSubview:baseView];
    [baseView setAlpha:0.6];
    [baseView setContentMode:UIViewContentModeScaleToFill];
    baseView.image = [UIImage imageNamed:@"Cheftable4.jpg"];
    
    
    UIImageView *photo = [[UIImageView alloc] initWithFrame:CGRectMake(10, 10, 60, 60)];
//    [photo setBackgroundColor:[UIColor clearColor]];
    [baseView addSubview:photo];
    [photo setContentMode:UIViewContentModeScaleToFill];
    photo.image = [UIImage imageNamed:@"1462988899175.jpg"];
    
    UILabel *text = [[UILabel alloc] initWithFrame:CGRectMake(self.view.bounds.origin.x + 80, self.view.bounds.origin.y + 10, self.view.frame.size.width -90, 40)];
    [text setBackgroundColor:[UIColor clearColor]];
    [baseView addSubview:text];
    text.text = @"Dan Barber";
    text.font = [UIFont systemFontOfSize:30];
    
    UILabel *memo = [[UILabel alloc] initWithFrame:CGRectMake(self.view.bounds.origin.x + 80, self.view.bounds.origin.y + 60, self.view.frame.size.width - 90, 10)];
    [memo setBackgroundColor:[UIColor clearColor]];
    [baseView addSubview:memo];
    memo.text = @"Chef of Modern French Cuisin";
    memo.font = [UIFont systemFontOfSize:12];
    memo.textColor = [UIColor colorWithRed:160/255.0 green:137/255.0 blue:137/255.0 alpha:1.0];
    
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(baseView.frame.size.width/2 - 50, baseView.frame.size.height/2 - 15, 100, 30);
    [baseView addSubview:btn];
    [btn setTitle:@"안녕하세요" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
    [btn setTitle:@"안녕히가세요" forState:UIControlStateHighlighted];
    [btn setTitleColor:[UIColor blueColor] forState:UIControlStateHighlighted];
    [btn addTarget:self action:@selector(didSelectedBtn:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)didSelectedBtn:(UIButton *)sender
{
    NSLog(@"버튼을 눌렸습니다");
}

    // Question 4
    
//    // 바탕뷰
//    UIView *baseView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
//    [baseView setBackgroundColor:[UIColor blackColor]];
//    [self.view addSubview:baseView];
//    
//    //baseView에 큰 view 3개 추가
//    UIView *topView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 168)];
//    [topView setBackgroundColor:[UIColor blueColor]];
//    [baseView addSubview:topView];
//    
//    UIView *middleView = [[UIView alloc] initWithFrame:CGRectMake(0, 168, self.view.frame.size.width, 100)];
//    [middleView setBackgroundColor:[UIColor redColor]];
//    [baseView addSubview:middleView];
//    
//    UIView *bottomView = [[UIView alloc] initWithFrame:CGRectMake(0, 268, self.view.frame.size.width, 45)];
//    [bottomView setBackgroundColor:[UIColor greenColor]];
//    [baseView addSubview:bottomView];
//    
//    
//    //bottomeView에 레이블 추가
//    
//    UIView *label1 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, bottomView.frame.size.width / 4, 45)];
//    [label1 setBackgroundColor:[UIColor darkGrayColor]];
//    [bottomView addSubview:label1];
//    
//    UIView *label2 = [[UIView alloc] initWithFrame:CGRectMake(0 + (bottomView.frame.size.width / 4), 0, self.view.frame.size.width / 4, 45)];
//    [label2 setBackgroundColor:[UIColor lightGrayColor]];
//    [bottomView addSubview:label2];
//    
//    UIView *label3 = [[UIView alloc] initWithFrame:CGRectMake(0 + (bottomView.frame.size.width / 2), 0, self.view.frame.size.width / 4, 45)];
//    [label3 setBackgroundColor:[UIColor darkGrayColor]];
//    [bottomView addSubview:label3];
//    
//    UIView *label4 = [[UIView alloc] initWithFrame:CGRectMake(0 + (bottomView.frame.size.width * 0.75), 0, self.view.frame.size.width / 4, 45)];
//    [label4 setBackgroundColor:[UIColor lightGrayColor]];
//    [bottomView addSubview:label4];
//    
//    
//    //label 1 text 추가
//    
//    UIView *text1 = [[UIView alloc] initWithFrame:CGRectMake(5, 5, label1.frame.size.width - 10, 15)];
//    [text1 setBackgroundColor:[UIColor whiteColor]];
//    [label1 addSubview:text1];
//    
//    UIView *text2 = [[UIView alloc] initWithFrame:CGRectMake(5, 25, label1.frame.size.width - 10, 15)];
//    [text2 setBackgroundColor:[UIColor whiteColor]];
//    [label1 addSubview:text2];
//
//    
//    //label 2 text 추가
//    
//    UIView *text3 = [[UIView alloc] initWithFrame:CGRectMake(5, 5, label2.frame.size.width - 10, 15)];
//    [text3 setBackgroundColor:[UIColor whiteColor]];
//    [label2 addSubview:text3];
//    
//    UIView *text4 = [[UIView alloc] initWithFrame:CGRectMake(5, 25, label2.frame.size.width - 10, 15)];
//    [text4 setBackgroundColor:[UIColor whiteColor]];
//    [label2 addSubview:text4];
//    
//    
//    //label 3 text 추가
//    
//    UIView *text5 = [[UIView alloc] initWithFrame:CGRectMake(5, 5, label3.frame.size.width - 10, 15)];
//    [text5 setBackgroundColor:[UIColor whiteColor]];
//    [label3 addSubview:text5];
//    
//    UIView *text6 = [[UIView alloc] initWithFrame:CGRectMake(5, 25, label3.frame.size.width - 10, 15)];
//    [text6 setBackgroundColor:[UIColor whiteColor]];
//    [label3 addSubview:text6];
//    
//    
//    //label 4 text 추가
//    
//    UIView *text7 = [[UIView alloc] initWithFrame:CGRectMake(5, 5, label4.frame.size.width - 10, 15)];
//    [text7 setBackgroundColor:[UIColor whiteColor]];
//    [label4 addSubview:text7];
//    
//    UIView *text8 = [[UIView alloc] initWithFrame:CGRectMake(5, 25, label4.frame.size.width - 10, 15)];
//    [text8 setBackgroundColor:[UIColor whiteColor]];
//    [label4 addSubview:text8];
//
//    
//    // 중앙에 toplabel 생성
//    
//    UIView *toplabel = [[UIView alloc] initWithFrame:CGRectMake(baseView.center.x - 40, 123, 80, 80)];
//    [toplabel setBackgroundColor:[UIColor whiteColor]];
//    [baseView addSubview:toplabel];
//
//    
//    // 중앙에 middlelabel 생성
//    
//    UIView *middlelabel = [[UIView alloc] initWithFrame:CGRectMake(middleView.center.x - 40, 43, 80, 25)];
//    [middlelabel setBackgroundColor:[UIColor whiteColor]];
//    [middleView addSubview:middlelabel];
//    
//    
//    // 중앙에 bottomlabel 생성
//    
//    UIView *bottomlabel = [[UIView alloc] initWithFrame:CGRectMake(middleView.center.x - 40, 70, 80, 13)];
//    [bottomlabel setBackgroundColor:[UIColor whiteColor]];
//    [middleView addSubview:bottomlabel];
    
    





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
