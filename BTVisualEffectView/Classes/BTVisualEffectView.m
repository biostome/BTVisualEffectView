//
//  YBVisualEffectView.m
//  YBVisualEffectView
//
//  Created by biostome on 2020/7/1.
//  Copyright © 2020 biostome. All rights reserved.
//

#import "BTVisualEffectView.h"

@interface BTVisualEffectView ()
@property (nonatomic, strong) UIBlurEffect *blurEffect;
@end


@implementation BTVisualEffectView (Extension)


- (id)_valueForKey:(nullable NSString *)key{
    return [self.blurEffect valueForKey:key];
}

- (void)_setValue:(nullable id)value forKey:(nonnull NSString *)key{
    [self.blurEffect setValue:value forKey:key];
    self.effect = self.blurEffect;
}

@end

@implementation BTVisualEffectView

- (UIBlurEffect *)blurEffect{
    if (!_blurEffect) {
        _blurEffect = [[NSClassFromString(@"_UICustomBlurEffect") alloc]init];
    }
    return _blurEffect;
}

- (void)setColorTint:(UIColor *)colorTint{
    [self _setValue:colorTint forKey:@"colorTint"];
}

- (UIColor *)colorTint{
    return [self _valueForKey:@"colorTint"];;
}

- (void)setColorTintAlpha:(CGFloat)colorTintAlpha{
    [self _setValue:@(colorTintAlpha) forKey:@"colorTintAlpha"];
}

- (CGFloat)colorTintAlpha{
    return [[self _valueForKey:@"colorTintAlpha"] floatValue];
}

- (void)setBlurRadius:(CGFloat)blurRadius{
    [self _setValue:@(blurRadius) forKey:@"blurRadius"];
}

- (CGFloat)blurRadius{
    return [[self _valueForKey:@"blurRadius"] floatValue];
}

- (void)setScale:(CGFloat)scale{
    [self _setValue:@(scale) forKey:@"scale"];
}

- (CGFloat)scale{
    return [[self _valueForKey:@"scale"] floatValue];
}

- (void)setGrayscaleTintAlpha:(CGFloat)grayscaleTintAlpha{
    [self _setValue:@(grayscaleTintAlpha) forKey:@"grayscaleTintAlpha"];
}

- (CGFloat)grayscaleTintAlpha{
    return [[self _valueForKey:@"grayscaleTintAlpha"] floatValue];
}

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        self.scale = 1;
        self.colorTint = UIColor.blackColor;
        self.colorTintAlpha = 0.3;
        self.blurRadius = 10;
    }
    return self;
}

- (instancetype)init{
    self = [super init];
    if (self) {
        self.scale = 1;
        self.colorTint = UIColor.blackColor;
        self.colorTintAlpha = 0.3;
        self.blurRadius = 10;
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder{
    self = [super initWithCoder:coder];
    if (self) {
        self.scale = 1;
        self.colorTint = UIColor.blackColor;
        self.colorTintAlpha = 0.3;
        self.blurRadius = 10;
    }
    return self;
}
@end

