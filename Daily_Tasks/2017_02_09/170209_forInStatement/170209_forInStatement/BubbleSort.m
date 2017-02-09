//
//  BubbleSort.m
//  170209_forInStatement
//
//  Created by Won Suk Choi on 2017. 2. 9..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import "BubbleSort.h"

@interface BubbleSort ()

@property NSString *num;
@property NSString *num2;

@end

@implementation BubbleSort

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSArray *)bubbleSort:(NSArray *)unsortedList
{
    for (NSUInteger i = 0; i < [unsortedList count]; i++) {
        for (NSUInteger j = 0; [unsortedList count] - 1; j++) {
            if ([unsortedList objectAtIndex:i] > unsortedList objectAtIndex:i + 1 ) {
                <#statements#>
            }
        }
    }
}

@end
