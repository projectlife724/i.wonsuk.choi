//
//  ViewController.m
//  170227_AutoLayout
//
//  Created by Won Suk Choi on 2017. 2. 27..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import "ViewController.h"
#import "CustomTableViewCell0.h"

@interface ViewController ()
<UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView0;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    self.ttt.backgroundColor = [UIColor blackColor];
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 8;
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CustomTableViewCell0 *cell = [tableView dequeueReusableCellWithIdentifier:@"cCell" forIndexPath:indexPath];
    
    if (cell == nil) {
        cell = [[CustomTableViewCell0 alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cCell"];
        
    }
    
    
    
    return cell;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
