//
//  NSObject+AmenController.m
//  LDZFCategories
//
//  Created by zhuyuhui on 2021/12/1.
//

#import "NSObject+AmenController.h"
#import <UIKit/UIKit.h>

@implementation NSObject (AmenController)
- (nullable UIViewController *)amen_topViewController {
    UIWindow * window = [[UIApplication sharedApplication] keyWindow];
    if (window.windowLevel != UIWindowLevelNormal) {
        NSArray *windows = [[UIApplication sharedApplication] windows];
        for(UIWindow * tmpWin in windows) {
            if (tmpWin.windowLevel == UIWindowLevelNormal) {
                window = tmpWin;
                break;
            }
        }
    }
    return [self amen_topViewController:window.rootViewController];
}

- (nullable UIViewController *)amen_topViewController:(UIViewController *)rootViewController {
    if ([rootViewController isKindOfClass:[UINavigationController class]]) {
        UINavigationController *navigationController = (UINavigationController *)rootViewController;
        return [self amen_topViewController:[navigationController.viewControllers lastObject]];
    }
    if ([rootViewController isKindOfClass:[UITabBarController class]]) {
        UITabBarController *tabController = (UITabBarController *)rootViewController;
        return [self amen_topViewController:tabController.selectedViewController];
    }
    if (rootViewController.presentedViewController) {
        return [self amen_topViewController:rootViewController.presentedViewController];
    }
    return rootViewController;
}

@end
