//
//  AppDelegate.m
//  170224_LogInPageDataCenter
//
//  Created by Won Suk Choi on 2017. 2. 24..
//  Copyright © 2017년 Won Suk Choi. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    
    UIViewController *vController1 = [storyBoard instantiateViewControllerWithIdentifier:@"ViewController"];
    UIViewController *vController2 = [storyBoard instantiateViewControllerWithIdentifier:@"LogInViewController"];
    UIViewController *vController3 = [storyBoard instantiateViewControllerWithIdentifier:@"SettingsViewController"];
    UIViewController *vController4 = [storyBoard instantiateViewControllerWithIdentifier:@"MainPageViewController"];
    
    UINavigationController *naviController1 = [[UINavigationController alloc] initWithRootViewController:vController1];
    UINavigationController *naviController2 = [[UINavigationController alloc] initWithRootViewController:vController2];
    UINavigationController *naviController3 = [[UINavigationController alloc] initWithRootViewController:vController3];
    UINavigationController *naviController4 = [[UINavigationController alloc] initWithRootViewController:vController4];
    
    UITabBarController *tabBar = [[UITabBarController alloc] init];
    tabBar.viewControllers = @[naviController1, naviController2, naviController3, naviController4];
    
    UITabBarItem *item1 = [[UITabBarItem alloc] initWithTitle:@"Newsfeed" image:[UIImage imageNamed:@"image1"] selectedImage:[UIImage imageNamed:@"image2"]];
    UITabBarItem *item2 = [[UITabBarItem alloc] initWithTitle:@"Newsfeed" image:[UIImage imageNamed:@"image1"] selectedImage:[UIImage imageNamed:@"image2"]];
    UITabBarItem *item3 = [[UITabBarItem alloc] initWithTitle:@"Newsfeed" image:[UIImage imageNamed:@"image1"] selectedImage:[UIImage imageNamed:@"image2"]];
    UITabBarItem *item4 = [[UITabBarItem alloc] initWithTitle:@"Newsfeed" image:[UIImage imageNamed:@"image1"] selectedImage:[UIImage imageNamed:@"image2"]];
    
    naviController1.tabBarItem = item1;
    naviController2.tabBarItem = item2;
    naviController3.tabBarItem = item3;
    naviController4.tabBarItem = item4;
    
    
    self.window.rootViewController = tabBar;
    [self.window makeKeyAndVisible];
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
