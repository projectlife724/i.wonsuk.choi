//
//  ViewController.m
//  170207_UILoginScreen
//
//  Created by Won Suk Choi on 2017. 2. 7..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()
<UITextFieldDelegate, UIScrollViewDelegate>

@property UIScrollView *scView;
@property UITextField *type1;
@property UITextField *type2;

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSInteger offsetX = self.view.frame.size.width;
    NSInteger offsetY = self.view.frame.size.height;
    
    
    // 배경 그림
    UIImageView *backView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, offsetX, offsetY)];
    [backView setContentMode:UIViewContentModeScaleToFill];
    [backView setImage:[UIImage imageNamed:@"Background.jpg"]];
    [backView setUserInteractionEnabled:YES];
    [self.view addSubview:backView];
    
    self.scView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, offsetX, offsetY)];
    [backView addSubview:self.scView];
    self.scView.delegate = self;
    [self.scView setContentSize:CGSizeMake(offsetX, offsetY * 1.3)];
    
    // 텍스트 필드와 레이블 올려질 바탕뷰
    UIView *baseView = [[UIView alloc] initWithFrame:CGRectMake(30, 150, 320, 150)];
    [self.scView addSubview:baseView];
    [baseView setBackgroundColor:[UIColor blackColor]];
    [baseView setAlpha:0.4];
    
    
    // 이름과 비밀번호 레이블
    UILabel *labelName = [[UILabel alloc] initWithFrame:CGRectMake(60, 30, 40, 30)];
    labelName.text = @"ID";
    labelName.textColor = [UIColor whiteColor];
    [baseView addSubview:labelName];
    
    UILabel *labelPw = [[UILabel alloc] initWithFrame:CGRectMake(60, 90, 40, 30)];
    labelPw.text = @"PW";
    labelPw.textColor = [UIColor whiteColor];
    [baseView addSubview:labelPw];
    
    
    // 이름과 비밀번호 텍스트필드
    self.type1 = [[UITextField alloc] initWithFrame:CGRectMake(120, 30, 120, 30)];
    [baseView addSubview:self.type1];
    self.type1.delegate = self;
    self.type1.borderStyle = UITextBorderStyleLine;
    self.type1.tag = 10;
    
    self.type2 = [[UITextField alloc] initWithFrame:CGRectMake(120, 90, 120, 30)];
    [baseView addSubview:self.type2];
    self.type2.delegate = self;
    self.type2.borderStyle = UITextBorderStyleLine;
    self.type2.tag = 20;
    
    UIButton *logInBtn = [[UIButton alloc] initWithFrame:CGRectMake(30, 330, 150, 30)];
    [backView addSubview:logInBtn];
    [logInBtn setBackgroundColor:[UIColor blackColor]];
    [logInBtn setAlpha:0.4];
    [logInBtn setTitle:@"Log In" forState:UIControlStateNormal];
    
    UIButton *signUpBtn = [[UIButton alloc] initWithFrame:CGRectMake(200, 330, 150, 30)];
    [backView addSubview:signUpBtn];
    [signUpBtn setBackgroundColor:[UIColor blackColor]];
    [signUpBtn setAlpha:0.4];
    [signUpBtn setTitle:@"Sign Up" forState:UIControlStateNormal];
    [signUpBtn addTarget:self action:@selector(signUpBtn:) forControlEvents:UIControlEventTouchUpInside];
    
}


- (void) signUpBtn:(UIButton *)sender
{
//    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
//    SecondViewController *sVC = [storyboard instantiateViewControllerWithIdentifier:@"SecondViewController"];
    
    SecondViewController *sVC = [[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:[NSBundle mainBundle]];
    [self.navigationController pushViewController:sVC animated:YES];
}


// 텍스트 필드를 눌렀을 때 키보드가 등장하면서 텍스트 필드가 올라가는듯한 효과를 주기 위한 메소드
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{

    [self.scView setContentOffset:CGPointMake(0, 50) animated:YES];
    
    return YES;
}

//텍스트 리턴값 눌렀을 때, 키보드 사라지고 다시 UI가 내려오는 메소드
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if (textField.tag == 10) {
        [self.type1 resignFirstResponder];
        [self.type2 becomeFirstResponder];
        
    }
    else{
        [self.type2 resignFirstResponder];
        [self.scView setContentOffset:CGPointMake(0, 0) animated:YES];
    }
    
    return YES;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
