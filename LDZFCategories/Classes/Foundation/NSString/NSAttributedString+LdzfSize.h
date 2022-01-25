
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <CoreText/CoreText.h>

@interface NSAttributedString (LdzfSize)

/**
 *  Get the string's height with the fixed width.
 *
 *  @param width     Fixed width.
 *
 *  @return String's height.
 */
- (CGFloat)ldzf_heightWithFixedWidth:(CGFloat)width;

/**
 *  Get the string's width.
 *
 *  @return String's width.
 */
- (CGFloat)ldzf_width;

/**
 *  Get the coreText string's width.
 *
 *  @return String's width.
 */
- (CGFloat)ldzf_coreTextHeightWithFixedWidth:(CGFloat)width;

@end
