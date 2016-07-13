//
//  TabBarViewController.m
//  手机在线销售系统
//
//  Created by yh on 16/3/28.
//  Copyright © 2016年 yh. All rights reserved.
//

#import "TabBarViewController.h"
#import "HomeViewController.h"
#import "ClassifyViewController.h"
//#import "ShoppingCartViewController.h"
//#import "MineViewController.h"
#import "NavigationController.h"

@interface TabBarViewController ()

@end

@implementation TabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HomeViewController *home=[[HomeViewController alloc]init];
    [self addChildController:home title:@"首页" image:@"tabBar_home_normal" selectImage:@"tabBar_home_press" ];
   home.hidesBottomBarWhenPushed=NO;
    ClassifyViewController *class=[[ClassifyViewController alloc]init];
    [self addChildController:class title:@"分类" image:@"tabBar_category_normal" selectImage:@"tabBar_category_press" ];
    class.hidesBottomBarWhenPushed=NO;
//    ShoppingCartViewController *shop=[[ShoppingCartViewController alloc]init];
//    [self addChildController:shop title:@"购物车" image:@"tabBar_cart_normal" selectImage:@"tabBar_cart_press" ];
//#warning 隐藏tabBar
//    shop.hidesBottomBarWhenPushed=YES;
//    
//    MineViewController *main=[[MineViewController alloc]init];
//    [self addChildController:main title:@"我的" image:@"tabBar_myJD_normal" selectImage:@"tabBar_myJD_press"];
//    main.hidesBottomBarWhenPushed=NO;
}

/**
 *  tabBar上添加控制器
 *
 *  @param controller  添加的控制器
 *  @param title       tabBar的标题
 *  @param image       图片
 *  @param selectImage 选中的图片
 */
-(void)addChildController:(UIViewController *)controller title:(NSString *)title image:(NSString *)image selectImage:(NSString *)selectImage {
    //controller.view.backgroundColor=RandomRGBColor;
    controller.title=title;
    //设置TabBar选中时的字体
    NSMutableDictionary *attriDic=[NSMutableDictionary dictionary];
    attriDic[NSForegroundColorAttributeName]=[UIColor blackColor];
    attriDic[NSFontAttributeName]=[UIFont systemFontOfSize:11];
    [controller.tabBarItem setTitleTextAttributes:attriDic forState:UIControlStateNormal];
    
    NSMutableDictionary *SelectAttriDic=[NSMutableDictionary dictionary];
    //SelectAttriDic[NSForegroundColorAttributeName]=RGBColor(240, 83, 83);
    SelectAttriDic[NSFontAttributeName]=[UIFont systemFontOfSize:11];
    [controller.tabBarItem setTitleTextAttributes:SelectAttriDic forState:UIControlStateSelected];
    
    controller.tabBarItem.image=[UIImage imageNamed:image];
    UIImage *selectImages=[UIImage imageNamed:selectImage];
    // 为了不让系统渲染图片的颜色
    selectImages=[selectImages imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    controller.tabBarItem.selectedImage=selectImages;
    //controller.tabBarController.tabBar.hidden=hiddden;
    NavigationController *navigation=[[NavigationController alloc]initWithRootViewController:controller];
    [self addChildViewController:navigation];
    
    
}


@end
