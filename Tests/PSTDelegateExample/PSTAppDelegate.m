//
//  PSTAppDelegate.m
//  PSTDelegateExample
//
//  Created by Peter Steinberger on 30/07/13.
//  Copyright (c) 2013 Peter Steinberger. All rights reserved.
//

#import "PSTAppDelegate.h"

@implementation PSTAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    
    if([[UIDevice currentDevice].systemVersion floatValue] >= 9.0)
    {
        // iOS 9 requires rootViewController for any UIWindow and will crash otherwise
        self.window.rootViewController = [UIViewController new];
    }

    [self.window makeKeyAndVisible];
    return YES;
}

@end
