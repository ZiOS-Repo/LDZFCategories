//
//  NSObject+AmenJson.h
//  LDZFCategories
//
//  Created by zhuyuhui on 2021/11/25.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (AmenJson)
/// 将可 JSON 化对象转化成 JSON 字符串
- (NSString *)amen_JSONString;

@end

@interface NSString (AmenJson)
/// 将JSON 字符串转化成序列化对象
- (id)amen_JSONValue;
@end

NS_ASSUME_NONNULL_END
