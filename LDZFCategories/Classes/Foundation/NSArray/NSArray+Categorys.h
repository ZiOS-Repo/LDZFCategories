//
//  NSArray+Categorys.h
//  Pods
//
//  Created by zhuyuhui on 2022/1/25.
//

#ifndef NSArray_Categorys_h
#define NSArray_Categorys_h

#import "NSArray+LdzfSafe.h"
#import "NSArray+LdzfGeneral.h"
#import "NSMutableArray+LdzfSafe.h"
#import "NSMutableArray+LdzfGeneral.h"

/// 数组是否为空
BOOL eEmptyArr(NSArray *arr){
    return [NSArray ldzf_isEmpty:arr];
}
#endif /* NSArray_Categorys_h */
