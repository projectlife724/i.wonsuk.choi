//
//  ViewController.m
//  170315_Network
//
//  Created by Won Suk Choi on 2017. 3. 15..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import "ViewController.h"
#import "CollectionViewCell.h"

@interface ViewController ()
<UICollectionViewDelegate, UICollectionViewDataSource, UINavigationControllerDelegate, UICollectionViewDelegateFlowLayout>

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property (nonatomic) NSArray *dataArray;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    

    self.dataArray = @[@"https://i.ytimg.com/vi/t8HRNctIdFA/maxresdefault.jpg", @"https://i.ytimg.com/vi/MfqGn-2pW8E/maxresdefault.jpg", @"https://scontent-amt2-1.cdninstagram.com/t51.2885-15/s640x640/e15/15046779_935029903265221_7879776713272459264_n.jpg", @"https://i.ytimg.com/vi/LonfcfRXZ8Y/maxresdefault.jpg", @"https://i.ytimg.com/vi/Lj4XwjWw4CA/maxresdefault.jpg", @"https://i.ytimg.com/vi/cbBLtQizxPM/maxresdefault.jpg"];
    
}
    



- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    return CGSizeMake(375, 231);
}




- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return self.dataArray.count;
}



- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath  {
    
    CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    
    cell.imgVIew.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:self.dataArray[indexPath.item]]]];
    
    return cell;
}



//- (void)tryOut:(CollectionViewCell *)cell {
//    
//    NSURL *monthURL = [NSURL URLWithString:@"https://i.ytimg.com/vi/t8HRNctIdFA/maxresdefault.jpg"];
//    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
//    NSURLSessionTask *task = [session dataTaskWithURL:monthURL
//                                             completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response,
//                                                                 NSError * _Nullable error) {
//                                                 
//                                                 if (data) {
//                                                     UIImage *image = [UIImage imageWithData:data];
//                                                     if (image) {
//                                                         dispatch_async(dispatch_get_main_queue(), ^{
//                                                             cell.imgVIew.image = image;
//                                                         });
//                                                     };
//                                                 };
//                                             }];
//    
//    [task resume];
//}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
