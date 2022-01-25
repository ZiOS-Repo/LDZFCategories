
#import "NSArray+LdzfGeneral.h"

@implementation NSArray (LdzfGeneral)

- (NSArray *)ldzf_sortNSIndexArray
{
    if (self.count == 0) { return nil; }
    NSSortDescriptor *sorter = [[NSSortDescriptor alloc] initWithKey:@"section" ascending:YES];
    NSSortDescriptor *sorter1 = [[NSSortDescriptor alloc] initWithKey:@"row" ascending:YES];
    NSArray *arr = [self sortedArrayUsingDescriptors:[NSArray arrayWithObjects:sorter,sorter1,nil]];
    return arr;
}

- (id)ldzf_randomObject
{
    if (self.count) {
        return self[arc4random_uniform((u_int32_t)self.count)];
    }
    return nil;
}

+ (BOOL)ldzf_isEmpty:(NSArray *)array {
    if (!array) {return YES;}
    if ([array isKindOfClass:[NSNull class]]) {return YES;}
    if (![array isKindOfClass:[NSArray class]]) {return YES;}
    if (!array.count) {return YES;}
    return NO;
}
@end
