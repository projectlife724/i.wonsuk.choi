//
//  MMTableViewCell.m
//  170217_MyMenu
//
//  Created by Won Suk Choi on 2017. 2. 20..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import "MMTableViewCell.h"

@interface MMTableViewCell ()

@property (nonatomic, weak) UIImageView *backgroundImgView;
@property (nonatomic, weak) UILabel *categoryLB;
@property (nonatomic, weak) UILabel *titleLB;
@property (nonatomic, weak) UILabel * topDetailLB;
@property (nonatomic, weak) UILabel * bottomDetailLB;
@property (nonatomic, weak) UIImageView *contextImgView;
@property (nonatomic, weak) UIButton *markbutton;

@end

@implementation MMTableViewCell


// 초기화 메소드
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self createSubViews];
        [self updateLayout];
    }
    return self;
}




- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}



- (void) createSubViews
{
    
    UIImageView *backgroundImgView = [[UIImageView alloc] init];
    [self addSubview:backgroundImgView];
    self.backgroundImgView = backgroundImgView;
    [backgroundImgView setContentMode:UIViewContentModeScaleToFill];
    [backgroundImgView setImage:[UIImage imageNamed:@"Layout.png"]];
    [backgroundImgView setUserInteractionEnabled:YES];

    UILabel *categoryLB = [[UILabel alloc] init];
    [backgroundImgView addSubview:categoryLB];
    [categoryLB setTextAlignment:NSTextAlignmentCenter];
    self.categoryLB = categoryLB;
    
    UILabel *titleLB = [[UILabel alloc] init];
    [backgroundImgView addSubview:titleLB];
    [titleLB setTextAlignment:NSTextAlignmentCenter];
    self.titleLB = titleLB;
    
    UILabel *topDetailLB = [[UILabel alloc] init];
    [backgroundImgView addSubview:topDetailLB];
    [topDetailLB setTextAlignment:NSTextAlignmentCenter];
    self.topDetailLB = topDetailLB;
    
    UILabel *bottomDetailLB = [[UILabel alloc] init];
    [backgroundImgView addSubview:bottomDetailLB];
    [bottomDetailLB setTextAlignment:NSTextAlignmentCenter];
    self.bottomDetailLB = bottomDetailLB;
    
    UIImageView *contextImgView = [[UIImageView alloc] init];
    [backgroundImgView addSubview:contextImgView];
    self.contextImgView = contextImgView;
    [contextImgView setContentMode:UIViewContentModeScaleToFill];
    
    UIButton *markbutton = [[UIButton alloc] init];
    [backgroundImgView addSubview:markbutton];
    self.markbutton = markbutton;
    [markbutton setImage:[UIImage imageNamed:@"MarkButton.png"] forState:UIControlStateNormal];
    
}


- (void) updateLayout
{
    const CGFloat MARGIN = 15;
    
    
    CGFloat offSetX = 380;
    CGFloat offSetY = 500;
    CGFloat textHeight = 20;
    
    self.markbutton.frame = CGRectMake(MARGIN * 3, 0, MARGIN, MARGIN * 4);
    
    self.backgroundImgView.frame = CGRectMake(0, 10, offSetX, offSetY);
    
    offSetX = self.center.x;
    offSetY = MARGIN * 5;
    
    self.categoryLB.frame = CGRectMake(offSetX - MARGIN*3, offSetY, 90, textHeight);
    
    offSetY += textHeight + MARGIN;
    
    self.titleLB.frame = CGRectMake(offSetX - MARGIN*5, offSetY, 150, textHeight * 2);
    
    offSetY += textHeight * 2 + MARGIN;
    
    self.topDetailLB.frame = CGRectMake(offSetX - MARGIN*7, offSetY, 210, textHeight);
    
    offSetY += textHeight + MARGIN * 2;
    CGFloat imgCube = 270;
    
    self.contextImgView.frame = CGRectMake(offSetX - MARGIN*9, offSetY, imgCube, imgCube);
    
    offSetY += imgCube + MARGIN * 2;
    
    self.bottomDetailLB.frame = CGRectMake(offSetX - MARGIN*7, offSetY, 210, textHeight);
    
}

@end
