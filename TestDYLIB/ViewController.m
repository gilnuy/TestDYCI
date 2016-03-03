//
//  ViewController.m
//  TestDYLIB
//
//  Created by yanluojun on 16/3/3.
//  Copyright © 2016年 yanluojun. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor redColor];
}

- (void)createGUI {
    self.view.backgroundColor = [UIColor greenColor];
}

#pragma mark - DYCI Support

/*
 These methods
 - (void)updateOnClassInjection
 - (void)updateOnResourceInjection:(NSString *)resourcePath
 
 Will be called on EACH instance of this class (DYCIViewController) when new class logic will be available
 Actually in case, if you can each time recreate new object, you don't need these two methods
 But, it case, if you need to update objects that are ALREADY in memory, you should use the,
 
 */
- (void)updateOnClassInjection {
    
    // "Emulating" viewDidLoad method
    // Cleaning up all views and
//    NSArray * subviews = [[self view] subviews];
//    for (UIView * v in subviews) {
//        [v removeFromSuperview];
//    }
    
    [self createGUI];
}


- (void)updateOnResourceInjection:(NSString *)resourcePath {
    
    // "Emulating" viewDidLoad method
    // Cleaning up all views and
//    NSArray * subviews = [[self view] subviews];
//    for (UIView * v in subviews) {
//        [v removeFromSuperview];
//    }
    
    [self createGUI];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
