//
//  CustomTableViewCell0.m
//  170227_AutoLayout
//
//  Created by Won Suk Choi on 2017. 2. 27..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import "CustomTableViewCell0.h"

@interface CustomTableViewCell0 ()

@property (weak, nonatomic) IBOutlet UIImageView *cellImgView;
@property (weak, nonatomic) IBOutlet UILabel *contentTextLB;
@property (weak, nonatomic) IBOutlet UILabel *dayLB;
@property (weak, nonatomic) IBOutlet UILabel *monthLB;
@property (weak, nonatomic) IBOutlet UILabel *yearLB;
@property (weak, nonatomic) IBOutlet UILabel *tagLB;


@end

@implementation CustomTableViewCell0



- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
