
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSMutableArray (SoloSafe)
-(void)solo_addObj:(nullable id)i;

-(void)solo_addString:(nullable NSString*)i;

-(void)solo_addBool:(BOOL)i;

-(void)solo_addInt:(int)i;

-(void)solo_addInteger:(NSInteger)i;

-(void)solo_addUnsignedInteger:(NSUInteger)i;

-(void)solo_addCGFloat:(CGFloat)f;

-(void)solo_addChar:(char)c;

-(void)solo_addFloat:(float)i;

-(void)solo_addPoint:(CGPoint)o;

-(void)solo_addSize:(CGSize)o;

-(void)solo_addRect:(CGRect)o;

@end

NS_ASSUME_NONNULL_END
