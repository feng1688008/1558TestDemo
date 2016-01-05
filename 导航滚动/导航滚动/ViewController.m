//
//  ViewController.m
//  导航滚动
//
//  Created by liuyanan on 15/12/18.
//  Copyright (c) 2015年 liuyanan. All rights reserved.
//

#import "ViewController.h"

#define WIDTH [UIScreen mainScreen].bounds.size.width
#define HEIGHT [UIScreen mainScreen].bounds.size.height

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationController.navigationBar.barTintColor = [UIColor orangeColor];
    
/* 解决方案1  图片显示不全*/
//self.navigationController.navigationBar.translucent = NO;
    
    /*
     解决方案2
     默认的全局布局UIRectEdgeAll  iOS7
     UIRectEdgeNone 全局布局关闭 手动布局
     */
//self.edgesForExtendedLayout = UIRectEdgeNone;
    
    // 解决方案3
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    [self createView];
    
}

/**
 创建视图
 */
- (void)createView {
    
    NSArray *imageArr = @[@"头条",@"头条",@"头条",@"头条",@"头条",@"头条",@"头条",@"头条",@"头条",@"头条",@"头条",@"头条"];
    UIView *view = [[UIView alloc]initWithFrame:CGRectMake(0, 64, self.view.bounds.size.width, 80)];
     [self.view addSubview:view];
    
    // 创建滚动视图
    UIScrollView * scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 80)];
    // 设置内容大小
    scrollView.contentSize = CGSizeMake(imageArr.count * 60 , 80);
    [view addSubview:scrollView];
  
    for ( int i  = 0 ; i <imageArr.count; i ++) {
        UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(0+i * 60, 0, 60, 80)];
        button.backgroundColor = [UIColor redColor];
        [button setTitle:imageArr[i] forState:UIControlStateNormal];
        [button setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [scrollView addSubview:button];
        
    }
}



@end





