//
//  ViewController.m
//  MHD_CountryPickerViewDemo
//
//  Created by 马赫迪 on 2019/11/22.
//  Copyright © 2019 Cold Technology. All rights reserved.
//

#import "ViewController.h"
#import "MHD_CountryPickerView.h"

//屏幕尺寸
#define MAIN_SIZE ([ [ UIScreen mainScreen ] bounds ].size)

@interface ViewController ()
@property (nonatomic,retain)UIButton *defaultBtn;
@property (nonatomic,retain)UIButton *violetGoldBtn;
@property (nonatomic,retain)MHD_CountryPickerView *defaultPickerView;
@property (nonatomic,retain)MHD_CountryPickerView *violetGoldPickerView;
@property (nonatomic,retain)UILabel *showLabel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self defaultBtn];
    [self violetGoldBtn];
    [self showLabel];
}
#pragma mark 默认配色选择按钮
- (UIButton *)defaultBtn
{
    if (!_defaultBtn) {
        _defaultBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_defaultBtn setTitle:@"默认配色选择器" forState:UIControlStateNormal];
        [_defaultBtn setTitleColor:[UIColor systemBlueColor] forState:UIControlStateNormal];
        _defaultBtn.frame = CGRectMake(0, 0, 150, 20);
        _defaultBtn.center = CGPointMake(MAIN_SIZE.width/2, 150);
        [_defaultBtn addTarget:self action:@selector(defaultBtnAction:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:_defaultBtn];
    }
    return _defaultBtn;
}
- (void)defaultBtnAction:(UIButton *)btn
{
    [self.defaultPickerView showCountryPickerView];
}
#pragma mark 紫金配色选择按钮
- (UIButton *)violetGoldBtn
{
    if (!_violetGoldBtn) {
        _violetGoldBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_violetGoldBtn setTitle:@"紫金配色选择器" forState:UIControlStateNormal];
        [_violetGoldBtn setTitleColor:[UIColor systemBlueColor] forState:UIControlStateNormal];
        _violetGoldBtn.frame = CGRectMake(0, 0, 150, 20);
        _violetGoldBtn.center = CGPointMake(MAIN_SIZE.width/2, 200);
        [_violetGoldBtn addTarget:self action:@selector(violetGoldBtnAction:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:_violetGoldBtn];
    }
    return _violetGoldBtn;
}
- (void)violetGoldBtnAction:(UIButton *)btn
{
    [self.violetGoldPickerView showCountryPickerView];
}
- (MHD_CountryPickerView *)defaultPickerView
{
    __weak ViewController *weakSelf = self;
    if (!_defaultPickerView) {
        _defaultPickerView = [[MHD_CountryPickerView alloc] init];
        _defaultPickerView.confirmClickBlock = ^(NSString * _Nonnull countryName, NSString * _Nonnull countryCode) {
            NSLog(@"MHD_%@_%@",countryName,countryCode);
            weakSelf.showLabel.text = [NSString stringWithFormat:@"%@(%@)",countryName,countryCode];
        };
        [self.view addSubview:_defaultPickerView];
    }
    return _defaultPickerView;
}
- (MHD_CountryPickerView *)violetGoldPickerView
{
    __weak ViewController *weakSelf = self;
    if (!_violetGoldPickerView) {
        _violetGoldPickerView = [[MHD_CountryPickerView alloc] init];
        _violetGoldPickerView.confirmClickBlock = ^(NSString * _Nonnull countryName, NSString * _Nonnull countryCode) {
            NSLog(@"MHD_%@_%@",countryName,countryCode);
            weakSelf.showLabel.text = [NSString stringWithFormat:@"%@(%@)",countryName,countryCode];
        };
        //        _countryView.pickerViewHeight = 350.f;
        _violetGoldPickerView.pickerBackgroundColor = [UIColor colorWithRed:83/255.0 green:26/255.0 blue:129/255.0 alpha:1];
        _violetGoldPickerView.pickerLabelColor = [UIColor colorWithRed:251/255.0 green:185/255.0 blue:42/255.0 alpha:1];
        _violetGoldPickerView.toolViewBackgroundColor = [UIColor colorWithRed:251/255.0 green:185/255.0 blue:42/255.0 alpha:1];
        _violetGoldPickerView.cancelButtonTitle = @"不选了";
        _violetGoldPickerView.cancelButtonTitleColor = [UIColor colorWithRed:83/255.0 green:26/255.0 blue:129/255.0 alpha:1];
        _violetGoldPickerView.cancelButtonFontSize = 14.f;
        _violetGoldPickerView.confirmButtonTitle = @"就它了";
        _violetGoldPickerView.confirmButtonTitleColor = [UIColor colorWithRed:83/255.0 green:26/255.0 blue:129/255.0 alpha:1];
        _violetGoldPickerView.confirmButtonFontSize = 14.f;
        _violetGoldPickerView.centerTitle = @"紫金配色";
        _violetGoldPickerView.centerTitleColor = [UIColor colorWithRed:83/255.0 green:26/255.0 blue:129/255.0 alpha:1];
        _violetGoldPickerView.centerTitleFontSize = 20.f;
        [self.view addSubview:_violetGoldPickerView];
    }
    return _violetGoldPickerView;
}
- (UILabel *)showLabel
{
    if (!_showLabel) {
        _showLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, MAIN_SIZE.width, 40)];
        _showLabel.center = CGPointMake(MAIN_SIZE.width/2, 250);
        _showLabel.textColor = [UIColor systemGrayColor];
        _showLabel.font = [UIFont systemFontOfSize:29];
        _showLabel.textAlignment = NSTextAlignmentCenter;
        _showLabel.adjustsFontSizeToFitWidth = true;
        [self.view addSubview:_showLabel];
    }
    return _showLabel;
}
@end
