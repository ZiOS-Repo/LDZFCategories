

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSArray (SoloSafe)
- (nullable id)solo_objectWithIndex:(NSUInteger)index;

- (nullable NSString*)solo_stringWithIndex:(NSUInteger)index;

- (nullable NSNumber*)solo_numberWithIndex:(NSUInteger)index;

- (nullable NSDecimalNumber *)solo_decimalNumberWithIndex:(NSUInteger)index;

- (nullable NSArray*)solo_arrayWithIndex:(NSUInteger)index;

- (nullable NSDictionary*)solo_dictionaryWithIndex:(NSUInteger)index;

- (NSInteger)solo_integerWithIndex:(NSUInteger)index;

- (NSUInteger)solo_unsignedIntegerWithIndex:(NSUInteger)index;

- (BOOL)solo_boolWithIndex:(NSUInteger)index;

- (int16_t)solo_int16WithIndex:(NSUInteger)index;

- (int32_t)solo_int32WithIndex:(NSUInteger)index;

- (int64_t)solo_int64WithIndex:(NSUInteger)index;

- (char)solo_charWithIndex:(NSUInteger)index;

- (short)solo_shortWithIndex:(NSUInteger)index;

- (float)solo_floatWithIndex:(NSUInteger)index;

- (double)solo_doubleWithIndex:(NSUInteger)index;

- (nullable NSDate *)solo_dateWithIndex:(NSUInteger)index dateFormat:(NSString *)dateFormat;
//CG
- (CGFloat)solo_CGFloatWithIndex:(NSUInteger)index;

- (CGPoint)solo_pointWithIndex:(NSUInteger)index;

- (CGSize)solo_sizeWithIndex:(NSUInteger)index;

- (CGRect)solo_rectWithIndex:(NSUInteger)index;
@end
NS_ASSUME_NONNULL_END
