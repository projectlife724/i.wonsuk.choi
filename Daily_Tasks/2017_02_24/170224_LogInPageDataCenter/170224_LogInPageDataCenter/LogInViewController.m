//
//  LogInViewController.m
//  170224_LogInPageDataCenter
//
//  Created by Won Suk Choi on 2017. 2. 24..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import "LogInViewController.h"
#import "DataCenter.h"
#import "MainPageViewController.h"
#import "JoinPageViewController.h"

@interface LogInViewController ()
<UIScrollViewDelegate, UITextFieldDelegate>

@property UIScrollView *scView;
@property UITextField *type1;
@property UITextField *type2;
@property UIView * baseView;

@property DataCenter *information;


@end

@implementation LogInViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.information = [DataCenter sharedInstance];
    
    
    NSInteger offsetX = self.view.frame.size.width;
    NSInteger offsetY = self.view.frame.size.height;
    
    
    //배경 그림
    UIImageView *backView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, offsetX, offsetY)];
    [backView setContentMode:UIViewContentModeScaleToFill];
    [backView setImage:[UIImage imageNamed:@"Background.jpg"]];
    [self.view addSubview:backView];
    
    self.scView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, offsetX, offsetY)];
    [self.view addSubview:self.scView];
    self.scView.delegate = self;
    [self.scView setContentSize:CGSizeMake(offsetX, offsetY * 1.3)];
    
    
    // 바탕 레이어
    UIView *baseView = [[UIView alloc] initWithFrame:CGRectMake(30, 150, 320, 210)];
    [self.scView addSubview:baseView];
    [baseView setBackgroundColor:[UIColor blackColor]];
    [baseView setAlpha:0.4];
    
    // 확인 버튼
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(baseView.center.x - 0, 150, 40, 15)];
    [baseView addSubview:btn];
    [btn setTitle:@"Log In" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(textFieldShouldBeginEditing:) forControlEvents:UIControlEventTouchUpInside];
    
    
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
    self.type1.textColor = [UIColor whiteColor];
    
    
    self.type2 = [[UITextField alloc] initWithFrame:CGRectMake(120, 90, 120, 30)];
    [baseView addSubview:self.type2];
    self.type2.delegate = self;
    self.type2.borderStyle = UITextBorderStyleLine;
    self.type2.tag = 20;
    [self.type2 setSecureTextEntry:YES];
    self.type2.textColor = [UIColor whiteColor];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"information" object:nil userInfo:@{@"user info" : @[@"Daniel", @"John", @"Max"]}];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardNoti:) name:UIKeyboardWillShowNotification object:nil];
    
}

-(void)keyboardNoti:(NSNotification *)noti
{
    
    
    CGSize keyboardSize = [[noti.userInfo objectForKey:UIKeyboardFrameBeginUserInfoKey] CGRectValue].size;
    CGRect originFrame = self.view.frame;
    
//    [UIView animateWithDuration:5 animations:^{
    
        self.scView.frame = CGRectMake(originFrame.origin.x, originFrame.origin.y - keyboardSize.height/4, originFrame.size.width, originFrame.size.height);
//    }];
}

// 메세지 띄운는 작업 BUT 실패

//- (void)popUpMessage:(UI *)button
//{
//}

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    
//    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(trackingPost:) name:UIKeyboardDidShowNotification object:nil];
//    [UIKeyboardDidShowNotification ]
    
    return YES;
}

//텍스트 리턴값 눌렀을 때, 키보드 사라지고 다시 UI가 내려오는 메소드
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    NSString *identity = self.information.iD;
    NSString *password = self.information.pW;
    
    if (textField.tag == 10) {
        [self.type1 resignFirstResponder];
        [self.type2 becomeFirstResponder];

        
    }
    else if (textField.tag == 20){
        

        
        [self.scView setContentOffset:CGPointMake(0, 0) animated:YES];
        
        if ([identity isEqualToString:self.type1.text] && [password isEqualToString:self.type2.text]) {
            
            NSLog(@"로그인 성공");
            MainPageViewController *mPage = [[MainPageViewController alloc] init];
            [self.navigationController pushViewController:mPage animated:YES];
            [self.type2 resignFirstResponder];
            
        }
        else  {
            NSLog(@"로그인 실패");

        }
    }
    

    
    
    
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    
    return YES;
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
