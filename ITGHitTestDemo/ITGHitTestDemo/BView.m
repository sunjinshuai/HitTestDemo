//
//  BView.m
//  ITGHitTestDemo
//
//  Created by aikucun on 2020/1/7.
//  Copyright © 2020 aikucun. All rights reserved.
//

#import "BView.h"

@implementation BView

- (instancetype)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    if (self) {
        [self setName:@"B"];
    }
    return self;
}


- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    
    NSLog(@"BView ---->> hitTest:withEvent: ---");
    UIView * view = [super hitTest:point withEvent:event];
    NSLog(@"BView <<--- hitTest:withEvent: --- /n hitTestView:%@", view);
    return view;
}

- (BOOL)pointInside:(CGPoint)point withEvent:(nullable UIEvent *)event {
    
    NSLog(@"BView --->> pointInside:withEvent: ---");
    BOOL isInside = [super pointInside:point withEvent:event];
    NSLog(@"BView <<--- pointInside:withEvent: --- isInside:%d", isInside);
    return isInside;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
    NSLog(@"BView touchesBegan");
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(nullable UIEvent *)event {
    
    NSLog(@"BView touchesMoved");
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(nullable UIEvent *)event {
    
    NSLog(@"BView touchesEnded");
}


@end
