//
//  ViewController.m
//  响应者
//
//  Created by apple on 2017/10/15.
//  Copyright © 2017年 teacher. All rights reserved.
//

#import "ViewController.h"
#import "JJViewController.h"
#import "JJPresentViewController.h"

typedef enum : NSUInteger {
    HMTypeMale,
    HMTypeFemale
} HMSexType;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
  
    [self setupChildController];
//    [self setupChildView];
}


/**
 父子控制器代码
 */
-(void)setupChildController {
    JJViewController *vc = [JJViewController new];
    [self addChildViewController:vc];
    [self.view addSubview:vc.view];
    vc.view.frame = self.view.bounds;
    [vc didMoveToParentViewController:self];
    
}

/**
 把一个控制器的view直接添加到另一个控制器的view上代码
 */
-(void)setupChildView{
    JJViewController *vc = [JJViewController new];
    [self.view addSubview:vc.view];
    vc.view.frame = self.view.bounds;
}

@end
