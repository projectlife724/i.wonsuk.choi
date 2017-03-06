//
//  ViewController.m
//  170215_Algorithm
//
//  Created by Won Suk Choi on 2017. 2. 15..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property NSInteger result;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UITextField *textfield = [[UITextField alloc] initWithFrame:CGRectMake(self.view.center.x - 80, 120, 160, 30)];
    [self.view addSubview:textfield];
//    [textfield setBorderStyle:UITextBorderStyleLine];
//    [self sumOfYaksu:[textfield.text integerValue]];
//    
//    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(self.view.center.x - 80, 180, 160, 30)];
//    [self.view addSubview:label];
//    [self sumOfYaksu:[textfield.text integerValue]];
//    label.textColor = [UIColor blackColor];

    [self sumOfYaksu:12];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

-(NSInteger)sumOfYaksu:(NSInteger)num
{
    for (NSInteger i = 1; i <= num; i++) {
        
        if (num % i == 0){
            _result = i + _result;
        }
    }
    NSLog(@"%lu", _result);
    return _result;
}
    
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
