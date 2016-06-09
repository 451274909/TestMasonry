//
//  YY4ViewController.m
//  TestMasonry
//
//  Created by jota on 16/6/8.
//  Copyright © 2016年 YY. All rights reserved.
//

#import "YY4ViewController.h"
#import "Masonry.h"


@interface YY4ViewController ()

@end

@implementation YY4ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    [self scrollViewAndSubviews];
}

- (void)scrollViewAndSubviews {

    UIScrollView *scrollView = ({
        UIScrollView *view = [[UIScrollView alloc] init];
        [view setBackgroundColor:[UIColor grayColor]];
        [self.view addSubview:view];
        [view mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.equalTo(self.view);
        }];
        
        view;
    });
    
    UIView *container = ({
        UIView *view = [[UIView alloc] init];
        [view setBackgroundColor:[UIColor whiteColor]];
        [scrollView  addSubview:view];
        [view mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.equalTo(scrollView);
        }];
        
        view;
    });
    
    UIView *v1 = ({
        UIView *view = [[UIView alloc] init];
        [view setBackgroundColor:[UIColor redColor]];
        [container  addSubview:view];
        [view mas_makeConstraints:^(MASConstraintMaker *make) {
            make.size.mas_equalTo(CGSizeMake(200, 200));
        }];
        
        view;
    });
    
    UIView *v2 = ({
        UIView *view = [[UIView alloc] init];
        [view setBackgroundColor:[UIColor redColor]];
        [container  addSubview:view];
        [view mas_makeConstraints:^(MASConstraintMaker *make) {
            make.size.mas_equalTo(CGSizeMake(200, 200));
            make.left.equalTo(v1.mas_right);
            make.top.equalTo(v1.mas_bottom);
        }];
        
        view;
    });
    
    UIView *v3 = ({
        UIView *view = [[UIView alloc] init];
        [view setBackgroundColor:[UIColor redColor]];
        [container  addSubview:view];
        [view mas_makeConstraints:^(MASConstraintMaker *make) {
            make.size.mas_equalTo(CGSizeMake(200, 200));
            make.right.equalTo(v2.mas_left);
            make.top.equalTo(v2.mas_bottom);
        }];
        
        view;
    });
    
    UIView *v4 = ({
        UIView *view = [[UIView alloc] init];
        [view setBackgroundColor:[UIColor redColor]];
        [container  addSubview:view];
        [view mas_makeConstraints:^(MASConstraintMaker *make) {
            make.size.mas_equalTo(CGSizeMake(200, 200));
            make.right.equalTo(v3.mas_left);
            make.top.equalTo(v3.mas_bottom);
        }];
        
        view;
    });
    
    UIView *v5 = ({
        UIView *view = [[UIView alloc] init];
        [view setBackgroundColor:[UIColor redColor]];
        [container  addSubview:view];
        [view mas_makeConstraints:^(MASConstraintMaker *make) {
            make.size.mas_equalTo(CGSizeMake(200, 200));
            make.left.equalTo(v4.mas_right);
            make.top.equalTo(v4.mas_bottom);
        }];
        
        view;
    });
    
    [container mas_updateConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(v1.mas_top);
        make.left.equalTo(v4.mas_left);
        make.bottom.equalTo(v5.mas_bottom);
        make.right.equalTo(v2.mas_right);
    }];

}






@end
