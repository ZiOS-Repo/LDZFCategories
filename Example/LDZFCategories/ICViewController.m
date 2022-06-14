//
//  ICViewController.m
//  LDZFCategories
//
//  Created by zhuyuhui434@gmail.com on 10/23/2021.
//  Copyright (c) 2021 zhuyuhui434@gmail.com. All rights reserved.
//

#import "ICViewController.h"
#import <LDZFCommon/LDZFCommon.h>
@interface ICViewController ()<UITableViewDelegate, UITableViewDataSource>
@property(nonatomic, strong) NSMutableArray *dataSource;
@end

@implementation ICViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self createDefaultDataSource];
}

- (void)createDefaultDataSource {
    self.dataSource = [NSMutableArray array];
    [self.dataSource addObjectsFromArray:@[
        @{
            @"title":@"UIButton扩展类展示",
            @"modules":@[
                @{
                    @"title":@"UIButton+Style",
                    @"vcName":@"ICUIButtonExtStyleViewController",
                }
            ]
        }
    ]];
}

#pragma mark - UITableViewDelegate, UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.dataSource.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSDictionary *sectionInfo = self.dataSource[section];
    NSArray *modules = sectionInfo[@"modules"];
    return modules.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *identifier = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    NSDictionary *sectionInfo = self.dataSource[indexPath.section];
    NSArray *modules = sectionInfo[@"modules"];
    NSString *title = modules[indexPath.row][@"title"];
    cell.textLabel.text = title;
    return cell;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    NSDictionary *sectionInfo = self.dataSource[section];
    NSString *title = sectionInfo[@"title"];
    UILabel *header = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 30)];
    header.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.4];
    header.text = title;
    header.font = [UIFont boldSystemFontOfSize:14];
    header.textColor = [UIColor blackColor];
    return header;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 30;
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
    return nil;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return CGFLOAT_MIN;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 44;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSDictionary *sectionInfo = self.dataSource[indexPath.section];
    NSArray *modules = sectionInfo[@"modules"];
    NSString *title = modules[indexPath.row][@"title"];
    NSString *vcName = modules[indexPath.row][@"vcName"];
    UIViewController *vc = [[NSClassFromString(vcName) alloc] init];
    vc.title = title;
    [self.navigationController pushViewController:vc animated:YES];
}

@end
