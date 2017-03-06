//
//  DataCenter.m
//  170303_PListPractice
//
//  Created by Won Suk Choi on 2017. 3. 3..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import "DataCenter.h"


@interface DataCenter ()
@property NSMutableArray *rootArray;

@end

@implementation DataCenter

+ (instancetype)defaultData
{
    static DataCenter *dataCenter = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        dataCenter = [[DataCenter alloc] init];
    });
    
    return dataCenter;
}


- (instancetype)init
{
    self = [super init];
    if (self) {
//        [self setFriendsData];

        [self setDocument];
        
        [self plistLoad];
    }
    return self;
}



//- (void)setFriendsData
//{
//    /*
//    self.friends = @{@"item 0" : @[@"Name", @"PhoneNumber", @"Address"],
//                     @"item 1" : @[@"Name", @"PhoneNumber", @"Address"],
//                     @"item 2" : @[@"Name", @"PhoneNumber", @"Address"],
//                     @"item 3" : @[@"Name", @"PhoneNumber", @"Address"],
//                     @"item 4" : @[@"Name", @"PhoneNumber", @"Address"],
//                     @"item 5" : @[@"Name", @"PhoneNumber", @"Address"]};
//     */
//
//    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"Sample" ofType:@"plist"];
//    self.friends = [NSArray arrayWithContentsOfFile:filePath];
//}

- (void)setDocument
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *basePath = [paths objectAtIndex:0];
    NSString *docuPath = [basePath stringByAppendingPathComponent:@"Sample.plist"];
    NSFileManager *fileManager = [NSFileManager defaultManager];
    
    if (![fileManager fileExistsAtPath:docuPath]) {
        NSString *bundlePath = [[NSBundle mainBundle] pathForResource:@"Sample" ofType:@"plist"];
        [fileManager copyItemAtPath:bundlePath toPath:docuPath error:nil];
        
    }
    
//    NSMutableArray *info = [NSDictionary dictionaryWithContentsOfFile:docuPath];
    
}



- (void)plistLoad{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *basePath = [paths objectAtIndex:0];
    NSString *docuPath = [basePath stringByAppendingPathComponent:@"Sample.plist"];
    
    self.rootArray = [NSMutableArray arrayWithContentsOfFile:docuPath];

}

- (void)saveDic:(NSMutableDictionary *)mDic{
    
    
    [self.rootArray addObject:mDic];
    NSLog(@"%@", self.rootArray);
    
    [self savePlist];
}

- (void)savePlist  {
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *basePath = [paths objectAtIndex:0];
    NSString *docuPath = [basePath stringByAppendingPathComponent:@"Sample.plist"];
    
    [self.rootArray writeToFile:docuPath atomically:NO];
    
}
@end
