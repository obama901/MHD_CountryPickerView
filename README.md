# MHD_CountryPickerView
可以选择国家的选择器,得到名称与区号.

### 说明
这是一个国家选择器,选择按照中文拼音的首字母进行区分,国旗的素材有一些还没有完善,后续会补上.

### 演示
![演示动图](https://github.com/obama901/MHD_CountryPickerView/blob/master/MHD_CountryPickerViewShow.gif)
### 使用方法
* 默认的模式:

```
- (MHD_CountryPickerView *)defaultPickerView
{
    if (!_defaultPickerView) {
        _defaultPickerView = [[MHD_CountryPickerView alloc] init];
        _defaultPickerView.confirmClickBlock = ^(NSString * _Nonnull countryName, NSString * _Nonnull countryCode) {
                    
        };
        [self.view addSubview:_defaultPickerView];
    }
    return _defaultPickerView;
}
```
显示

```
[self.defaultPickerView showCountryPickerView];
```

* 可以自定义的模式:

```
- (MHD_CountryPickerView *)violetGoldPickerView
{
    if (!_violetGoldPickerView) {
        _violetGoldPickerView = [[MHD_CountryPickerView alloc] init];
        _violetGoldPickerView.confirmClickBlock = ^(NSString * _Nonnull countryName, NSString * _Nonnull countryCode) {
            
        };
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
```
显示

```
[self.violetGoldPickerView showCountryPickerView];
```

### 感谢

> https://github.com/mohuilin/CountryCode (国家的json文件是从这里面提取)的
