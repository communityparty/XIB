//
//  ViewController.m
//  FilesOwerDemon
//
//  Created by qiuchunlu on 15/1/24.
//  Copyright (c) 2015年 community party. All rights reserved.
//

#import "ViewController.h"
#import "FilesOwer.h"
#import "UIView+CustomView.h"
#import "View5.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //第一种方法
    UIView* view = [[[NSBundle mainBundle] loadNibNamed:@"View1" owner:self options:nil] lastObject];
    CGRect r = view.frame;
    r.origin.y += 80;
    view.frame = r;
    [self.view addSubview:view];
    
    
    //第二种
    [[NSBundle mainBundle] loadNibNamed:@"View2" owner:self options:nil];
    r = _referencedView.frame;
    r.origin.y = view.frame.size.height + view.frame.origin.y;
    _referencedView.frame = r;
    [self.view addSubview:_referencedView];
    
    //第三种方法
    FilesOwer* fileOwer = [FilesOwer new];
    [[NSBundle mainBundle] loadNibNamed:@"View3" owner:fileOwer options:nil];
    r = fileOwer.view.frame;
    r.origin.y = _referencedView.frame.origin.y + _referencedView.frame.size.height;
    fileOwer.view.frame = r;
    [self.view addSubview:fileOwer.view];
    
    
    //第四种方法
    UIView* v4 = [UIView LoadViewFromNib:@"View4"];
    r = v4.frame;
    r.origin.y = fileOwer.view.frame.origin.y + fileOwer.view.frame.size.height;
    v4.frame = r;
    [self.view addSubview:v4];
    
    //第五章方法
    View5* v5 = [View5 LoadFromNib];
    r = v5.frame;
    r.origin.y = v4.frame.origin.y + v4.frame.size.height;
    v5.frame = r;
    [self.view addSubview:v5];
    
    //第六种方法
    UIView* v6 = [[UIViewController alloc] initWithNibName:@"View6" bundle:nil].view;
    r = v6.frame;
    r.origin.y = v5.frame.origin.y + v5.frame.size.height;
    v6.frame = r;
    [self.view addSubview:v6];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
