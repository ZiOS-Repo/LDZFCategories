//
//  NSDictionary+Categorys.h
//  Pods
//
//  Created by zhuyuhui on 2022/1/25.
//

#ifndef NSDictionary_Categorys_h
#define NSDictionary_Categorys_h

#import "NSDictionary+LdzfGeneral.h"

/// 字典是否为空
BOOL eEmptyDic(NSDictionary *dic){
    return [NSDictionary ldzf_isEmpty:dic];
}

#endif /* NSDictionary_Categorys_h */
