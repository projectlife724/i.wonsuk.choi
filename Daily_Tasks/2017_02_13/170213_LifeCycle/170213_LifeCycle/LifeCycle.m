//
//  LifeCycle.m
//  170213_LifeCycle
//
//  Created by Won Suk Choi on 2017. 2. 13..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import "LifeCycle.h"

@interface LifeCycle ()

@end

@implementation LifeCycle

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    NSLog(@"---------------");
    NSLog(@"View will Appear Stage");
}

-(void) viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
    NSLog(@"---------------");
    NSLog(@"View Will Layout Subviews Stage");
}

-(void) viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
    NSLog(@"---------------");
    NSLog(@"View Did Layout Subviews Stage");
    
}

-(void) viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    NSLog(@"---------------");
    NSLog(@"View Did Appear Stage");
}

-(void) viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    NSLog(@"---------------");
    NSLog(@"View Will Disappear Stage");
}

-(void) viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
    NSLog(@"---------------");
    NSLog(@"View Did Disappear");
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
