//
//  SettingsViewController.m
//  170222_Assignment
//
//  Created by Won Suk Choi on 2017. 2. 23..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import "SettingsViewController.h"
#import "DataCenter.h"

@interface SettingsViewController ()
<UITableViewDelegate, UITableViewDataSource>

@property NSArray *generalSetting;
@property NSArray *originalSolution;
@property NSArray *privateAccount;
@property NSArray *appSettings;
@property NSArray *feedBack;

@end

@implementation SettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //네비게이션 바
    self.navigationItem.title = @"Settings";
    
    UIButton *settingsBtn = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 44, 44)];
    [settingsBtn setBackgroundImage:[UIImage imageNamed:@"back-button.jpg"] forState:UIControlStateNormal];
    [settingsBtn addTarget:self action:@selector(backToBeforeSettings:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:settingsBtn];
    
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithCustomView:settingsBtn];
    self.navigationItem.leftBarButtonItem = item;

    
    // 테이블 뷰 생성
    UITableView *tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStyleGrouped];
    [self.view addSubview:tableView];
    tableView.delegate = self;
    tableView.dataSource = self;
    
    
    // 데이터
    
    self.generalSetting = @[@"My profile", @"Account Settings", @"Smart Nofifications"];
    self.originalSolution = @[@"Original resolution photo upload"];
    self.privateAccount = @[@"Private account"];
    self.appSettings = @[@"Distance units", @"Temperature", @"Sync images over 3/4G"];
    self.feedBack = @[@"Common Questions", @"Send Us Feedback", @"About PolarSteps"];
    
}


-(void)backToBeforeSettings:(UIButton *)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
        
    }
    

    
    switch (indexPath.section) {
        case 0:{
            cell.textLabel.text = [self.generalSetting objectAtIndex:indexPath.row];
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
            break;
        }
        case 1:{
            cell.textLabel.text = [self.originalSolution objectAtIndex:indexPath.row];
            break;
        }
        case 2:{
            
            cell.textLabel.text = [self.privateAccount objectAtIndex:indexPath.row];
            
            UISwitch *switcher1 = [[UISwitch alloc] init];
            [switcher1 addTarget:self action:@selector(selectedSwitcher1:) forControlEvents:UIControlEventValueChanged];
            cell.accessoryView = switcher1;
            
            
            switcher1.on = [[[NSUserDefaults standardUserDefaults] objectForKey:@"switch1"] boolValue];
            
//            switcher1.on = [DataCenter sharedInstance].swOnOff;
            
            break;
        }
        case 3:{
            if (indexPath.row == 2) {
                cell.textLabel.text = [self.appSettings objectAtIndex:indexPath.row];
                UISwitch *switcher2 = [[UISwitch alloc] init];
                [switcher2 addTarget:self action:@selector(selectedSwitcher2:) forControlEvents:UIControlEventValueChanged];
                cell.accessoryView = switcher2;
                switcher2.on = [[NSUserDefaults standardUserDefaults] objectForKey:@"switch2"];
            }
            else{
                cell.textLabel.text = [self.appSettings objectAtIndex:indexPath.row];
                cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
            }

            break;
        }
        case 4:
            cell.textLabel.text = [self.feedBack objectAtIndex:indexPath.row];
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
            break;
        default:
            break;
    }
    return cell;
}

- (void)selectedSwitcher1:(UISwitch*) sender
{
    NSLog(@"Switch 1 Value Changed");
    
    NSNumber *onOffValue = [NSNumber numberWithBool:sender.on];
    
    [[NSUserDefaults standardUserDefaults] setObject:onOffValue forKey:@"switch1"];
    
//    [DataCenter sharedInstance].swOnOff = sender.on;
}

- (void)selectedSwitcher2:(UISwitch*) sender
{
    NSLog(@"Switch 2 Value Changed");
    
    NSNumber *onOffValue = [NSNumber numberWithBool:sender.on];
    
    [[NSUserDefaults standardUserDefaults] setObject:onOffValue forKey:@"switch2"];
}


-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    if (section == 2) {
        return @"Account Type";
    }
    else if (section == 3) {
        return @"App Settings";
    }
    
    return nil;
}


- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    CGFloat height;
    
    if (section == 1) {
        height = 90;
    }
    else if (section == 2){
        height = 60;
    }
    else if (section == 3){
        height = 45;
    }
    return height;
}


-(NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
{
    switch (section) {
        case 0:
            return nil;
            
        case 1:
            return @"Please keep Polarsteps open and your screen unlocked. This way we can upload the original version of your photos to our servers. After they are uploaded, the size of your app will be reduced and you'll be able to order a printed photo albun of your trip (coming Fall 2016).";
            
        case 2:
            return @"When your account is prviate, only you approve can follow and see your trips (unless set a trip's privay level to 'Everyone'";
            
        case 3:
            return @"Syncing images over 3/4G may use a lot of data if you have large pictures";
            
        case 4:
            return nil;
            
        default:
            break;
    }
    return nil;
}



-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView;
{
    return 5;
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    switch (section) {
        case 0:
            return self.generalSetting.count;
        case 1:
            return self.originalSolution.count;
        case 2:
            return self.privateAccount.count;
        case 3:
            return self.appSettings.count;
        case 4:
            return self.feedBack.count;
            
        default:
             return 0;
            break;
    }
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
