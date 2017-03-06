//
//  ViewController.m
//  170213_LifeCycle
//
//  Created by Won Suk Choi on 2017. 2. 13..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.\

    UIViewController *vc = [[UIViewController alloc] init];
    [vc application]
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
