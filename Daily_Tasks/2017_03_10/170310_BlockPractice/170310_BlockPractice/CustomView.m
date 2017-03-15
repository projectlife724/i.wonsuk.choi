//
//  CustomView.m
//  170310_BlockPractice
//
//  Created by Won Suk Choi on 2017. 3. 10..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import "CustomView.h"

@interface CustomView ()


@property void (^changeTextAction)(void);
@property (weak, nonatomic) IBOutlet UILabel *textLabel;
@property (weak, nonatomic) IBOutlet UIButton *textButton;
@property TextBlock newText;

@end

@implementation CustomView

- (void)changeTextAction:(TextBlock)text;
{
    self.newText = text;
}

- (IBAction)selector:(id)sender {
    
    self.textLabel.text = self.newText();
}



@end
