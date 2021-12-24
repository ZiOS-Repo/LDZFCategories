

#import "NSMutableArray+SoloSafe.h"

@implementation NSMutableArray (SoloSafe)
 
-(void)solo_addObj:(nullable id)i{
    if (i!=nil) {
        [self addObject:i];
    }
}
-(void)solo_addString:(nullable NSString*)i
{
    if (i!=nil) {
        [self addObject:i];
    }
}
-(void)solo_addBool:(BOOL)i
{
    [self addObject:@(i)];
}
-(void)solo_addInt:(int)i
{
    [self addObject:@(i)];
}
-(void)solo_addInteger:(NSInteger)i
{
    [self addObject:@(i)];
}
-(void)solo_addUnsignedInteger:(NSUInteger)i
{
    [self addObject:@(i)];
}
-(void)solo_addCGFloat:(CGFloat)f
{
   [self addObject:@(f)];
}
-(void)solo_addChar:(char)c
{
    [self addObject:@(c)];
}
-(void)solo_addFloat:(float)i
{
    [self addObject:@(i)];
}
-(void)solo_addPoint:(CGPoint)o
{
    [self addObject:NSStringFromCGPoint(o)];
}
-(void)solo_addSize:(CGSize)o
{
   [self addObject:NSStringFromCGSize(o)];
}
-(void)solo_addRect:(CGRect)o
{
    [self addObject:NSStringFromCGRect(o)];
}

@end
