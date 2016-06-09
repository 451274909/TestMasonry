//
//  YY3ViewController.m
//  TestMasonry
//
//  Created by jota on 16/6/8.
//  Copyright © 2016年 YY. All rights reserved.
//

#import "YY3ViewController.h"
#import "Masonry.h"
#import "POP.h"

@interface YY3ViewController ()

@property (nonatomic, strong) UIView *view1;

@end

@implementation YY3ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view setBackgroundColor:[UIColor whiteColor]];
    [self customAnimation];
    [self popAnimation];
}

- (void)customAnimation {
    UIView *view = [[UIView alloc] init];
    [view setBackgroundColor:[UIColor redColor]];
    [self.view addSubview:view];
    [view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view).centerOffset(CGPointMake(0, -1000));
        make.size.mas_equalTo(CGSizeMake(100, 100));
    }];
    
    view.transform = CGAffineTransformScale(CGAffineTransformIdentity, 0.3, 0.3);
    self.view1 = view;
    
}


- (void)popAnimation {
    
    UIView *view = [[UIView alloc] init];
    [view setBackgroundColor:[UIColor redColor]];
    [self.view addSubview:view];
    [view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view).centerOffset(CGPointMake(0, -1000));
        make.size.mas_equalTo(CGSizeMake(100, 100));
    }];
    self.view1 = view;
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    [UIView animateWithDuration:1 delay:0 usingSpringWithDamping:0.5 initialSpringVelocity:1 options:UIViewAnimationOptionCurveEaseInOut animations:^{
       [self.view1 mas_updateConstraints:^(MASConstraintMaker *make) {
           make.center.equalTo(self.view);
       }];
        [self.view layoutIfNeeded];
        self.view1.transform = CGAffineTransformIdentity;
    } completion:^(BOOL finished) {
        
    }];
    
    
    
}

@end
