//
//  ViewController.m
//  LLSHitTestView
//
//  Created by liulishuo on 11/30/15.
//  Copyright © 2015 liulishuo. All rights reserved.
//

#import "ViewController.h"
#import "LLSHitTestView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet LLSHitTestView *view1;
@property (weak, nonatomic) IBOutlet LLSHitTestView *view2;
@property (weak, nonatomic) IBOutlet LLSHitTestView *view3;
@property (weak, nonatomic) IBOutlet LLSHitTestView *view4;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _view1.hitTestType = LLSHitTestTypeNoClip;
    
//    _view2.hitTestType = LLSHitTestTypeIgnore;
    
    UIBezierPath *path = [UIBezierPath bezierPath];
    
    CGPoint pointStart = CGPointMake(_view4.frame.size.width/2, _view4.frame.size.height/3);
    CGPoint pointEnd = CGPointMake(_view4.frame.size.width/2, _view4.frame.size.height);
    CGPoint controlPoint1 = CGPointMake(_view4.frame.size.width, 0);
    CGPoint controlPoint4 = CGPointMake(0, 0);
    CGPoint controlPoint5 = CGPointMake(_view4.frame.size.width, _view4.frame.size.height/2);
    CGPoint controlPoint6 = CGPointMake(0, _view4.frame.size.height/2);
    
    [path moveToPoint:pointStart];
    [path addCurveToPoint:pointEnd controlPoint1:controlPoint1 controlPoint2:controlPoint5];
    [path addCurveToPoint:pointStart controlPoint1:controlPoint6 controlPoint2:controlPoint4];
    
//    _view4.path = path;
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)tap1:(id)sender {
    NSLog(@"tap1");
}

- (IBAction)tap2:(id)sender {
    NSLog(@"tap2");
}

- (IBAction)tap3:(id)sender {
    NSLog(@"tap3");
}

- (IBAction)tap4:(id)sender {
    NSLog(@"tap4");
}

@end
