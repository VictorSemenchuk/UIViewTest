//
//  ThirdView.m
//  UIViewTest
//
//  Created by Victor Macintosh on 06/05/2018.
//  Copyright © 2018 Victor Semenchuk. All rights reserved.
//

#import "ThirdView.h"

@implementation ThirdView

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setup];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self setup];
    }
    return self;
}

- (void)setup {
    [self setClipsToBounds:YES];
    UIView *view = [[NSBundle mainBundle] loadNibNamed:@"ThirdView" owner:self options:nil][0];
    [self addSubview:view];
}

@end
