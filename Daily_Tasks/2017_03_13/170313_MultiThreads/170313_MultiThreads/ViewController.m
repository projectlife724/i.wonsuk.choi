//
//  ViewController.m
//  170313_MultiThreads
//
//  Created by Won Suk Choi on 2017. 3. 13..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *startButton;
@property (weak, nonatomic) IBOutlet UILabel *numberLayer;
@property (weak, nonatomic) IBOutlet UILabel *successLabel;
@property (nonatomic) NSThread *thread;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
}
- (IBAction)buttonSelected:(id)sender {
    
    self.thread = [[NSThread alloc] initWithTarget:self selector:@selector(threadAction:) object:self.startButton];
    
    [self.thread start];
    
}

-(void)threadAction:(NSString *)str {
    
    for (NSUInteger i = 0; i <= 50; i++) {
        
        [self performSelectorOnMainThread:@selector(changeText:) withObject:[NSString stringWithFormat:@"%ld",i] waitUntilDone:YES];
        sleep(1);
    }
    
    [self.successLabel setText:@"완료"];
}


-(void)changeText:(NSString *)str  {
    [self.numberLayer setText:str];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
