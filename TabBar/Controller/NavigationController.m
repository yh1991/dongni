//
//  NavigationController.m
//  手机在线销售系统
//
//  Created by yh on 16/3/28.
//  Copyright © 2016年 yh. All rights reserved.
//

#import "NavigationController.h"
//#import "DetailViewController.h"
//#import "ShoppingCartViewController.h"

@interface NavigationController ()

@end

@implementation NavigationController




+(void)initialize{
    //navigationBar的主题
    UINavigationBar *bar=[UINavigationBar appearance];
    NSMutableDictionary *attribute=[[NSMutableDictionary alloc]init];
    attribute[NSFontAttributeName]=[UIFont systemFontOfSize:16];
    attribute[NSForegroundColorAttributeName]=[UIColor blackColor];
    [bar setTitleTextAttributes:attribute];
    //BarbuttonItem的主题
    NSMutableDictionary *nomalAttri=[NSMutableDictionary dictionary];
    nomalAttri[NSFontAttributeName]=[UIFont systemFontOfSize:12];
   // nomalAttri[NSForegroundColorAttributeName]=CommonColor;
    UIBarButtonItem *barItem=[UIBarButtonItem appearance];
    [barItem setTitleTextAttributes:nomalAttri forState:UIControlStateNormal];
    
    NSMutableDictionary *highAttri=[NSMutableDictionary dictionary];
    highAttri[NSFontAttributeName]=[UIFont systemFontOfSize:12];
    highAttri[NSForegroundColorAttributeName]=[UIColor lightGrayColor];
       [barItem setTitleTextAttributes:highAttri forState:UIControlStateHighlighted];
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
   
}


-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
     NSArray *VCArray=self.viewControllers;
    if (VCArray.count>0) {
        //隐藏Barbutton，当push到下一个控制器<非TabBar页面>
        viewController.hidesBottomBarWhenPushed=YES;
    }
   
       [super pushViewController:viewController animated:YES];
        
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
