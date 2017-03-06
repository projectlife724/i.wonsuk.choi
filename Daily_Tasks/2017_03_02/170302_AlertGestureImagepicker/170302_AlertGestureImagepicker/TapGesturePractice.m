//
//  TapGesturePractice.m
//  170302_AlertGestureImagepicker
//
//  Created by Won Suk Choi on 2017. 3. 2..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import "TapGesturePractice.h"

@interface TapGesturePractice ()
<UIGestureRecognizerDelegate>

@property (nonatomic, weak) IBOutlet UILabel* Label1;
@property (nonatomic, weak) IBOutlet UILabel *Label2;
@property (nonatomic) NSInteger numTouch;
@property (nonatomic) CGPoint touchPoint;

@end

@implementation TapGesturePractice

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

//    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTapGesture:)];
//    tapGesture.delegate = self;
//    [self.view addGestureRecognizer:tapGesture];
////    self.numTouch = tapGesture.numberOfTouches;
////    self.Label1.text = @"횟수 %d", tapGesture.numberOfTouches;
////    [tapGesture locationInView:self.view];
}


//-(void)handleTapGesture: (UITapGestureRecognizer *)sender
//{
//    self.Label1.text = [NSString stringWithFormat:@"횟수 : %ld", self.numTouch];
//    
//    self.Label2.text = [NSString stringWithFormat:@"(%lf : %lf)", self.touchPoint.x, self.touchPoint.y];
//    
//}

-(BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch
{
//    self.numTouch = touch.tapCount;
//    self.touchPoint = [touch locationInView:touch.view];
    
    return YES;
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
