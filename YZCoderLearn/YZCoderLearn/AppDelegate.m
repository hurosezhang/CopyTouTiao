//
//  AppDelegate.m
//  YZCoderLearn
//
//  Created by jonzhang on 2019/5/29.
//  Copyright © 2019 xinmei. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    UITabBarController * tabBarController = [[UITabBarController alloc] init];
    
  ViewController   * viewController = [[ViewController alloc] init];
    UINavigationController * NavigationController =[[UINavigationController alloc] initWithRootViewController:viewController ];
//    UIViewController *viewController1 = [[UIViewController alloc] init];
    NavigationController.tabBarItem.title = @"新闻";
    NavigationController.view.backgroundColor= [UIColor purpleColor];
    NavigationController.tabBarItem.image = [UIImage imageNamed:@"icon.bundle/page@2x.png"];
    NavigationController.tabBarItem.selectedImage = [UIImage imageNamed:@"icon.bundle/page_selected@2x.png"];
    
    UIViewController *viewController2 = [[UIViewController alloc] init];
    viewController2.tabBarItem.title = @"视频";
    viewController2.view.backgroundColor= [UIColor blueColor];
    viewController2.tabBarItem.image = [UIImage imageNamed:@"icon.bundle/video@2x.png"];
    viewController2.tabBarItem.selectedImage = [UIImage imageNamed:@"icon.bundle/video_selected@2x.png"];
    
    UIViewController *viewController3 = [[UIViewController alloc] init];
    viewController3.tabBarItem.title = @"推荐";
    viewController3.view.backgroundColor= [UIColor yellowColor];
    viewController3.tabBarItem.image = [UIImage imageNamed:@"icon.bundle/like@2x.png"];
    viewController3.tabBarItem.selectedImage = [UIImage imageNamed:@"icon.bundle/like_selected@2x.png"];
    
    UIViewController *viewController4 = [[UIViewController alloc] init];
    viewController4.tabBarItem.title = @"我的";
    viewController4.view.backgroundColor= [UIColor lightGrayColor];
    viewController4.tabBarItem.image = [UIImage imageNamed:@"icon.bundle/home@2x.png"];
    viewController4.tabBarItem.selectedImage = [UIImage imageNamed:@"icon.bundle/home_selected@2x.png"];
    
    tabBarController.viewControllers = @[NavigationController,viewController2,viewController3,viewController4];
    self.window.rootViewController = tabBarController;
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
