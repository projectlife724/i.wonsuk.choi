//
//  ViewController.m
//  170207_UIScrollViewPractice
//
//  Created by Won Suk Choi on 2017. 2. 7..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
<UIScrollViewDelegate>

@property UIPageControl *pgControl;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //가로 3페이지 스크롤 뷰 만들기 (컴텐츠는 이미지뷰)
    
    NSInteger offSetX = self.view.frame.size.width;
    NSInteger offSetY = self.view.frame.size.height;

    
    UIScrollView *baseView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, offSetX, offSetY)];
    [baseView setContentSize:CGSizeMake(offSetX * 3, offSetY)];
    baseView.delegate = self;
    [self.view addSubview:baseView];
    baseView.pagingEnabled = YES;
    baseView.bounces = offSetX / 3 > 0;
    
    UIImageView *viewOne = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, offSetX, offSetY)];
    [viewOne setBackgroundColor:[UIColor blueColor]];
    [baseView addSubview:viewOne];
    
    UIImageView *viewTwo = [[UIImageView alloc] initWithFrame:CGRectMake(offSetX, 0, offSetX, offSetY)];
    [viewTwo setBackgroundColor:[UIColor greenColor]];
    [baseView addSubview:viewTwo];
    
    UIImageView *viewThree = [[UIImageView alloc] initWithFrame:CGRectMake(offSetX * 2, 0, offSetX, offSetY)];
    [viewThree setBackgroundColor:[UIColor redColor]];
    [baseView addSubview:viewThree];
    
    self.pgControl = [[UIPageControl alloc] initWithFrame:CGRectMake(offSetX / 2 - 20, offSetY - 20, 40, 20)];
    [self.view addSubview: self.pgControl];
    self.pgControl.numberOfPages = 3;
    self.pgControl.currentPage = 1;
    self.pgControl.backgroundColor = [UIColor blackColor];
//    [pgControl addTarget:self action:@selector(<#selector#>) forControlEvents:UIControlEventValueChanged];
    
    
    
}


- (void)scrollViewWillEndDragging:(UIScrollView *)scrollView withVelocity:(CGPoint)velocity targetContentOffset:(inout CGPoint *)targetContentOffset
{
    if ((* targetContentOffset).x == 0) {
        self.pg
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
