//
//  TabBarViewController.m
//  FFTiKu
//
//  Created by tiny on 2018/1/17.
//  Copyright © 2018年 tiny. All rights reserved.
//

#import "TabBarViewController.h"
#import "MainViewController.h"
#import "AboutViewController.h"

@interface TabBarViewController ()

@end

@implementation TabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    MainViewController *main = [[MainViewController alloc] init];
    main.tabBarItem.title = @"主页";
    main.tabBarItem.image = [[UIImage imageNamed:@"b2_home_tabbar_icon_home_normal"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    main.tabBarItem.selectedImage = [[UIImage imageNamed:@"b2_home_tabbar_icon_home_highlight"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    AboutViewController *about = [[AboutViewController alloc] init];
    about.tabBarItem.title = @"关于";
    about.tabBarItem.image = [[UIImage imageNamed:@"b2_home_tabbar_icon_home_normal"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    about.tabBarItem.selectedImage = [[UIImage imageNamed:@"b2_home_tabbar_icon_home_highlight"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    self.viewControllers = @[main,about];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
