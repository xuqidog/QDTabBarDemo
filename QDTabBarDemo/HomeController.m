//
//  HomeController.m
//  QDTabBarDemo
//
//  Created by xuqidong on 16/8/30.
//  Copyright © 2016年 xuqidong. All rights reserved.
//

#import "HomeController.h"

@implementation HomeController
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeContactAdd];
    [btn addTarget:self action:@selector(push) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    btn.frame = self.view.bounds;
}

- (void)push {
    UIViewController *vc = [UIViewController new];
    vc.view.backgroundColor = [UIColor blackColor];
    vc.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:vc animated:YES];
}
@end
