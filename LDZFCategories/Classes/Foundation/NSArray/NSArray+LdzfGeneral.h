#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSArray (LdzfGeneral)
    
/// 排序对象是NSIndex的数组
- (NSArray *)ldzf_sortNSIndexArray;

/// 返回数组任意位置对象
- (nullable id)ldzf_randomObject;

/// 判断数组是否为空
+ (BOOL)ldzf_isEmpty:(NSArray *)array;

@end

NS_ASSUME_NONNULL_END

