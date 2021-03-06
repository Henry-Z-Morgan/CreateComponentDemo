//
//  AppDelegate.m
//  CreateComponentDemo
//
//  Created by Barry on 2018/5/10.
//  Copyright © 2018年 Barry. All rights reserved.
//

#import "AppDelegate.h"
#import "MPStartViewController.h"
#import "MPBaseService.h"
#import "CNNetworkConfig.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    //界面初始化
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    [self openAppInitControllerLaunchOptions:launchOptions];
    
    [self networkConfig];
    
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)openAppInitControllerLaunchOptions:(NSDictionary *)launchOptions {
    MPStartViewController *helpVC = [[MPStartViewController alloc] init];
//    helpVC.window = self.window;
//    helpVC.launchOptions = launchOptions;
    UINavigationController * nav =  [[UINavigationController alloc] initWithRootViewController:helpVC];
    self.window.rootViewController = nav;
}

//网络请求地址统一配置
- (void)networkConfig {
    CNNetworkConfig *config = [CNNetworkConfig sharedConfig];
    //主服务请求地址
    config.baseUrl = @"https://apis.1dabang.cn/v2/remote";
    //副服务请求地址
//    config.cdnUrl = kCDNHostPath;
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
