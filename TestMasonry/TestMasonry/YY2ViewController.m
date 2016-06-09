//
//  2ViewController.m
//  TestMasonry
//
//  Created by jota on 16/6/7.
//  Copyright © 2016年 YY. All rights reserved.
//

#import "YY2ViewController.h"
#import "Masonry.h"

@interface YY2ViewController ()

@property (nonatomic, strong) UILabel *l2;

@end

@implementation YY2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor colorWithWhite:50.0f alpha:1.0f]];
    [self initUI];
}

- (void)initUI {

    UILabel *l1 = [[UILabel alloc] init];
    [self.view addSubview:l1];
    
    [l1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.view);
        make.left.equalTo(self.view);
    }];
    
    [l1 setBackgroundColor:[UIColor redColor]];
    [l1 setText:@"fdfsdfsdfdgng"];
    [l1 setNumberOfLines:0];
    [l1 setContentHuggingPriority:UILayoutPriorityRequired forAxis:UILayoutConstraintAxisHorizontal];
    [l1 setContentCompressionResistancePriority:UILayoutPriorityRequired forAxis:UILayoutConstraintAxisHorizontal];

    
    UILabel *l2 = [[UILabel alloc] init];
    [self.view addSubview:l2];
    [l2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.view);
        make.left.equalTo(l1.mas_right);
    }];
    
    [l2 setText:@"fdfsdfsdsdsdfsdfs"];
    [l2 setBackgroundColor:[UIColor greenColor]];
    self.l2 = l2;
    
    UILabel *l3 = [[UILabel alloc] init];
    [self.view addSubview:l3];
        [l3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.view);
        make.left.equalTo(l2.mas_right);
        make.right.equalTo(self.view);
    }];
    
    [l3 setBackgroundColor:[UIColor brownColor]];
    [l3 setText:@"fdfsdfscxz"];
    [l3 setNumberOfLines:0];
    [l3 setContentHuggingPriority:UILayoutPriorityRequired forAxis:UILayoutConstraintAxisHorizontal];
    [l3 setContentCompressionResistancePriority:UILayoutPriorityRequired forAxis:UILayoutConstraintAxisHorizontal];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {

    self.l2.text = [self.l2.text stringByAppendingString:@"增加一段文字"];
}

@end
