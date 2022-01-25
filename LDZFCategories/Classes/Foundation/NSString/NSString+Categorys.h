//
//  NSString+Categorys.h
//  Pods
//
//  Created by zhuyuhui on 2020/9/22.
//

#ifndef NSString_Categorys_h
#define NSString_Categorys_h

#import "NSAttributedString+LdzfSize.h"
#import "NSString+LdzfSize.h"

#import "NSString+LdzfExtension.h"
#import "NSString+LdzfHandle.h"
#import "NSString+LdzfSize.h"
#import "NSString+LdzfValid.h"


NSString* eSafeStr(NSString *str){
    return [NSString ldzf_isEmpty:str] ? @"" : str;
}

#endif /* NSString_Categorys_h */
