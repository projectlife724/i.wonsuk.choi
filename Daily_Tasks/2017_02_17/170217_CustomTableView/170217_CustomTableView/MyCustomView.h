//
//  MyCustomView.h
//  170217_CustomTableView
//
//  Created by Won Suk Choi on 2017. 2. 17..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyCustomView : UIView

- (void)updateLayout;

- (void)setDataWithImgName: (NSString *)imgUrlStr
                      name:(NSString *)nameStr
                       msg:(NSString *)msgStr;

@end
