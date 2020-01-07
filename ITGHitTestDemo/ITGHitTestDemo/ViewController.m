//
//  ViewController.m
//  ITGHitTestDemo
//
//  Created by aikucun on 2020/1/7.
//  Copyright © 2020 aikucun. All rights reserved.
//

#import "ViewController.h"
#import "ITGHitTestView1Controller.h"
#import "ITGHitTestView2Controller.h"
#import "ITGHitTestView3Controller.h"

#define Margin      30

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.title = @"hitTest方法介绍";
    self.edgesForExtendedLayout = UIRectEdgeNone;
    [self setupViews];
}

- (void)setupViews {

    CGFloat btnHeight = 50;
    CGSize size = self.view.frame.size;
    NSArray *titles = @[@"hitTest", @"修改按钮热区", @"超出父view的bounds"];
    CGFloat offset = Margin;
    for (int idx=0; idx<titles.count; idx++) {
        NSString *title = [titles objectAtIndex:idx];
        UIButton *button = [self createCustomButton:title];
        button.frame = CGRectMake(Margin, offset, size.width - Margin * 2, btnHeight);
        button.tag = 100 + idx;
        [self.view addSubview:button];
        offset += btnHeight;
    }
}

- (UIButton *)createCustomButton:(NSString *)title {

    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    [button addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:title forState:UIControlStateNormal];
    return button;
}


#pragma mark - Actions

- (void)buttonClicked:(UIButton *)button {

    if (button.tag == 100) {
        ITGHitTestView1Controller *vc = [[ITGHitTestView1Controller alloc] init];
        [self.navigationController pushViewController:vc animated:YES];
    } else if (button.tag == 101) {
        ITGHitTestView2Controller *vc = [[ITGHitTestView2Controller alloc] init];
        [self.navigationController pushViewController:vc animated:YES];
    } else if (button.tag == 102) {
        ITGHitTestView3Controller *vc = [[ITGHitTestView3Controller alloc] init];
        [self.navigationController pushViewController:vc animated:YES];
    }
}

@end
