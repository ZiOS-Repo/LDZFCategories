//
//  ICUIButtonExtStyleViewController.m
//  LDZFCategories_Example
//
//  Created by zhuyuhui on 2022/6/14.
//  Copyright © 2022 zhuyuhui434@gmail.com. All rights reserved.
//

#import "ICUIButtonExtStyleViewController.h"
#import <LDZFCategories/LDZFCategories.h>

@interface ICUIButtonExtStyleViewController ()

@end

@implementation ICUIButtonExtStyleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (UIButton *)createBtn {
    UIButton *button = [[UIButton alloc] init];
    button.frame = CGRectMake(0, 0, 100, 44);
    return button;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
