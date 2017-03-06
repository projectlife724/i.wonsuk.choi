//
//  TableViewImage.m
//  170216_TableViewPractice
//
//  Created by Won Suk Choi on 2017. 2. 16..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import "TableViewImage.h"

@interface TableViewImage ()
<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic) NSArray *restaurantList;
@property (nonatomic) NSArray *restaurantList2;
@property (nonatomic) NSArray *ownerList;
@property (nonatomic) NSArray *ownerList2;
@property (nonatomic) NSArray *imgList;
@property (nonatomic) NSArray *imgList2;
@property (nonatomic) NSArray *sectionNameList;

@end

@implementation TableViewImage

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // 테이블 뷰 생성
    UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 20, self.view.frame.size.width - 20, self.view.frame.size.height ) style:UITableViewStylePlain];
    tableView.delegate = self;
    tableView.dataSource = self;
    [self.view addSubview:tableView];
    
    self.restaurantList = @[@"Osteria Francescana", @"Blue Hill Restaurant", @"El Restaurante Patagonia", @"N/Naka", @"Attica in Melbourne", @"Fäviken"];
    self.restaurantList2 = @[@"Alinea", @"D.O.M", @"Atelier Crenn", @"Pujol", @"Hisa Franko", @"Gaggan"];
    self.ownerList = @[@"Massimo Bottura", @"Dan Barber", @"Francis Mallmann", @"Niki Nakayama", @"Ben Shewry", @"Magnus Nilsson"];
    self.ownerList2 = @[@"Grant Achatz", @"Alex Atala", @"Dominique Crenn", @"Enrique Olvera", @"Ana Roš", @"Gaggan Anand"];
    self.imgList = @[@"Francescana.jpg",@"Blue Hill.jpg", @"Patagonia.jpeg", @"Nnaka.jpg", @"Attica.jpg", @"Faviken.jpg"];
    self.imgList2 = @[@"Alinea.jpg", @"DOM.jpg", @"AterlierCrenn.jpg", @"Pujol", @"Hisa Franko.jpg", @"Gaggan"];
    self.sectionNameList = @[@"Restaurants in Chef's Table Season 1", @"Restaurants in Chef's Table Season 2"];
    
}

// 섹션 이름 지정
-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    switch (section) {
        case 0:
            return [self.sectionNameList objectAtIndex:0];
            break;
        
        case 1:
            return [self.sectionNameList objectAtIndex:1];
            break;
        
        default:
            return nil;
            break;
    }
}

// 셀 높이 지정
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 80;
}


// 섹션 개수
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}


// Row 개수
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section == 0) {
        return self.restaurantList.count;
    }
    else
        return self.restaurantList2.count;
}


// 테이블 뷰 생성
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    if (cell == nil) {
        
        // 셀 객체 생성
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
        
        UISwitch *switcher = [[UISwitch alloc] initWithFrame:CGRectMake(10, 10, 10, 10)];
        [switcher addTarget:self action:@selector(changeSwitcher:) forControlEvents:UIControlEventValueChanged];
        
        //셀 악세사리 스위처 설정
        cell.accessoryView = switcher;
        
    }
    
    switch (indexPath.section) {
        case 0:{
            cell.textLabel.text = [self.restaurantList objectAtIndex:indexPath.row];
            cell.detailTextLabel.text = [self.ownerList objectAtIndex:indexPath.row];

            NSString *namelist = [self.imgList objectAtIndex:indexPath.row];
            cell.imageView.image = [UIImage imageNamed:namelist];
            
            break;
        }
        
        case 1: {
            cell.textLabel.text = [self.restaurantList2 objectAtIndex:indexPath.row];
            cell.detailTextLabel.text = [self.ownerList2 objectAtIndex:indexPath.row];

            NSString *namelist2 = [self.imgList2 objectAtIndex:indexPath.row];
            cell.imageView.image = [UIImage imageNamed:namelist2];
            
            break;
        }
            
        default: {
            
            return nil;
            break;
        }
    }
    
    cell.accessoryType = UITableViewCellAccessoryCheckmark;
    return cell;

}

- (void)changeSwitcher:(UISwitch *)sender;
{
    NSLog(@"Switch Initialized");
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
