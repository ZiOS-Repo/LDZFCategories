

#import "NSArray+SoloSafe.h"

@implementation NSArray (SoloSafe)
- (nullable id)solo_objectWithIndex:(NSUInteger)index{
    if (index <self.count) {
        return self[index];
    }else{
        return nil;
    }
}

- (nullable NSString*)solo_stringWithIndex:(NSUInteger)index
{
    id value = [self solo_objectWithIndex:index];
    if (value == nil || value == [NSNull null] || [[value description] isEqualToString:@"<null>"])
    {
        return nil;
    }
    if ([value isKindOfClass:[NSString class]]) {
        return (NSString*)value;
    }
    if ([value isKindOfClass:[NSNumber class]]) {
        return [value stringValue];
    }
    
    return nil;
}


- (nullable NSNumber*)solo_numberWithIndex:(NSUInteger)index
{
    id value = [self solo_objectWithIndex:index];
    if ([value isKindOfClass:[NSNumber class]]) {
        return (NSNumber*)value;
    }
    if ([value isKindOfClass:[NSString class]]) {
        NSNumberFormatter * f = [[NSNumberFormatter alloc] init];
        [f setNumberStyle:NSNumberFormatterDecimalStyle];
        return [f numberFromString:(NSString*)value];
    }
    return nil;
}

- (nullable NSDecimalNumber *)solo_decimalNumberWithIndex:(NSUInteger)index{
    id value = [self solo_objectWithIndex:index];
    
    if ([value isKindOfClass:[NSDecimalNumber class]]) {
        return value;
    } else if ([value isKindOfClass:[NSNumber class]]) {
        NSNumber * number = (NSNumber*)value;
        return [NSDecimalNumber decimalNumberWithDecimal:[number decimalValue]];
    } else if ([value isKindOfClass:[NSString class]]) {
        NSString * str = (NSString*)value;
        return [str isEqualToString:@""] ? nil : [NSDecimalNumber decimalNumberWithString:str];
    }
    return nil;
}

- (nullable NSArray*)solo_arrayWithIndex:(NSUInteger)index
{
    id value = [self solo_objectWithIndex:index];
    if (value == nil || value == [NSNull null])
    {
        return nil;
    }
    if ([value isKindOfClass:[NSArray class]])
    {
        return value;
    }
    return nil;
}


- (nullable NSDictionary*)solo_dictionaryWithIndex:(NSUInteger)index
{
    id value = [self solo_objectWithIndex:index];
    if (value == nil || value == [NSNull null])
    {
        return nil;
    }
    if ([value isKindOfClass:[NSDictionary class]])
    {
        return value;
    }
    return nil;
}

- (NSInteger)solo_integerWithIndex:(NSUInteger)index
{
    id value = [self solo_objectWithIndex:index];
    if (value == nil || value == [NSNull null])
    {
        return 0;
    }
    if ([value isKindOfClass:[NSString class]] || [value isKindOfClass:[NSNumber class]])
    {
        return [value integerValue];
    }
    return 0;
}
- (NSUInteger)solo_unsignedIntegerWithIndex:(NSUInteger)index
{
    id value = [self solo_objectWithIndex:index];
    if (value == nil || value == [NSNull null])
    {
        return 0;
    }
    if ([value isKindOfClass:[NSString class]] || [value isKindOfClass:[NSNumber class]])
    {
        return [value unsignedIntegerValue];
    }
    return 0;
}
- (BOOL)solo_boolWithIndex:(NSUInteger)index
{
    id value = [self solo_objectWithIndex:index];
    
    if (value == nil || value == [NSNull null])
    {
        return NO;
    }
    if ([value isKindOfClass:[NSNumber class]])
    {
        return [value boolValue];
    }
    if ([value isKindOfClass:[NSString class]])
    {
        return [value boolValue];
    }
    return NO;
}
- (int16_t)solo_int16WithIndex:(NSUInteger)index
{
    id value = [self solo_objectWithIndex:index];
    
    if (value == nil || value == [NSNull null])
    {
        return 0;
    }
    if ([value isKindOfClass:[NSNumber class]])
    {
        return [value shortValue];
    }
    if ([value isKindOfClass:[NSString class]])
    {
        return [value intValue];
    }
    return 0;
}
- (int32_t)solo_int32WithIndex:(NSUInteger)index
{
    id value = [self solo_objectWithIndex:index];
    
    if (value == nil || value == [NSNull null])
    {
        return 0;
    }
    if ([value isKindOfClass:[NSNumber class]] || [value isKindOfClass:[NSString class]])
    {
        return [value intValue];
    }
    return 0;
}
- (int64_t)solo_int64WithIndex:(NSUInteger)index
{
    id value = [self solo_objectWithIndex:index];
    
    if (value == nil || value == [NSNull null])
    {
        return 0;
    }
    if ([value isKindOfClass:[NSNumber class]] || [value isKindOfClass:[NSString class]])
    {
        return [value longLongValue];
    }
    return 0;
}

- (char)solo_charWithIndex:(NSUInteger)index{
    
    id value = [self solo_objectWithIndex:index];
    
    if (value == nil || value == [NSNull null])
    {
        return 0;
    }
    if ([value isKindOfClass:[NSNumber class]] || [value isKindOfClass:[NSString class]])
    {
        return [value charValue];
    }
    return 0;
}

- (short)solo_shortWithIndex:(NSUInteger)index
{
    id value = [self solo_objectWithIndex:index];
    
    if (value == nil || value == [NSNull null])
    {
        return 0;
    }
    if ([value isKindOfClass:[NSNumber class]])
    {
        return [value shortValue];
    }
    if ([value isKindOfClass:[NSString class]])
    {
        return [value intValue];
    }
    return 0;
}
- (float)solo_floatWithIndex:(NSUInteger)index
{
    id value = [self solo_objectWithIndex:index];
    
    if (value == nil || value == [NSNull null])
    {
        return 0;
    }
    if ([value isKindOfClass:[NSNumber class]] || [value isKindOfClass:[NSString class]])
    {
        return [value floatValue];
    }
    return 0;
}
- (double)solo_doubleWithIndex:(NSUInteger)index
{
    id value = [self solo_objectWithIndex:index];
    
    if (value == nil || value == [NSNull null])
    {
        return 0;
    }
    if ([value isKindOfClass:[NSNumber class]] || [value isKindOfClass:[NSString class]])
    {
        return [value doubleValue];
    }
    return 0;
}

- (nullable NSDate *)solo_dateWithIndex:(NSUInteger)index dateFormat:(NSString *)dateFormat {
    NSDateFormatter *formater = [[NSDateFormatter alloc]init];
    formater.dateFormat = dateFormat;
    id value = [self solo_objectWithIndex:index];
    
    if (value == nil || value == [NSNull null])
    {
        return nil;
    }
    
    if ([value isKindOfClass:[NSString class]] && ![value isEqualToString:@""] && !dateFormat) {
        return [formater dateFromString:value];
    }
    return nil;
}

//CG
- (CGFloat)solo_CGFloatWithIndex:(NSUInteger)index
{
    id value = [self solo_objectWithIndex:index];

    CGFloat f = [value doubleValue];
    return f;
}

- (CGPoint)solo_pointWithIndex:(NSUInteger)index
{
    id value = [self solo_objectWithIndex:index];
    if (value == nil || value == [NSNull null]){
        return CGPointZero;
    }
    CGPoint point = CGPointFromString(value);
    return point;
}
- (CGSize)solo_sizeWithIndex:(NSUInteger)index
{
    id value = [self solo_objectWithIndex:index];
    if (value == nil || value == [NSNull null]){
        return CGSizeZero;
    }
    CGSize size = CGSizeFromString(value);
    return size;
}
- (CGRect)solo_rectWithIndex:(NSUInteger)index
{
    id value = [self solo_objectWithIndex:index];
    if (value == nil || value == [NSNull null]){
        return CGRectZero;
    }
    CGRect rect = CGRectFromString(value);
    return rect;
}
@end