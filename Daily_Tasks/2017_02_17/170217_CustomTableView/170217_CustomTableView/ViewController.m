//
//  ViewController.m
//  170217_CustomTableView
//
//  Created by Won Suk Choi on 2017. 2. 17..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import "ViewController.h"
#import "MyCustomView.h"
#import "MyCustomTableViewCell.h"

@interface ViewController ()
<UITableViewDelegate, UITableViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    MyCustomView *customView = [[MyCustomView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 250)];
//    [customView setDataWithImgName:@"t2.jpg" name:@"Daniel" msg:@"커스텀 뷰 실행"];
//    
//    [self.view addSubview:customView];

    UITableView *customTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStylePlain];
    [self.view addSubview:customTableView];
    customTableView.delegate = self;
    customTableView.dataSource = self;
}

// 섹션 내 줄 개수
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}


// 셀 생성 및 설정
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    MyCustomTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell == nil) {
        cell = [[MyCustomTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    
    [cell setDataWithImgName:@"t1.jpg" name:@"Daniel" msg:[NSString stringWithFormat:@"%ld", indexPath.row]];
    
    return cell;
}


// 한 줄의 높이 설정
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    return 200;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
