//
//  ITGHitTestView1Controller.m
//  ITGHitTestDemo
//
//  Created by aikucun on 2020/1/7.
//  Copyright © 2020 aikucun. All rights reserved.
//

#import "ITGHitTestView1Controller.h"

/* System */

/* ViewController */

/* View */

/* Model */

/* Util */

/* NetWork InterFace */

/* Vender */

@interface ITGHitTestView1Controller ()

@end

@implementation ITGHitTestView1Controller

#if DEBUG
- (void)dealloc {
    NSLog(@"[%@ dealloc]", NSStringFromClass(self.class));
}
#endif

#pragma mark - life cycle
- (void)viewDidLoad {
    [super viewDidLoad];
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