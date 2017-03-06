//
//  TableViewAnimalList.m
//  170215_UITableViewPractice
//
//  Created by Won Suk Choi on 2017. 2. 15..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import "TableViewAnimalList.h"

@interface TableViewAnimalList ()
<UITableViewDelegate, UITableViewDataSource>

@end

@implementation TableViewAnimalList

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UITableView *tableview = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    tableview.delegate = self;
    tableview.dataSource = self;
    [self.view addSubview:tableview];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    
    cell.textLabel.text = [NSString stringWithFormat:@"%zd", indexPath.row];
    
    return cell;
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
