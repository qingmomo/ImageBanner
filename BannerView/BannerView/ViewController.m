//
//  ViewController.m
//  BannerView
//
//  Created by li  bo on 16/6/24.
//  Copyright © 2016年 li  bo. All rights reserved.
//

#import "ViewController.h"
#import "LBBannerView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //模拟数据源
//    NSArray *imagesArray = @[[UIImage imageNamed:@"kobe1.jpg"],
//                             [UIImage imageNamed:@"kobe2.jpg"],
//                             [UIImage imageNamed:@"kobe3.jpg"],
//                             [UIImage imageNamed:@"kobe4.jpg"],
//                             [UIImage imageNamed:@"kobe5.jpg"],
//                             [UIImage imageNamed:@"kobe6.jpg"]];

    NSArray *imagesArray = @[[UIImage imageNamed:@"定风珠@2x.png"],
                             [UIImage imageNamed:@"火龙珠@2x.png"],
                             [UIImage imageNamed:@"青云珠@2x.png"],
                             [UIImage imageNamed:@"水龙珠@2x.png"],
                             [UIImage imageNamed:@"五华珠@2x.png"],
                             [UIImage imageNamed:@"祥龙珠@2x.png"],
                             [UIImage imageNamed:@"云龙珠@2x.png"]];
    
    //创建轮播器控件
    LBBannerView *bannerView = [[LBBannerView alloc] initViewWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 180) autoPlayTime:2.0f imagesArray:imagesArray clickCallBack:^(NSInteger index) {
        NSLog(@"点击了第%ld张图片",index);
    }];


    [self.view addSubview:bannerView];

    
}



@end
