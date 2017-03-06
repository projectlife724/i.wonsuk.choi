//
//  ViewController.m
//  170302_AlertGestureImagepicker
//
//  Created by Won Suk Choi on 2017. 3. 2..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
<UIGestureRecognizerDelegate, UIAlertViewDelegate>

@property CGFloat lastScale;

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIPinchGestureRecognizer *pinchGesture = [[UIPinchGestureRecognizer alloc] initWithTarget:self action:@selector(handlePinch:)];
    pinchGesture.delegate = self;
    [self.view addGestureRecognizer:pinchGesture];
    
    
}


- (void)handlePinch:(UIPinchGestureRecognizer *)sender;
{
    
    if([sender state] == UIGestureRecognizerStateBegan) {
        // Reset the last scale, necessary if there are multiple objects with different scales.
        self.lastScale = [sender scale];
    }
    
    if ([sender state] == UIGestureRecognizerStateBegan ||
        [sender state] == UIGestureRecognizerStateChanged) {
        
        CGFloat currentScale = [[[sender view].layer valueForKeyPath:@"transform.scale"] floatValue];
        
        // Constants to adjust the max/min values of zoom.
        const CGFloat kMaxScale = 2.0;
        const CGFloat kMinScale = 1.0;
        
        CGFloat newScale = 1 -  (self.lastScale - [sender scale]); // new scale is in the range (0-1)
        newScale = MIN(newScale, kMaxScale / currentScale);
        newScale = MAX(newScale, kMinScale / currentScale);
        CGAffineTransform transform = CGAffineTransformScale([[sender view] transform], newScale, newScale);
        [sender view].transform = transform;
        
        self.lastScale = [sender scale];  // Store the previous. scale factor for the next pinch gesture call
    }
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
