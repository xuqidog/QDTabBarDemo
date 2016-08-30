//
//  TabBarViewController.m
//  QDTabBarDemo
//
//  Created by xuqidong on 16/8/30.
//  Copyright © 2016年 xuqidong. All rights reserved.
//

#import "TabBarViewController.h"
#import "ViewController.h"
#import "HomeController.h"

@interface TabBarViewController ()

@end

@implementation TabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self setupTabBarChildController];
}

- (void)setupTabBarChildController {
    
    NSArray *imageArray = @[@"home", @"category", @"center", @"cart", @"mine"];
    NSArray *titleArray = @[@"首页", @"分类", @"", @"购物车", @"我"];
    
    HomeController *home = [HomeController new];
    ViewController *vc = [ViewController new];
    ViewController *vc1 = [ViewController new];
    ViewController *vc2 = [ViewController new];
    ViewController *vc3 = [ViewController new];
    NSArray *vcArr = @[home,vc,vc1,vc2,vc3];
    
    
    for (int i = 0; i < imageArray.count; i++) {
        UIViewController *vc = vcArr[i];
//        [vc.view setBackgroundColor:[UIColor whiteColor]];
        
        vc.tabBarItem.image = [[UIImage imageNamed:imageArray[i]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        vc.tabBarItem.selectedImage = [[UIImage imageNamed:[imageArray[i] stringByAppendingString:@"_select"]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        vc.title = titleArray[i];
        
        if (i == 3) vc.tabBarItem.badgeValue = @"99";
        UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
        [self addChildViewController:nav];
    }
}

@end
