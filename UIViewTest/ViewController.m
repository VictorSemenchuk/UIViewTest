//
//  ViewController.m
//  UIViewTest
//
//  Created by Victor Macintosh on 06/05/2018.
//  Copyright © 2018 Victor Semenchuk. All rights reserved.
//

#import "ViewController.h"
#import "SecondView.h"
#import "ThirdView.h"

@interface ViewController () <UIGestureRecognizerDelegate>

@property (strong, nonatomic) FirstView *firstView;
@property (strong, nonatomic) SecondView *secondView;
@property (strong, nonatomic) ThirdView *thirdView;

@end

@implementation ViewController

- (void)loadView {
    [super loadView];
    
    CGRect frame = [[UIScreen mainScreen] bounds];
    _firstView = [[[FirstView alloc] initWithFrame:frame] autorelease];
    [[self firstView] setBackgroundColor:[UIColor redColor]];
    
    _secondView = [[[SecondView alloc] initWithFrame:CGRectMake(50, 50, 150, 200)] autorelease];
    [[self secondView] setBackgroundColor:[[UIColor yellowColor] colorWithAlphaComponent:0.0]];
    [[self firstView] addSubview:[self secondView]];
    
    _thirdView = [[ThirdView alloc] initWithFrame:CGRectMake(50, 300, 100, 100)];
    [[self firstView] addSubview:[self thirdView]];
    
    [[self view] addSubview:[self firstView]];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIPanGestureRecognizer *panGestureRecognizer1 = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(handlePanRecognizer:)];
    UITapGestureRecognizer *tapGestureRecognizer1 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTapRecognizer:)];
    UIPanGestureRecognizer *panGestureRecognizer2 = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(handlePanRecognizer:)];
    UITapGestureRecognizer *tapGestureRecognizer2 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTapRecognizer:)];
    
    [[self secondView] setMultipleTouchEnabled:YES];
    [[self thirdView] setMultipleTouchEnabled:YES];
    
    [[self secondView] setUserInteractionEnabled:YES];
    [[self thirdView] setUserInteractionEnabled:YES];
    
    [[self secondView] addGestureRecognizer:tapGestureRecognizer1];
    [[self secondView] addGestureRecognizer:panGestureRecognizer1];
    [[self thirdView] addGestureRecognizer:tapGestureRecognizer2];
    [[self thirdView] addGestureRecognizer:panGestureRecognizer2];
}

- (void)handlePanRecognizer:(UIPanGestureRecognizer *)recognizer {
    CGPoint translation = [recognizer translationInView:[self view]];
    if ([recognizer view] != nil) {
        [[recognizer view] setCenter:CGPointMake([[recognizer view] center].x + translation.x, [[recognizer view] center].y + translation.y)];
    }
    [recognizer setTranslation:CGPointZero inView:[self view]];
}

- (void)handleTapRecognizer:(UITapGestureRecognizer *)recognizer {
    [[[recognizer view] layer] setZPosition:1];
}

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer {
    return YES;
}

- (void)dealloc {
    [_firstView release];
    [_secondView release];
    [_thirdView release];
    [super dealloc];
}

@end
