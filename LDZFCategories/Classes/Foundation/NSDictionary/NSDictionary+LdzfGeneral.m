//
//  NSDictionary+LdzfGeneral.m
//  LDZFCategories
//
//  Created by zhuyuhui on 2022/1/25.
//

#import "NSDictionary+LdzfGeneral.h"

@implementation NSDictionary (LdzfGeneral)
/// 判断字典是否为空
+ (BOOL)ldzf_isEmpty:(NSDictionary *)dictionary {
    if (!dictionary) {return YES;}
    if ([dictionary isKindOfClass:[NSNull class]]) {return YES;}
    if (![dictionary isKindOfClass:[NSDictionary class]]) {return YES;}
    if (!dictionary.count) {return YES;}
    return NO;
}
@end
