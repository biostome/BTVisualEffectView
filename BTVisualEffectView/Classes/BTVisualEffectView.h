//
//  YBVisualEffectView.h
//  YBVisualEffectView
//
//  Created by biostome on 2020/7/1.
//  Copyright © 2020 biostome. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface BTVisualEffectView : UIVisualEffectView

/// 虚化颜色
@property (nonatomic, strong) UIColor *colorTint;
/// 虚化颜色透明度
@property (nonatomic, assign) CGFloat colorTintAlpha;
/// 虚化度
@property (nonatomic, assign) CGFloat blurRadius;
/// 虚化颗粒度
@property (nonatomic, assign) CGFloat scale;
/// 灰度色调透明度
@property (nonatomic, assign) CGFloat grayscaleTintAlpha;
@end

NS_ASSUME_NONNULL_END
