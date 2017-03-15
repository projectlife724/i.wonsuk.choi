//
//  CustomView.h
//  170310_BlockPractice
//
//  Created by Won Suk Choi on 2017. 3. 10..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import "ViewController.h"

typedef NSString *(^TextBlock)(void);

@interface CustomView : UIView

- (void)changeTextAction:(TextBlock)text;

@end
