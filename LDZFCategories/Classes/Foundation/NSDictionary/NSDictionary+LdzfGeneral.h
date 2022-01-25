//
//  NSDictionary+LdzfGeneral.h
//  LDZFCategories
//
//  Created by zhuyuhui on 2022/1/25.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSDictionary (LdzfGeneral)
/// 判断字典是否为空
+ (BOOL)ldzf_isEmpty:(NSDictionary *)dictionary;

@end


/// 字典是否为空
BOOL eEmptyDic(NSDictionary *dic){
    return [NSDictionary ldzf_isEmpty:dic];
}

NS_ASSUME_NONNULL_END
