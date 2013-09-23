//
//  HYAppDelegate.m
//  HYUtilsDemo
//
//  Created by Hiroki Yoshifuji on 2013/09/23.
//  Copyright (c) 2013年 Hiroki Yoshifuji. All rights reserved.
//

#import "HYAppDelegate.h"

#import <DDTTYLogger.h>
#import <DDFileLogger.h>

@implementation HYAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    
    [self setupLogger];
    LOGTrace;
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


- (void)setupLogger
{
    DDFileLogger *fileLogger = [[DDFileLogger alloc] init];
    fileLogger.rollingFrequency                       = 60 * 60 * 24;
    fileLogger.logFileManager.maximumNumberOfLogFiles = 7;
    [fileLogger setLogFormatter:[[LogFormatter alloc] init]];
    [DDLog addLogger:fileLogger];
    
    DDTTYLogger *logger = [DDTTYLogger sharedInstance];
    [logger setLogFormatter:[[LogFormatter alloc] init]];
    [logger setColorsEnabled:YES];
    [logger setForegroundColor:[UIColor redColor] backgroundColor:nil forFlag:
     LOG_FLAG_ERROR];
    [logger setForegroundColor:[UIColor orangeColor] backgroundColor:nil forFlag:
     LOG_FLAG_WARN];
    [logger setForegroundColor:[UIColor blueColor] backgroundColor:nil forFlag:
     LOG_FLAG_INFO];
    
    [DDLog addLogger:logger];
}

@end
