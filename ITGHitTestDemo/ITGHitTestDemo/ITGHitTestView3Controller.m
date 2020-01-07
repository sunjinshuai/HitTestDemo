//
//  ITGHitTestView3Controller.m
//  ITGHitTestDemo
//
//  Created by aikucun on 2020/1/7.
//  Copyright © 2020 aikucun. All rights reserved.
//

#import "ITGHitTestView3Controller.h"
#import "BeyondBoundsOfView.h"
/* System */

/* ViewController */

/* View */

/* Model */

/* Util */

/* NetWork InterFace */

/* Vender */

@interface ITGHitTestView3Controller ()

@property (nonatomic, strong) BeyondBoundsOfView *bbView;

@end

@implementation ITGHitTestView3Controller

#if DEBUG
- (void)dealloc {
    NSLog(@"[%@ dealloc]", NSStringFromClass(self.class));
}
#endif

#pragma mark - life cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.edgesForExtendedLayout = UIRectEdgeNone;
    self.title = @"超出父view的bounds";
    [self commonInit];
    [self addEventAction];
}

#pragma mark - initial Methods
- (void)commonInit {
    self.view.backgroundColor = [UIColor whiteColor];
    [self addSubViews];
    [self addSubViewConstraints];
}

#pragma mark - add subview
- (void)addSubViews {

    CGFloat margin = 15;
    CGSize size = self.view.frame.size;
    _bbView = [[BeyondBoundsOfView alloc] initWithFrame:CGRectMake(margin, 150, size.width - margin * 2, 80)];
    [_bbView setBackgroundColor:[UIColor yellowColor]];
    [self.view addSubview:_bbView];
}

#pragma mark - layout
- (void)addSubViewConstraints {

}

#pragma mark - event action
- (void)addEventAction {

}

#pragma mark - private method


#pragma mark - public Method

#pragma mark - UITableViewDataSource

#pragma mark - UITableViewDelegate
//...(多个代理方法依次往下写)

#pragma mark - getters and setters

@end
