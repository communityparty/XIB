//
//  FilesOwer.h
//  FilesOwerDemon
//
//  Created by qiuchunlu on 15/1/24.
//  Copyright (c) 2015年 community party. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface FilesOwer : NSObject

@property (nonatomic,strong) IBOutlet UIView* view;


+ (id)ViewFromNibName:(NSString *)nibName;

@end
