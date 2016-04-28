//
//  TabBarViewController.m
//  TabBarLianXi
//
//  Created by Mac on 16/3/30.
//  Copyright © 2016年 Qi. All rights reserved.
//
#define RGB(r,g,b)    [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1.0]
#define RandomColor  RGB(arc4random_uniform(256), arc4random_uniform(256), arc4random_uniform(256))
#import "TabBarViewController.h"
#import "HomeViewController.h"
#import "MessageViewController.h"
#import "DiscoverViewController.h"
#import "MeViewController.h"
#import "TabBar.h"
@interface TabBarViewController ()

@end

@implementation TabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self addChildViewController:[HomeViewController new] title:@"首页" image:@"tabbar_home.png" selectedImage:@"tabbar_home_selected.png"];
    [self addChildViewController:[MessageViewController new] title:@"消息" image:@"tabbar_message_center" selectedImage:@"tabbar_message_center_selected"];
    [self addChildViewController:[DiscoverViewController new] title:@"发现" image:@"tabbar_discover.png" selectedImage:@"tabbar_discover_selected.png"];
    [self addChildViewController:[MeViewController new] title:@"我" image:@"tabbar_profile.png" selectedImage:@"tabbar_profile_selected.png"];
    


    
    
    self.tabBar.hidden = YES;
    
    TabBar     *tabBar = [[TabBar alloc]init];
    [self setValue:tabBar forKey:@"tabBar"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)addChildViewController:(UIViewController *)childController title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage {
    childController.title = title;
    childController.tabBarItem.image = [UIImage imageNamed:image];
    childController.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImage]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    [childController.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:RGB(123, 123, 123)} forState:UIControlStateNormal];
    [childController.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor orangeColor]} forState:UIControlStateSelected];
    
    UINavigationController    *nav = [[UINavigationController alloc]initWithRootViewController:childController];
    [self addChildViewController:nav];
    
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
