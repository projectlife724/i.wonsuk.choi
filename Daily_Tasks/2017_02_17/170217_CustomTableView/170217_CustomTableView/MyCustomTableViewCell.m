//
//  MyCustomTableViewCell.m
//  170217_CustomTableView
//
//  Created by Won Suk Choi on 2017. 2. 17..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import "MyCustomTableViewCell.h"

@interface MyCustomTableViewCell ()

// 프로필 이미지뷰
@property (nonatomic, weak) UIImageView *profileImgView;

// 레이블을 담을 컨테이너 뷰
@property (nonatomic, weak) UIView *profileTextContainer;

// 네임 레이블
@property (nonatomic, weak) UILabel *titleLB;
@property (nonatomic, weak) UILabel *nameLB;

// 자기소개 레이블
@property (nonatomic, weak) UILabel *profileLB;


@end

@implementation MyCustomTableViewCell


// 초기화 메소드  
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        [self createSubViews];
        [self updateLayout];
        [self test];
        
    }
    return self;
}


- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    // 스토리보드 할 때 사용한다.ㅋㅋ
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


-(void)layoutSubviews
{
    [self updateLayout];
}


- (void)createSubViews
{
    UIImageView *profileImgView = [[UIImageView alloc] init];
    profileImgView.layer.cornerRadius = 50;
    profileImgView.clipsToBounds = YES;
    
    [self addSubview:profileImgView];
    self.profileImgView = profileImgView;
    
    UIView *profileTextContainer = [[UIView alloc] init];
    [self addSubview:profileTextContainer];
    self.profileTextContainer = profileTextContainer;
    
    UILabel *titleLB = [[UILabel alloc] init];
    titleLB.text = @"Profile";
    titleLB.textColor = [UIColor lightGrayColor];
    titleLB.textAlignment = NSTextAlignmentRight;
    titleLB.font = [UIFont systemFontOfSize:9];
    [profileTextContainer addSubview:titleLB];
    self.titleLB = titleLB;
    
    UILabel *nameLB = [[UILabel alloc] init];
    nameLB.textColor = [UIColor blackColor];
    nameLB.textAlignment = NSTextAlignmentCenter;
    nameLB.font = [UIFont boldSystemFontOfSize:20];
    [profileTextContainer addSubview:nameLB];
    self.nameLB = nameLB;
    
    UILabel *profileLB = [[UILabel alloc] init];
    profileLB.numberOfLines = 0;
    profileLB.lineBreakMode = NSLineBreakByWordWrapping;
    [self addSubview:profileLB];
    self.profileLB = profileLB;
    
}

// 모든 뷰의 레이아웃에 해당하는 행동을 한다.
- (void)updateLayout
{
    const CGFloat MARGIN = 15;
    
    CGFloat offsetX = MARGIN;
    CGFloat offsetY = MARGIN;
    
    
    // 프로필 이미지
    self.profileImgView.frame = CGRectMake(offsetX, offsetY, 100, 100);
    offsetX += self.profileImgView.frame.size.width;
    
    // 텍스트 네임 부분
    self.profileTextContainer.frame = CGRectMake(offsetX, offsetY, self.frame.size.width - offsetX - MARGIN, 100);
    // 텍스트컨테이너 sub 부분
    // self.titleLB
    // self.profileLB
    
    
    
    offsetX = MARGIN;
    offsetY = offsetY + self.profileImgView.frame.size.height;
    
    // 텍스트 디테일 부분
    self.profileLB.frame = CGRectMake(offsetX, offsetY, self.frame.size.width - (MARGIN * 2), self.frame.size.height - offsetY - MARGIN);
}


- (void)test
{
    self.backgroundColor = [UIColor blackColor];
    self.profileImgView.backgroundColor = [UIColor yellowColor];
    self.profileTextContainer.backgroundColor = [UIColor blueColor];
    self.profileLB.backgroundColor = [UIColor redColor];
}


- (void)setDataWithImgName: (NSString *)imgUrlStr
                      name:(NSString *)nameStr
                       msg:(NSString *)msgStr
{
    self.profileImgView.image = [UIImage imageNamed:imgUrlStr];
    self.nameLB.text = nameStr;
    self.profileLB.text = msgStr;
}



@end
