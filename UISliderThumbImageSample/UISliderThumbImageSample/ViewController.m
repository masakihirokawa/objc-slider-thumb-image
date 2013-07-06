//
//  ViewController.m
//  UISliderThumbImageSample
//
//  Created by Dolice on 2013/07/06.
//  Copyright (c) 2013年 Dolice. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //スライダー配置
    [self setCustomSlider];
}

- (void)setCustomSlider
{
    //スライダー初期化
    UISlider *slider = [[UISlider alloc] init];
    slider.frame = CGRectMake(0, 0, 250, 50);
    slider.minimumValue = 0.0;
    slider.maximumValue = 1.0;
    slider.value = 0.5;
    slider.center = self.view.center;
    
    //スライダーのデザインをカスタマイズ
    UIImage *imageForThumb = [UIImage imageNamed:@"slider_thumb.png"];
    UIImage *imageMinBase = [UIImage imageNamed:@"slider_left.png"];
    UIImage *imageForMin = [imageMinBase stretchableImageWithLeftCapWidth:4 topCapHeight:0];
    UIImage *imageMaxBase = [UIImage imageNamed:@"slider_right.png"];
    UIImage *imageForMax = [imageMaxBase stretchableImageWithLeftCapWidth:4 topCapHeight:0];
    [slider setThumbImage:imageForThumb forState:UIControlStateNormal];
    [slider setThumbImage:imageForThumb forState:UIControlStateHighlighted];
    [slider setMinimumTrackImage:imageForMin forState:UIControlStateNormal];
    [slider setMaximumTrackImage:imageForMax forState:UIControlStateNormal];
    
    //スライダーを画面に追加
    [self.view addSubview:slider];
}

@end
