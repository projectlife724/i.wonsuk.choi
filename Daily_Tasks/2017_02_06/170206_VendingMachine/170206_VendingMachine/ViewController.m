//
//  ViewController.m
//  170206_VendingMachine
//
//  Created by Won Suk Choi on 2017. 2. 6..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSUInteger widthX = self.view.frame.size.width - 60;
    NSUInteger heightY = self.view.frame.size.height - 60;
    
    UIButton *optionOne = [[UIButton alloc] initWithFrame:CGRectMake(20, 20, widthX, heightY)];
    //optionOne.tag = 20;    //tag는 그 객체에 숫자를 부여하는 것이다
    //sender.tag 로 해서 메소드에도 넣을 수 있다.
}

//- (void)actionMethod:(UIButton *)sender
//{
//    if (sender.isSelected)  {
//        sender.selected = NO;
//    }else
//    {
//        sender.selected = YES;
//    }

//- (void)actionMethod:(UIButton *)sender
//{
//    if (sender.isSelected)  {
//        sender.selected = NO;
//    }else
//    {
//        sender.selected = YES;
//    }


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
