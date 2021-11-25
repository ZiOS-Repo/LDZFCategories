//
//  NSObject+AmenJson.m
//  LDZFCategories
//
//  Created by zhuyuhui on 2021/11/25.
//

#import "NSObject+AmenJson.h"

@implementation NSObject (AmenJson)
-(NSString *)amen_JSONString
{
    if (!self || ![NSJSONSerialization isValidJSONObject:self]) {
        return nil;
    }
    NSError *err;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:self options:0 error:&err];
    if (err || !jsonData) {
        NSLog(@"json解析失败：%@",err);
        return nil;
    }
    return [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
}
@end


@implementation NSString (AmenJson)
-(id)amen_JSONValue
{
    if (!self) {
        return nil;
    }
    NSData *jsonData = [self dataUsingEncoding:NSUTF8StringEncoding];
    NSError *err;
    id jsonObject = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingMutableContainers error:&err];
    if(err || !jsonObject) {
        NSLog(@"json解析失败：%@",err);
        return nil;
    }
    return jsonObject;
}

@end
