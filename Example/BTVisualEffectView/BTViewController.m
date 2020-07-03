//
//  BTViewController.m
//  BTVisualEffectView
//
//  Created by biostome on 07/03/2020.
//  Copyright (c) 2020 biostome. All rights reserved.
//

#import "BTViewController.h"
#import <BTVisualEffectView.h>

@interface BTViewController ()
@property (weak, nonatomic) IBOutletCollection(UIImageView) NSArray *blurImageViews;

@property (weak, nonatomic) IBOutlet UISlider *slider;

@property (nonatomic, strong) BTVisualEffectView *visual;
@end

@implementation BTViewController

- (void)setSlider:(UISlider *)slider{
    _slider = slider;
    slider.minimumValue = 0;
    slider.maximumValue = 20;
    slider.value = 5;
}

- (void)setBlurImageViews:(NSArray *)blurImageViews{
    _blurImageViews = blurImageViews;
    for (UIImageView * v in blurImageViews) {
        v.tintColor = UIColor.redColor;
    }
}

- (void)viewDidLoad{
    [super viewDidLoad];
    
    _visual = [[BTVisualEffectView alloc]initWithFrame:self.view.bounds];
    _visual.scale = 1;
    _visual.blurRadius = 5;
    _visual.colorTint = UIColor.blueColor;
    _visual.colorTintAlpha = 0.3;
    
    [self.view addSubview:_visual];
    [self.view addSubview:self.slider];
    
}


- (IBAction)sliderAction:(UISlider *)sender {
    _visual.blurRadius = sender.value;
}


@end
