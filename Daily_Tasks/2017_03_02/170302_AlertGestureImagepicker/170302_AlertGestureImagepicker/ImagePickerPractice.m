//
//  ImagePickerPractice.m
//  170302_AlertGestureImagepicker
//
//  Created by Won Suk Choi on 2017. 3. 2..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import "ImagePickerPractice.h"

@interface ImagePickerPractice ()
<UIImagePickerControllerDelegate, UIGestureRecognizerDelegate, UINavigationControllerDelegate>

@property IBOutlet UITapGestureRecognizer* tapGesture;
@property UIAlertController * alertController;
@property IBOutlet UIImageView *imgView;
@property UIImagePickerController *imagePicker;


@end

@implementation ImagePickerPractice

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
    
//    UIImagePickerController *imgPicker = [[UIImagePickerController alloc] init];
//    imgPicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
//    imgPicker.delegate = self;
//    imgPicker.allowsEditing = NO;
//    
//    self.imagePicker = imgPicker;
    
//
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTap:)];
    [self.view addGestureRecognizer:tapGesture];
    tapGesture.delegate = self;
    self.tapGesture = tapGesture;

}

-(void)handleTap:(UITapGestureRecognizer*)sender
{
    //[self presentViewController:self.alertController animated:YES completion:nil];
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Exercise" message:@"message" preferredStyle:UIAlertControllerStyleActionSheet];
    //self.imagePicker = imgPicker;
    
    UIAlertAction *alertAction = [UIAlertAction actionWithTitle:@"Select Image" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
        //[self presentViewController:self.imagePicker animated:YES completion:nil];
        
        UIImagePickerController *imgPicker = [[UIImagePickerController alloc] init];
            imgPicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
            imgPicker.delegate = self;
            imgPicker.allowsEditing = YES;
        
        [self presentViewController:imgPicker animated:YES completion:nil];
        
    }];
    [alertController addAction:alertAction];
    
    //[alertController ]
    [self presentViewController:alertController animated:YES completion:nil];
}


//-(BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch
//{
//    [touch.view h];
//    
//    return YES;
//}


-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info
{
    NSLog(@"info %@", info);
    UIImage *image = [info objectForKey:UIImagePickerControllerOriginalImage];
    self.imgView.image = image;
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    [picker dismissViewControllerAnimated:YES completion:nil];
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
