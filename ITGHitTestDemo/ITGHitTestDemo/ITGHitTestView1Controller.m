//
//  ITGHitTestView1Controller.m
//  ITGHitTestDemo
//
//  Created by aikucun on 2020/1/7.
//  Copyright © 2020 aikucun. All rights reserved.
//

#import "ITGHitTestView1Controller.h"
#import "AView.h"

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

    [self.view setBackgroundColor:[UIColor whiteColor]];
    self.edgesForExtendedLayout = UIRectEdgeNone;
    self.title = @"hitTest";
    [self setupViews];
}

- (void)setupViews {

    CGFloat margin = 30;
    CGSize size = self.view.frame.size;

    AView *aView = [[AView alloc] initWithFrame:CGRectMake(margin, margin, size.width - margin * 2, size.height - margin * 2)];
    aView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    [aView setBackgroundColor:[UIColor grayColor]];
    [self.view addSubview:aView];
}

@end
