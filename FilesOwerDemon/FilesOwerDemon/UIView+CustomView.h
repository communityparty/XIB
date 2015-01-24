//
//  UIView+CustomView.h
//  FilesOwerDemon
//
//  Created by qiuchunlu on 15/1/24.
//  Copyright (c) 2015年 community party. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FilesOwer.h"

@interface UIView (CustomView)

//为了简化代码引进类方法
+ (id)LoadViewFromNib:(NSString *)nibName;

+ (id)LoadFromNib;

@end
