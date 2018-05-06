//
//  SecondView.m
//  UIViewTest
//
//  Created by Victor Macintosh on 06/05/2018.
//  Copyright © 2018 Victor Semenchuk. All rights reserved.
//

#import "SecondView.h"

@implementation SecondView

- (CALayer *)layer {
    CALayer *layer = [super layer];
    UIColor *bgClr = [UIColor blueColor];
    [layer setBackgroundColor:[bgClr CGColor]];
    [layer setCornerRadius:10];
    [layer setMasksToBounds:YES];
    return layer;
}

@end
