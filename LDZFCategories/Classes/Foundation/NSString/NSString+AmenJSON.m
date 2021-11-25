//
//  NSString+AmenJSON.m
//  LDZFCategories
//
//  Created by zhuyuhui on 2021/11/25.
//

#import "NSString+AmenJSON.h"

@implementation NSString (AmenJSON)
/// 将可 JSON 化对象转化成 JSON 字符串
- (NSString *)amen_JSONString;
{
    if (!self) {
        return nil;
    }
    NSError *error = nil;
    
    NSData *data= [NSJSONSerialization dataWithJSONObject:self options:NSJSONWritingPrettyPrinted error:&error];
    
    NSString *jsonValue = [[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
    
    return jsonValue;
}

/// 将JSON 字符串转化成序列化对象
- (id)amen_JSONValue;
{
    if (!self) {
        return nil;
    }
    NSData *data= [self dataUsingEncoding:NSUTF8StringEncoding];
    
    NSError *error = nil;
    
    id jsonObject = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&error];
    
    return jsonObject;
}

@end
