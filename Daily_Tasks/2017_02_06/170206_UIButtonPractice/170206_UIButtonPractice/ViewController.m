//
//  ViewController.m
//  170206_UIButtonPractice
//
//  Created by Won Suk Choi on 2017. 2. 6..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
<UITextFieldDelegate>

@property UIButton *beforeButton;
@property UITextField *beforeTf;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    NSInteger centerX = self.view.center.x;
//    NSInteger centerY = self.view.center.y;
//    
//    UIButton *buttonOne = [[UIButton alloc] initWithFrame:CGRectMake(centerX - 100, centerY - 50, 100, 40)];
//    [self.view addSubview:buttonOne];
//    [buttonOne setBackgroundColor:[UIColor blueColor]];
//    buttonOne.layer.cornerRadius = 10;
//    buttonOne.layer.masksToBounds = YES;
//    [buttonOne setTitle:@"1번 버튼" forState:UIControlStateNormal];
//    [buttonOne addTarget:self action:@selector(didSelectedButtonOne:) forControlEvents:UIControlEventTouchUpInside];
//    
//    UIButton *buttonTwo = [[UIButton alloc] initWithFrame:CGRectMake(centerX + 10, centerY - 50, 100, 40)];
//    [self.view addSubview:buttonTwo];
//    [buttonTwo setBackgroundColor:[UIColor blueColor]];
//    buttonTwo.layer.cornerRadius = 10;
//    buttonTwo.layer.masksToBounds = YES;
//    [buttonTwo setTitle:@"2번 버튼" forState:UIControlStateNormal];
//    [buttonTwo addTarget:self action:@selector(didSelectedButtonOne:) forControlEvents:UIControlEventTouchUpInside];
//    
//    UIButton *buttonThree = [[UIButton alloc] initWithFrame:CGRectMake(centerX - 100, centerY + 10, 100, 40)];
//    [self.view addSubview:buttonThree];
//    [buttonThree setBackgroundColor:[UIColor blueColor]];
//    buttonThree.layer.cornerRadius = 10;
//    buttonThree.layer.masksToBounds = YES;
//    [buttonThree setTitle:@"3번 버튼" forState:UIControlStateNormal];
//    [buttonThree addTarget:self action:@selector(didSelectedButtonOne:) forControlEvents:UIControlEventTouchUpInside];
//    
//    UIButton *buttonFour = [[UIButton alloc] initWithFrame:CGRectMake(centerX + 10, centerY + 10, 100, 40)];
//    [self.view addSubview:buttonFour];
//    [buttonFour setBackgroundColor:[UIColor blueColor]];
//    buttonFour.layer.cornerRadius = 10;
//    buttonFour.layer.masksToBounds = YES;
//    [buttonFour setTitle:@"4번 버튼" forState:UIControlStateNormal];
//    [buttonFour addTarget:self action:@selector(didSelectedButtonOne:) forControlEvents:UIControlEventTouchUpInside];
//    
//                        
//}
//
//- (void)didSelectedButtonOne:(UIButton *)sender;
//{
//    
//    [self.beforeButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
//    
//    [sender setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
//
//    self.beforeButton = sender;

    UITextField *test = [[UITextField alloc] initWithFrame:CGRectMake(20, 20, 100, 40)];
    test.textColor = [UIColor blackColor];
    [test setBackgroundColor:[UIColor whiteColor]];
    test.layer.borderColor = [[UIColor blackColor]CGColor];
    test.layer.borderWidth = 1;
    test.tag = 1;
    [self.view addSubview:test];
    test.delegate = self;
    test.placeholder = @"inputText";
    
    UILabel *test2 = [[UILabel alloc] initWithFrame:CGRectMake(20, 80, 100, 40)];
    [test2 setBackgroundColor:[UIColor whiteColor]];
    [self.view addSubview:test2];
    test2.layer.borderColor = [[UIColor blackColor]CGColor];
    test2.layer.borderWidth = 1;
 
 
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(140, 40, 60, 60)];
    [btn setTitle:@"확인" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(textFieldShouldReturn:) forControlEvents:UIControlStateNormal];
}

- (bool)textFieldShouldReturn:(UITextField *)textField;
{
    
    [self.beforeTf resignFirstResponder];
    
    return YES;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
