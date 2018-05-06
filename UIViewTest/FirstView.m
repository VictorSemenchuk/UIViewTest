//
//  FirstView.m
//  UIViewTest
//
//  Created by Victor Macintosh on 06/05/2018.
//  Copyright © 2018 Victor Semenchuk. All rights reserved.
//

#import "FirstView.h"

@interface FirstView()
{
    int i;
}
@end

@implementation FirstView

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        i = 0;
    }
    return self;
}

- (void)willMoveToSuperview:(UIView *)newSuperview {
    [super willMoveToSuperview:newSuperview];
    NSLog(@"%@ %d: willMoveToSuperview", self, i++);
}

- (void)didMoveToSuperview {
    [super didMoveToSuperview];
    NSLog(@"%@ %d: didMoveToSuperview", self, i++);
}

- (void)awakeFromNib {
    [super awakeFromNib];
    NSLog(@"%@ %d: awakeFromNib", self, i++);
}

- (void)willMoveToWindow:(UIWindow *)newWindow {
    [super willMoveToWindow:newWindow];
    NSLog(@"%@ %d: willMoveToWindow", self, i++);
}

- (void)didMoveToWindow {
    [super didMoveToWindow];
    NSLog(@"%@ %d: didMoveToWindow", self, i++);
}

- (void)updateConstraints {
    [super updateConstraints];
    NSLog(@"%@ %d: updateConstraints", self, i++);
}

- (void)layoutSubviews {
    [super layoutSubviews];
    NSLog(@"%@ %d: layoutSubviews", self, i++);
}

- (void)drawRect:(CGRect)rect {
    [super drawRect:rect];
    NSLog(@"%@ %d: drawRect", self, i++);
}

@end
