//
//  AppDelegate.m
//  ITGHitTestDemo
//
//  Created by aikucun on 2020/1/7.
//  Copyright © 2020 aikucun. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    ViewController *vc = [[ViewController alloc] init];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
    [nav.navigationBar setBackgroundColor:[UIColor grayColor]];

    _window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    [_window setBackgroundColor:[UIColor whiteColor]];
    [_window setRootViewController:nav];
    [_window makeKeyAndVisible];
    return YES;
}

@end
