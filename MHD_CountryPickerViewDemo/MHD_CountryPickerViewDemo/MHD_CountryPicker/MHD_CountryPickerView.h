//
//  MHD_CountryPicker.h
//  testDemo
//
//  Created by 马赫迪 on 2019/11/21.
//  Copyright © 2019 马赫迪. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MHD_CountryPickerView : UIView

/// 选择器视图高度
@property (nonatomic,assign)float pickerViewHeight;

/// 选择器视图背景颜色
@property (nonatomic,retain)UIColor *pickerBackgroundColor;

/// 选择器文字颜色
@property (nonatomic,retain)UIColor *pickerLabelColor;

/// 顶部栏背景颜色
@property (nonatomic,retain)UIColor *toolViewBackgroundColor;

/// 取消按钮标题文字
@property (nonatomic,copy)NSString *cancelButtonTitle;

/// 取消按钮标题颜色
@property (nonatomic,retain)UIColor *cancelButtonTitleColor;

/// 取消按钮标题大小
@property (nonatomic,assign)float cancelButtonFontSize;

/// 确认按钮标题文字
@property (nonatomic,copy)NSString *confirmButtonTitle;

/// 确认按钮标题颜色
@property (nonatomic,retain)UIColor *confirmButtonTitleColor;

/// 确认按钮标题大小
@property (nonatomic,assign)float confirmButtonFontSize;

/// 中心标题文字
@property (nonatomic,copy)NSString *centerTitle;

/// 中心标题颜色
@property (nonatomic,retain)UIColor *centerTitleColor;

/// 中心标题大小
@property (nonatomic,assign)float centerTitleFontSize;

/// 取消按钮点击回调
@property (nonatomic,copy)void(^cancelClickBlock)(NSString *countryName,NSString *countryCode);

/// 确认按钮点击回调
@property (nonatomic,copy)void(^confirmClickBlock)(NSString *countryName,NSString *countryCode);

+ (instancetype)new NS_UNAVAILABLE;

- (void)showCountryPickerView;

- (void)hideCountryPickerView;
@end

NS_ASSUME_NONNULL_END
