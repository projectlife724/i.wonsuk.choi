//
//  ViewController.m
//  170303_PListPractice
//
//  Created by Won Suk Choi on 2017. 3. 3..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import "ViewController.h"
#import "DataCenter.h"

@interface ViewController ()
//<UITableViewDelegate, UITableViewDataSource>

@end

@implementation ViewController




- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    //파일 형식에 상관없이 불러올 수 있다
//    UIImage *img = [UIImage imageWithContentsOfFile:<#(nonnull NSString *)#>];
//    NSData *data = [NSData dataWithContentsOfFile:<#(nonnull NSString *)#>];
//    
//    UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStylePlain];
//    [self.view addSubview: tableView];
//    tableView.delegate = self;
//    tableView.dataSource = self;
//    
    [self.btn addTarget:self action:@selector(saveData:) forControlEvents:UIControlEventTouchUpInside];
    
    

//    NSString *imgPath = [[NSBundle mainBundle] pathForResource:@"cards" ofType:@"png"];
//    UIImage *img = [UIImage imageWithContentsOfFile:imgPath];
//    
//    UIImage *img2 = [UIImage imageNamed:@"cards@2x.png"];
    
}

- (void)saveData:(UIButton *)sender
{
    
    NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
    [dic setObject:self.name.text forKey:@"Name"];
    [dic setObject:self.phone.text forKey:@"PhoneNumber"];
    [[DataCenter defaultData] saveDic:dic];
    
}



//-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
//{
//    return [DataCenter defaultData].friends.count;
//}
//
//
//-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
//{
////    UITableViewCell *tableViewCell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
//    
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
//    
//    if (cell == nil) {
//            
//        // 셀 객체 생성
//        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
//    }
//    
//    
//    NSDictionary *result = [[DataCenter defaultData].friends objectAtIndex:indexPath.row];
//    
//    cell.textLabel.text = [result objectForKey:@"Name"];
//    
//    return cell;
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
