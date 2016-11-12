//
//  ViewController.m
//  iAutoLayout
//
//  Created by Bui Duc Khanh on 11/12/16.
//  Copyright © 2016 Bui Duc Khanh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
{
    UIView *view1;
    UIView *view2;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self buildLayout];
}

- (void)buildLayout{
    view1 = [UIView new];
    view1.backgroundColor = [UIColor blueColor];
    view2 = [UIView new];
    view2.backgroundColor = [UIColor redColor];
    
    [self.view addSubview:view1];
    [self.view addSubview:view2];

    view1.translatesAutoresizingMaskIntoConstraints = NO;
    view2.translatesAutoresizingMaskIntoConstraints = NO;
    
    // View 1 contraints top = 30, left = 10, right = 10; height = 100;
    NSLayoutConstraint *constrView1Top = [NSLayoutConstraint constraintWithItem:view1
                                                                            attribute:NSLayoutAttributeTop
                                                                            relatedBy:NSLayoutRelationEqual
                                                                               toItem:self.view
                                                                            attribute:NSLayoutAttributeTop
                                                                           multiplier:1.0f
                                                                             constant:30];
    
    NSLayoutConstraint *constrView1Left = [NSLayoutConstraint constraintWithItem:view1
                                                                      attribute:NSLayoutAttributeLeft
                                                                      relatedBy:NSLayoutRelationEqual
                                                                         toItem:self.view
                                                                      attribute:NSLayoutAttributeLeft
                                                                     multiplier:1.0f
                                                                       constant:10];
    
    NSLayoutConstraint *constrView1Right = [NSLayoutConstraint constraintWithItem:view1
                                                                       attribute:NSLayoutAttributeRight
                                                                       relatedBy:NSLayoutRelationEqual
                                                                          toItem:self.view
                                                                       attribute:NSLayoutAttributeRight
                                                                      multiplier:1.0f
                                                                        constant:-10];
    
    NSLayoutConstraint *constrView1Height = [NSLayoutConstraint constraintWithItem:view1
                                                                        attribute:NSLayoutAttributeHeight
                                                                        relatedBy:NSLayoutRelationEqual
                                                                           toItem:nil
                                                                        attribute:NSLayoutAttributeNotAnAttribute
                                                                       multiplier:1.0f
                                                                         constant:100];
    
    
    // View 2 contraints bottom = -30, left = 10, width = width view 1; height = height view 1;
    NSLayoutConstraint *constrView2Bottom = [NSLayoutConstraint constraintWithItem:view2
                                                                      attribute:NSLayoutAttributeBottom
                                                                      relatedBy:NSLayoutRelationEqual
                                                                         toItem:self.view
                                                                      attribute:NSLayoutAttributeBottom
                                                                     multiplier:1.0f
                                                                       constant:-30];
    
    NSLayoutConstraint *constrView2Left = [NSLayoutConstraint constraintWithItem:view2
                                                                       attribute:NSLayoutAttributeLeft
                                                                       relatedBy:NSLayoutRelationEqual
                                                                          toItem:self.view
                                                                       attribute:NSLayoutAttributeLeft
                                                                      multiplier:1.0f
                                                                        constant:10];
    
    NSLayoutConstraint *constrView2Width = [NSLayoutConstraint constraintWithItem:view2
                                                                        attribute:NSLayoutAttributeWidth
                                                                        relatedBy:NSLayoutRelationEqual
                                                                           toItem:view1
                                                                        attribute:NSLayoutAttributeWidth
                                                                       multiplier:1.0f
                                                                         constant:0];
    
    NSLayoutConstraint *constrView2Height = [NSLayoutConstraint constraintWithItem:view2
                                                                         attribute:NSLayoutAttributeHeight
                                                                         relatedBy:NSLayoutRelationEqual
                                                                            toItem:view1
                                                                         attribute:NSLayoutAttributeHeight
                                                                        multiplier:1.0f
                                                                          constant:0];
    
    
    
    [self.view addConstraints:@[constrView1Top, constrView1Left, constrView1Right, constrView1Height, constrView2Bottom, constrView2Left, constrView2Width, constrView2Height]];
    
}

@end
