//
//  UIView+CustomView.m
//  FilesOwerDemon
//
//  Created by qiuchunlu on 15/1/24.
//  Copyright (c) 2015年 community party. All rights reserved.
//

#import "UIView+CustomView.h"

@implementation UIView (CustomView)

+ (id)LoadViewFromNib:(NSString *)nibName
{
    return [FilesOwer ViewFromNibName:nibName];
}

+ (id)LoadFromNib
{
    return [self LoadViewFromNib:NSStringFromClass(self)];
}

@end
