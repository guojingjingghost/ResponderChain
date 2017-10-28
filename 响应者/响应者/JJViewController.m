//
//  JJViewController.m
//  响应者
//
//  Created by apple on 2017/10/15.
//  Copyright © 2017年 teacher. All rights reserved.
//

#import "JJViewController.h"
#import "JJPresentViewController.h"

@interface JJViewController ()

@end

@implementation JJViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor magentaColor];
    UITapGestureRecognizer *tap  = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapAction:)];
    [self.view addGestureRecognizer:tap];
}

- (void)tapAction:(UITapGestureRecognizer*)recognizer{
    JJPresentViewController *presentVC = [JJPresentViewController new];
    [self presentViewController:presentVC animated:YES completion:nil];
}
@end
