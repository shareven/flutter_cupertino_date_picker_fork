# Flutter Cupertino Date Picker

[[fork packages flutter_cupertino_date_picker]](https://pub.dartlang.org/packages/flutter_cupertino_date_picker)

1. 解决 Flutter 1.20.0 不支持 DiagnosticableMixin 的错误；

2. 支持深色模式主题


Flutter 的日期选择器控件，iOS 样式。

![示例][1]

## 用法

#### 1\. 添加依赖

在项目的 `pubspec.yaml` 文件中添加依赖：

```yaml
dependencies:
  flutter_cupertino_date_picker_fork: ^1.1.0
```

#### 2\. 获取包

执行 Flutter 的命令获取包资源：

```bash
$ flutter packages get
```

#### 3\. 导入控件

在项目中导入该控件：

```dart
import 'package:flutter_cupertino_date_picker_fork/flutter_cupertino_date_picker_fork.dart';
```

#### 4\. 显示控件

##### BottomSheet形式

```dart
/// 显示BottomSheet形式的日期时间选择器。
///
/// context: [BuildContext]
/// minDateTime: [DateTime] 日期选择器的最小值
/// maxDateTime: [DateTime] 日期选择器的最大值
/// initialDateTime: [DateTime] 日期选择器的初始值
/// dateFormat: [String] 日期时间格式化
/// locale: [DateTimePickerLocale] 国际化，语言地区
/// pickerMode: [DateTimePickerMode] 显示的类型: date(日期选择器)、time(时间选择器)、datetime(日期时间选择器)
/// pickerTheme: [DateTimePickerTheme] 日期选择器的样式
/// onCancel: [DateVoidCallback] 点击标题取消按钮的回调事件
/// onClose: [DateVoidCallback] 关闭日期时间选择器的回调事件
/// onChange: [DateValueCallback] 选择的日期时间改变的事件
/// onConfirm: [DateValueCallback] 点击标题确定按钮的回调事件
DatePicker.showDatePicker(
  context,
  minDateTime: DateTime(2019, 1, 1),
  maxDateTime: DateTime(2021, 12, 31),
  initialDateTime: DateTime(2020, 6, 15),
  dateFormat: 'yyyy-MMMM-dd',
  locale: DateTimePickerLocale.en_us,
  pickerMode: DateTimePickerMode.date,
  pickerTheme: DateTimePickerTheme.Default,
  minuteDivider: 1,
  onMonthChangeStartWithFirstDate: false,
  onCancel: () => print('cancel'),
  onClose: () => print('close'),
  onChange: (dateTime, index) => print('$dateTime'),
  onConfirm: (dateTime, index) => print('$dateTime'),
);
```

##### 日期选择器控件，可以在页面上显示

```dart
/// 显示日期选择器
///
/// minDateTime: [DateTime] 日期选择器的最小值
/// maxDateTime: [DateTime] 日期选择器的最大值
/// initialDateTime: [DateTime] 日期选择器的初始值
/// dateFormat: [String] 日期时间格式化
/// locale: [DateTimePickerLocale] 国际化，语言地区
/// pickerTheme: [DateTimePickerTheme] 日期选择器的样式
/// onCancel: [DateVoidCallback] 点击标题取消按钮的回调事件
/// onChange: [DateValueCallback] 选择的日期时间改变的事件
/// onConfirm: [DateValueCallback] 点击标题确定按钮的回调事件
DatePickerWidget(
  minDateTime: DateTime(2019, 1, 1),
  maxDateTime: DateTime(2021, 12, 31),
  initialDateTime: DateTime(2020, 6, 15),
  dateFormat: 'yyyy-MMMM-dd',
  locale: DateTimePickerLocale.en_us,
  pickerTheme: DateTimePickerTheme.Default,
  onChange: (dateTime, selectedIndex) { },
  onConfirm: (dateTime, selectedIndex) { },
)
```

##### TimePicker Widget

```dart
/// 显示时间选择器
///
/// minDateTime: [DateTime] 日期选择器的最小值
/// maxDateTime: [DateTime] 日期选择器的最大值
/// initialDateTime: [DateTime] 日期选择器的初始值
/// dateFormat: [String] 日期时间格式化
/// locale: [DateTimePickerLocale] 国际化，语言地区
/// pickerTheme: [DateTimePickerTheme] 日期选择器的样式
/// minuteDivider: [int] minute restriction, e.g. 5: every 5th minute will be shown (0, 5, 10, 15 ...)
/// onCancel: [DateVoidCallback] 点击标题取消按钮的回调事件
/// onChange: [DateValueCallback] 选择的日期时间改变的事件
/// onConfirm: [DateValueCallback] 点击标题确定按钮的回调事件
TimePickerWidget(
  minDateTime: DateTime(2019, 1, 1, 8, 0),
  maxDateTime: DateTime(2021, 12, 31, 22, 0),
  initDateTime: DateTime(2020, 6, 15, 14, 30),
  dateFormat: 'HH:mm',
  locale: DateTimePickerLocale.en_us,
  pickerTheme: DateTimePickerTheme.Default,
  minuteDivider: 1,
  onChange: (dateTime, selectedIndex) { },
  onConfirm: (dateTime, selectedIndex) { },
)
```

##### DateTimePicker Widget

```dart
/// 显示日期时间选择器
///
/// minDateTime: [DateTime] 日期选择器的最小值
/// maxDateTime: [DateTime] 日期选择器的最大值
/// initialDateTime: [DateTime] 日期选择器的初始值
/// dateFormat: [String] 日期时间格式化
/// locale: [DateTimePickerLocale] 国际化，语言地区
/// pickerTheme: [DateTimePickerTheme] 日期选择器的样式
/// onCancel: [DateVoidCallback] 点击标题取消按钮的回调事件
/// onChange: [DateValueCallback] 选择的日期时间改变的事件
/// onConfirm: [DateValueCallback] 点击标题确定按钮的回调事件
DateTimePickerWidget(
  minDateTime: DateTime(2019, 1, 1),
  maxDateTime: DateTime(2021, 12, 31),
  initDateTime: DateTime(2020, 6, 15),
  dateFormat: 'yyyy-MM-dd HH:mm',
  locale: DateTimePickerLocale.en_us,
  pickerTheme: DateTimePickerTheme.Default,
  onChange: (dateTime, selectedIndex) { },
  onConfirm: (dateTime, selectedIndex) { },
)
```

#### 5\. DateTimePickerLocale

多语言支持:

- en_us: 美式英语 ***[Default locale]***
- ar: 阿拉伯语
- ar_eg: 阿拉伯语(埃及)
- bn: 孟加拉语
- bs: 波斯尼亚语
- de: 德语
- es: 西班牙语
- fr: 法语
- hr: 克罗地亚语
- hu: 匈牙利语
- in_id: 印尼语
- it: 意大利语
- jp: 日语
- ko: 韩语
- nl: 荷兰语
- pt_br: 葡萄牙语(巴西)
- ro: 罗马尼亚语
- ru: 俄语
- sr_cyrl: 塞尔维亚(西里尔)
- sr_latn: 塞尔维亚(拉丁文)
- tr: 土耳其语
- uk: 乌克兰语
- vi: 越南语
- zh_cn: 简体中文

##### 添加更多的语言

###### 1. 添加语言文件

Fork 该项目, 在 `lib/src/i18n/` 文件夹中添加语言文件。参考 `strings_en_us.dart` 文件。

```dart
/// English (EN) United States
class _StringsEnUs extends _StringsI18n {
  const _StringsEnUs();

  @override
  String getCancelText() {
    // TODO 返回标题栏取消按钮的显示文字
    return null;
  }

  @override
  String getDoneText() {
    // TODO 返回标题栏确定按钮的显示文字
    return null;
  }

  @override
  List<String> getMonths() {
    // TODO 返回月份的全称 [1月, 2月 ... 12月]
    return null;
  }

  @override
  List<String>? getMonthsShort() {
    // TODO 返回月份的简称 [Jan, Feb ... Dec]，返回null默认对全程进行截取，最多截取3位
    return null;
  }

  @override
  List<String> getWeeksFull() {
    // TODO 返回星期几的全称 [周一, 周二 ... 周日]
    return null;
  }

  @override
  List<String>? getWeeksShort() {
    // TODO 返回星期几的缩写 [周一, 周二 ... 周日]
    return null;
  }
}
```

###### 2. 添加 DateTimePickerLocale

在 `lib/src/i18n/date_picker_i18n.dart` 文件中添加新语言对应的 `DateTimePickerLocale`。

```dart
enum DateTimePickerLocale {
  /// English (EN) United States
  en_us,
}
```

###### 3. 添加 DateTimePickerLocale 和语言的对应关系

在 `lib/src/i18n/date_picker_i18n.dart` 文件中添加 DateTimePickerLocale 和语言的对应关系。

```dart
const Map<DateTimePickerLocale, _StringsI18n> datePickerI18n = {
  DateTimePickerLocale.en_us: const _StringsEnUs(),
};
```

#### 6\. dateFormat

|Pattern|Meaning        |e.g.       |
|:----|:----------------|:----------|
|yyyy |年份              |2019, 2020|
|yy   |年份, 2位数字      |19, 20|
|MMMM |月份              |January(en_us), 01(zh_cn)|
|MMM  |月份, 缩写         |Jan(en_us), 01(zh_cn)|
|MM   |月份, 2位数字      |01、11
|M    |月份              |1, 11|
|dd   |日期, 2位数字      |05, 25|
|d    |日期              |5, 25|
|EEEE |星期              |Monday(en_us), 星期一(zh_cn)|
|EEE  |星期, 缩写         |Mon(en_us), 周一(zh_cn)|
|HH   |时 (0~23), 2位数字 |04, 12, 20|
|H    |时 (0~23)         |4, 12, 20|
|mm   |分, 2位数字        |05, 40|
|m    |分                |5, 40|
|ss   |秒, 2位数字        |06, 55|
|s    |秒                |6, 55|
|yyyy年|格式化            |2019年, 2020年|
|H时   |格式化            |5时, 21时|

##### Date Format Separator

支持的分隔符: `|,-/\._: `.

#### 7\. DateTimePickerTheme

所有颜色/样式字段都是可空的。传入部分主题时，**缺失的值会自动从 `Theme.of(context)` 解析**，同时支持浅色和深色模式。

```dart
/// 日期时间选择器的样式
///
/// [backgroundColor] 背景色。null = 自动（白色 / 深色背景）。
/// [cancelTextStyle] 默认标题栏取消按钮的样式 [TextStyle]。null = 自动。
/// [confirmTextStyle] 默认标题栏确定按钮的样式 [TextStyle]。null = 自动。
/// [cancel] 自定义标题栏取消按钮
/// [confirm] 自定义标题栏确定按钮
/// [title] 自定义标题栏。如果指定了自定义标题栏，不显示默认的标题栏。指定自定义的标题栏时必须指定 [titleHeight] 的值
/// [showTitle] 是否显示默认的标题栏。如果设置为false，默认的取消、确定按钮都不会显示，自定义的标题栏不受影响
/// [pickerHeight] 日期选择器的高度
/// [titleHeight] 标题栏的高度
/// [itemHeight] 选择器每一行的高度
/// [itemTextStyle] 选择器每一行的样式 [TextStyle]。null = 自动。
const DateTimePickerTheme({
  this.backgroundColor,
  this.cancelTextStyle,
  this.confirmTextStyle,
  this.cancel,
  this.confirm,
  this.title,
  this.showTitle = true,
  this.pickerHeight = 210.0,
  this.titleHeight = 44.0,
  this.itemHeight = 36.0,
  this.itemTextStyle,
});
```

##### 深色模式

`DateTimePickerTheme.of(context)` 读取 `Theme.of(context)` 为深色模式生成正确的默认值。`showDatePicker` 入口和所有 widget 会自动调用 `resolve(context)`，所以你**无需任何额外配置** —— 只要 app 的 `ThemeData` 设置了 `brightness: Brightness.dark`，就能自动适配。

如果只提供部分覆盖，未指定的字段仍然会自动适应当前主题：

```dart
DatePicker.showDatePicker(
  context,
  minDateTime: ...,
  maxDateTime: ...,
  pickerTheme: DateTimePickerTheme(
    backgroundColor: Colors.blue.shade50,  // 显式指定
    // cancelTextStyle, confirmTextStyle, itemTextStyle → 自动解析
  ),
);
```

[1]: ./example/output/demo.gif
