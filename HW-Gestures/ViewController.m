//
//  ViewController.m
//  HW-Gestures
//
//  Created by 李育豪 on 2015/4/9.
//  Copyright (c) 2015年 ALPHACamp. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)rotationGesture:(id)sender {
    UIRotationGestureRecognizer *rotationGesture = (UIRotationGestureRecognizer *)sender;
    rotationGesture.view.transform = CGAffineTransformMakeRotation(rotationGesture.rotation);
}


- (IBAction)scaleGesture:(UIPinchGestureRecognizer *)sender{
    sender.view.transform = CGAffineTransformScale(sender.view.transform, sender.scale, sender.scale);
    sender.scale = 1;
}

@end
