//
//  TableViewWithData.m
//  170216_TableViewPractice
//
//  Created by Won Suk Choi on 2017. 2. 16..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import "TableViewWithData.h"

@interface TableViewWithData ()
<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic) NSArray *list;
@property (nonatomic) NSArray *list2;
@property (nonatomic) NSArray *imglist1;

@end

@implementation TableViewWithData

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UITableView *tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStyleGrouped];
    [self.view addSubview:tableView];
    tableView.delegate = self;
    tableView.dataSource = self;
    
    self.list = @[@"Osteria Francescana", @"Blue Hill Restaurant", @"El Restaurante Patagonia", @"N/Naka", @"Attica in Melbourne", @"Fäviken"];
    self.list2 = @[@"Alinea", @"D.O.M", @"Atelier Crenn", @"Pujol", @"Hisa Franko", @"Gaggan"];
    self.imglist1 = @[@"Francescana.jpg",@"Blue Hill.jpg", @"Patagonia.jpeg"];
    
//    NSDictionary *dic = @[@{@"name":@"Osteria Francescana"}, @{@"name":@"Blue Hill Restaurant"}];

}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.imglist1.count;
}



- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    
    if (cell == nil) {
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    
    cell.textLabel.text = [self.list objectAtIndex:indexPath.row];
    
    NSString *imgList = [self.imglist1 objectAtIndex:indexPath.row];
    cell.imageView.image = [UIImage imageNamed:imgList];
    
    cell.accessoryType = UITableViewCellAccessoryCheckmark;
    
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
