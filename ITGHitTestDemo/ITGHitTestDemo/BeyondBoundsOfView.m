//
//  BeyondBoundsOfView.m
//  ITGHitTestDemo
//
//  Created by aikucun on 2020/1/7.
//  Copyright © 2020 aikucun. All rights reserved.
//  https://www.jianshu.com/p/3f389a2b98ec

#import "BeyondBoundsOfView.h"

/* System */

/* ViewController */

/* View */

/* Model */

/* Util */

/* NetWork InterFace */

/* Vender */

@interface BeyondBoundsOfView ()

@property (nonatomic, strong) UIButton *squareButton;

@end

@implementation BeyondBoundsOfView

#if DEBUG
- (void)dealloc {
    NSLog(@"[%@ dealloc]", NSStringFromClass(self.class));
}
#endif

#pragma mark - life cycle
- (instancetype)initWithFrame:(CGRect)frame {
    if (self == [super initWithFrame:frame]) {
        [self commonInit];
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];

    CGSize size = self.frame.size;
    self.squareButton.center = CGPointMake(size.width / 2, 0);
}

/// 在开发过程中，经常会遇到子视图显示范围超出父视图的情况，这时候可以重写该视图的 pointInside:withEvent: 方法，将点击区域扩大到能够覆盖所有子视图
//- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event {
//    // 将触摸点坐标转换到在 circleButton 上的坐标
//    CGPoint pointTemp = [self convertPoint:point toView:self.squareButton];
//    // 若触摸点在 cricleButton 上则返回 YES
//    if ([self.squareButton pointInside:pointTemp withEvent:event]) {
//        return YES;
//    }
//    // 否则返回默认的操作
//    return [super pointInside:point withEvent:event];
//}

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {

    if (!self.isUserInteractionEnabled || self.isHidden || self.alpha <= 0.01) {
        return nil;
    }

    for (UIView *subview in self.subviews) {
        if (subview == self.squareButton) {
            CGPoint convertedPoint = [subview convertPoint:point fromView:self];
            UIView *hitTestView = [subview hitTest:convertedPoint withEvent:event];
            if (hitTestView) {
                return hitTestView;
            }
        }
    }
    return nil;
}

#pragma mark - initial Methods
- (void)commonInit {
    /*custom view u want draw in here*/
    self.backgroundColor = [UIColor whiteColor];
    [self addSubViews];
    [self addSubViewConstraints];
}

#pragma mark - add subview
- (void)addSubViews {

    self.squareButton = [UIButton buttonWithType:UIButtonTypeSystem];
    self.squareButton.frame = CGRectMake(0, 0, 80, 80);
    [self.squareButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.squareButton setTitle:@"UIButton" forState:UIControlStateNormal];
    [self.squareButton setBackgroundColor:[UIColor lightGrayColor]];
    [self.squareButton addTarget:self
                          action:@selector(circleButtonClick)
                forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:self.squareButton];
}

#pragma mark - layout
- (void)addSubViewConstraints {

}

#pragma mark - private method
- (void)circleButtonClick {
    NSLog(@"圆形按钮被点击");
}

#pragma mark - public method

#pragma mark - getters and setters

@end
