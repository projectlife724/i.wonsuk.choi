//
//  MainPageViewController.m
//  170224_LogInPageDataCenter
//
//  Created by Won Suk Choi on 2017. 2. 24..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import "MainPageViewController.h"

@interface MainPageViewController ()

@end

@implementation MainPageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    NSInteger textHeight = 30;
    NSInteger offSetY = 80;
    
    
    UITextField *nameTf = [[UITextField alloc] initWithFrame:CGRectMake(150, 80, 150, textHeight)];
    
    offSetY += textHeight;
    
    UITextField *ageTf = [[UITextField alloc] initWithFrame:CGRectMake(150, offSetY, 150, textHeight)];
    
    offSetY += textHeight;
    
    UITextField *genderTf = [[UITextField alloc] initWithFrame:CGRectMake(150, offSetY, 150, textHeight)];
    
    
    
    
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
