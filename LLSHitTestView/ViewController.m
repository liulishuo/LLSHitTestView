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
    
    _view1.code = 1;
    _view2.code = 2;
    _view3.code = 3;
    _view4.code = 4;
    
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
