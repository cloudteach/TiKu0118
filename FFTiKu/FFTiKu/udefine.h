//
//  udefine.h
//  FFTiKu
//
//  Created by tiny on 2018/1/17.
//  Copyright © 2018年 tiny. All rights reserved.
//

#ifndef udefine_h
#define udefine_h

#define Singleton(C, I)   static C *I = nil; \
static dispatch_once_t pred; \
dispatch_once(&pred, ^{ \
I = [C new];    \
});\
return I;

#define iFont(Name, Size) [Name isEqualToString:@""]?[UIFont systemFontOfSize:Size]:[UIFont fontWithName:Name size:Size]
#define kFontName_PF_M @"PingFangSC-Medium"

#define SW [UIScreen mainScreen].bounds.size.width
#define SH [UIScreen mainScreen].bounds.size.height
#define BASE_COLOR          HEX_RGBA(0x32a0d9, 1)
#define Default_Color HEX_RGB(0x000000)

#define weakSelf(x) __weak typeof(self) x = self;

#import "TabBarViewController.h"
#import "NavigationViewController.h"
#import "SuperViewController.h"
#import "UIColor+Theme.h"

#endif /* udefine_h */
