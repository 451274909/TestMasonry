//
//  1ViewController.m
//  TestMasonry
//
//  Created by jota on 16/6/7.
//  Copyright © 2016年 YY. All rights reserved.
//

#import "YY1ViewController.h"
#import "Masonry.h"

@interface YY1ViewController ()

@end

@implementation YY1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    [self initUI];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)initUI {

    UIView *view1 = ({
        view1 = [[UIView alloc] init];
        [self.view addSubview:view1];
        [view1 setBackgroundColor:[UIColor blueColor]];
        [view1 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.size.mas_equalTo(CGSizeMake(50, 50));
            make.left.equalTo(self.view);
            make.top.equalTo(self.view).mas_offset(64);
        }];
        view1;
    });
    
    UIView *view2 = [[UIView alloc] init];
    [view2 setBackgroundColor:[UIColor redColor]];
    [self.view addSubview:view2];
    [view2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.equalTo(self.view);
        make.top.equalTo(view1.mas_bottom).mas_offset(30);
        // 比例:  16:9
        make.height.equalTo(self.view.mas_width).multipliedBy(9.0 / 16.0);
    }];
    
}

@end
