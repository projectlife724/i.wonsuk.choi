//
//  ViewController.m
//  170209_forInStatement
//
//  Created by Won Suk Choi on 2017. 2. 9..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    NSArray *list = [[NSArray alloc] initWithObjects:@"1", @"2", @"3", @"4", @"5", nil];
//    NSArray *list2 = @[@"1", @"2", @"3", @"4", @"5"];
    
//    NSDictionary * dic = [[NSDictionary alloc] initWithObjects:@[@"choi", @"choi2"] forKeys:@[@"key1", @"key2"]];
//    NSDictionary *dic2 = @{@"key0":@"value0", @"key1":@"value1", @"key2":@"value2"};
    
//    for (NSInteger i = 0; i < list.count; i++) {
//        NSString *num = [list objectAtIndex:1];
//        NSLog(@"%@", num);
//    }
    
//    for (NSString *num in list2) {
//        NSLog (@"%@", num);
//    }
//    
//    NSString *resultStr = @"";
//    for (NSString *key in dic2) {
//        NSString * str = [dic2 objectForKey:key];
//        resultStr = [resultStr stringByAppendingString:[NSString stringWithFormat:@"%@|", str]];
//        }
    NSString *num;
    NSString *num2;
    NSArray *listPractice = @[@"1", @"1", @"3", @"3", @"6", @"7", @"8"];
    
    NSMutableArray *compareResult = [[NSMutableArray alloc] init];
    
    
    
//    for (num in listPractice) {
//        if (![compareResult containsObject:num])
//        {
//            [compareResult addObject:num];
//        }
//        NSLog (@"%@", compareResult);
//    }
//}

//    for (NSInteger i = 0; i < listPractice.count; i++) {
//        compareResult = [listPractice objectAtIndex:i];
//        
//        if (compareResult isEqualToString:[listPractice objectAtIndex:i]) {
//
//        }
//        NSLog(@"%@", num);
//    }
    
//        NSLog(@"%@", numPractice);
    
    for (num in listPractice)
        if (![num2 containsString:num]) {
            [num2 stringByAppendingString:num];
              
            }
    NSLog (@"%@", num2);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
