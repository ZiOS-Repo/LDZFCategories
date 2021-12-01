//
//  NSObject+AmenController.h
//  LDZFCategories
//
//  Created by zhuyuhui on 2021/12/1.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (AmenController)
- (nullable UIViewController *)amen_topViewController;
- (nullable UIViewController *)amen_topViewController:(UIViewController *)rootViewController;
@end

NS_ASSUME_NONNULL_END
