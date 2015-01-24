//
//  FilesOwer.m
//  FilesOwerDemon
//
//  Created by qiuchunlu on 15/1/24.
//  Copyright (c) 2015年 community party. All rights reserved.
//

#import "FilesOwer.h"

@implementation FilesOwer

+ (id)ViewFromNibName:(NSString *)nibName
{
    FilesOwer* ower = [FilesOwer new];
    [[NSBundle mainBundle] loadNibNamed:nibName owner:ower options:nil];
    return ower.view;
}

@end
