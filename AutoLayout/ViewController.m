//
//  ViewController.m
//  AutoLayout
//
//  Created by xiazer on 14-9-22.
//  Copyright (c) 2014年 xiazer. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(nonatomic, strong) UIView *view1;
@property(nonatomic, strong) UIView *view2;
@property(nonatomic, strong) UIView *view3;
@property(nonatomic, strong) UIView *view4;
@property(nonatomic, strong) UIView *view5;
@property(nonatomic, strong) UIView *view6;
@property(nonatomic, strong) UIButton *button1;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
    UIView *view = [[UIView alloc] init];
    view.backgroundColor = [UIColor redColor];
    view.translatesAutoresizingMaskIntoConstraints = NO;
    self.view1 = view;
    [self.view addSubview:view];

    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[view]|"
                                                                      options:0
                                                                      metrics:nil
                                                                        views:NSDictionaryOfVariableBindings(view)]];

    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[view]|"
                                                                      options:0
                                                                      metrics:nil
                                                                        views:NSDictionaryOfVariableBindings(view)]];


    UIView *viewOne = [[UIView alloc] init];
    viewOne.backgroundColor = [UIColor yellowColor];
    viewOne.translatesAutoresizingMaskIntoConstraints = NO;
    self.view2 = view;
    [self.view addSubview:viewOne];
    
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-50-[viewOne]-20-|"
                                                                      options:0
                                                                      metrics:nil
                                                                        views:NSDictionaryOfVariableBindings(viewOne)]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-20-[viewOne(50)]|"
                                                                      options:0
                                                                      metrics:nil
                                                                        views:NSDictionaryOfVariableBindings(viewOne)]];
    
    

    UIView *viewTwo = [[UIView alloc] init];
    viewTwo.backgroundColor = [UIColor whiteColor];
    viewTwo.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:viewTwo];

    UIView *viewThree = [[UIView alloc] init];
    viewThree.backgroundColor = [UIColor blackColor];
    viewThree.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:viewThree];

    NSMutableArray *arr = [NSMutableArray array];
    
    [arr addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-30-[viewTwo(60)]-40-[viewThree(100)]"
                                                                     options:0
                                                                     metrics:nil
                                                                       views:NSDictionaryOfVariableBindings(viewTwo,viewThree)]];

    
    [arr addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-180-[viewTwo(==45)]|"
                                                                     options:0
                                                                     metrics:nil
                                                                       views:NSDictionaryOfVariableBindings(viewTwo)]];

    [arr addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-180-[viewThree(60)]|"
                                                                     options:0
                                                                     metrics:nil
                                                                       views:NSDictionaryOfVariableBindings(viewThree)]];
    
    [self.view addConstraints:arr];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
