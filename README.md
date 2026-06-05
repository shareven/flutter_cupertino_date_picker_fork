# Flutter Cupertino Date Picker

[[fork packages flutter_cupertino_date_picker]](https://pub.dartlang.org/packages/flutter_cupertino_date_picker)

1. Solve the error of flutter1.20.0 :not support DiagnosticableMixin;

2. Support Dark Mode theme

Flutter cupertino date picker.

![Example][1]

## Usage

#### 1\. Depend

Add this to you package's `pubspec.yaml` file:

```yaml
dependencies:
  flutter_cupertino_date_picker_fork: ^1.1.0
```

#### 2\. Install

Run command:

```bash
$ flutter packages get
```

#### 3\. Import

Import in Dart code:

```dart
import 'package:flutter_cupertino_date_picker_fork/flutter_cupertino_date_picker_fork.dart';
```

#### 4\. Display DatePicker

##### Bottom Sheet DatePicker

```dart
/// Display date picker in bottom sheet.
///
/// context: [BuildContext]
/// minDateTime: [DateTime] minimum date time
/// maxDateTime: [DateTime] maximum date time
/// initialDateTime: [DateTime] initial date time for selected
/// dateFormat: [String] date format pattern
/// locale: [DateTimePickerLocale] internationalization
/// pickerMode: [DateTimePickerMode] display mode: date(DatePicker)、time(TimePicker)、datetime(DateTimePicker)
/// pickerTheme: [DateTimePickerTheme] the theme of date time picker
/// onCancel: [DateVoidCallback] pressed title cancel widget event
/// onClose: [DateVoidCallback] date picker closed event
/// onChange: [DateValueCallback] selected date time changed event
/// onConfirm: [DateValueCallback] pressed title confirm widget event
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

##### DatePicker Widget

```dart
/// Display date picker widget.
///
/// minDateTime: [DateTime] minimum date time
/// maxDateTime: [DateTime] maximum date time
/// initialDateTime: [DateTime] initial date time for selected
/// dateFormat: [String] date format pattern
/// locale: [DateTimePickerLocale] internationalization
/// pickerTheme: [DateTimePickerTheme] the theme of date time picker
/// onCancel: [DateVoidCallback] pressed title cancel widget event
/// onChange: [DateValueCallback] selected date time changed event
/// onConfirm: [DateValueCallback] pressed title confirm widget event
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
/// Display time picker widget.
///
/// minDateTime: [DateTime] minimum date time
/// maxDateTime: [DateTime] maximum date time
/// initialDateTime: [DateTime] initial date time for selected
/// dateFormat: [String] date format pattern
/// locale: [DateTimePickerLocale] internationalization
/// pickerTheme: [DateTimePickerTheme] the theme of date time picker
/// minuteDivider: [int] minute restriction, e.g. 5: every 5th minute will be shown (0, 5, 10, 15 ...)
/// onCancel: [DateVoidCallback] pressed title cancel widget event
/// onChange: [DateValueCallback] selected date time changed event
/// onConfirm: [DateValueCallback] pressed title confirm widget event
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
/// Display date time picker widget.
///
/// minDateTime: [DateTime] minimum date time
/// maxDateTime: [DateTime] maximum date time
/// initialDateTime: [DateTime] initial date time for selected
/// dateFormat: [String] date format pattern
/// locale: [DateTimePickerLocale] internationalization
/// pickerTheme: [DateTimePickerTheme] the theme of date time picker
/// onCancel: [DateVoidCallback] pressed title cancel widget event
/// onChange: [DateValueCallback] selected date time changed event
/// onConfirm: [DateValueCallback] pressed title confirm widget event
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

Support:

- en_us: English (EN) United States ***[Default locale]***
- ar: Arabic (ar)
- ar_eg: Arabic (ar) Egypt
- bn: Bengali (BN)
- bs: Bosnian (BS)
- de: German (DE)
- es: Spanish (ES)
- fr: French (FR)
- hr: Croatian (HR)
- hu: Hungarian (HU)
- in_id: Bahasa (IN) Indonesia
- it: Italian (IT)
- jp: Japanese (JP)
- ko: Korea (KO)
- nl: Dutch (NL)
- pt_br: Portuguese (PT) Brazil
- ro: Romanian (RO)
- ru: Russian (RU)
- sr_cyrl: Serbia (sr) Cyrillic
- sr_latn: Serbia (sr) Latin
- tr: Turkish (TR)
- uk: Ukraine (UK)
- vi: Vietnamese (VI) Vietnam
- zh_cn: Chinese (ZH) Simplified

##### Add more language

###### 1. Add language i18n file

Fork this project, add language file in `lib/src/i18n/` directory, e.g. `strings_en_us.dart`.

```dart
/// English (EN) United States
class _StringsEnUs extends _StringsI18n {
  const _StringsEnUs();

  @override
  String getCancelText() {
    // TODO return cancel widget's text
    return null;
  }

  @override
  String getDoneText() {
    // TODO return done widget's text
    return null;
  }

  @override
  List<String> getMonths() {
    // TODO return the array of month's full name [January, February ... December]
    return null;
  }

  @override
  List<String>? getMonthsShort() {
    // TODO return the array of month's short name [Jan, Feb ... Dec]. If return null, will substring the full name (max length is 3)
    return null;
  }

  @override
  List<String> getWeeksFull() {
    // TODO return the array of week's full name [Monday, Tuesday ... Sunday]
    return null;
  }

  @override
  List<String>? getWeeksShort() {
    // TODO return the array of week's short name [Mon, Tue ... Sun]
    return null;
  }
}
```

###### 2. Add Locale

Add language locale in `lib/src/i18n/date_picker_i18n.dart` file.

```dart
enum DateTimePickerLocale {
  /// English (EN) United States
  en_us,
}
```

###### 3. Add Locale-Language relationship

Add language-locale relationship in `lib/src/i18n/date_picker_i18n.dart` file.

```dart
const Map<DateTimePickerLocale, _StringsI18n> datePickerI18n = {
  DateTimePickerLocale.en_us: const _StringsEnUs(),
};
```

#### 6\. dateFormat

|Pattern|Meaning                |e.g.      |
|:----|:------------------------|:---------|
|yyyy |year                     |2019, 2020|
|yy   |year, 2 digits           |19, 20|
|MMMM |month                    |January(en_us), 01(zh_cn)|
|MMM  |month, abbreviated       |Jan(en_us), 01(zh_cn)|
|MM   |month, 2 digits          |01、11
|M    |month                    |1, 11|
|dd   |day in month, 2 digits   |05, 25|
|d    |day in month             |5, 25|
|EEEE |day of week              |Monday(en_us), 星期一(zh_cn)|
|EEE  |day of week, abbreviated |Mon(en_us), 周一(zh_cn)|
|HH   |hour (0~23), 2 digits    |04, 12, 20|
|H    |hour (0~23)              |4, 12, 20|
|mm   |minute, 2 digits         |05, 40|
|m    |minute                   |5, 40|
|ss   |second, 2 digits         |06, 55|
|s    |second                   |6, 55|
|yyyy年|format                   |2019年, 2020年|
|H时   |format                   |5时, 21时|

##### Date Format Separator

Support separator: `|,-/\._: `.

#### 7\. DateTimePickerTheme

All color/style fields are nullable. When you pass a partial theme, **missing values are resolved automatically** from `Theme.of(context)`, supporting both light and dark mode out of the box.

```dart
/// DateTimePicker theme.
///
/// [backgroundColor] DatePicker's background color. null = auto (white / dark surface).
/// [cancelTextStyle] Default cancel widget's [TextStyle]. null = auto.
/// [confirmTextStyle] Default confirm widget's [TextStyle]. null = auto.
/// [cancel] Custom cancel widget.
/// [confirm] Custom confirm widget.
/// [title] Custom title widget. If specify a title widget, the cancel and confirm widgets will not display. Must set [titleHeight] value for custom title widget.
/// [showTitle] Whether display title widget or not. If set false, the default cancel and confirm widgets will not display, but the custom title widget will display if had specified one custom title widget.
/// [pickerHeight] The value of DatePicker's height.
/// [titleHeight] The value of DatePicker's title height.
/// [itemHeight] The value of DatePicker's column height.
/// [itemTextStyle] The value of DatePicker's column [TextStyle]. null = auto.
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

##### Dark Mode

`DateTimePickerTheme.of(context)` reads `Theme.of(context)` to produce correct defaults for dark mode. The `showDatePicker` entry point and all widgets call `resolve(context)` automatically, so **you don't need to do anything** — it just works when your app's `ThemeData` has `brightness: Brightness.dark`.

If you provide partial overrides, unspecified fields still adapt to the current theme:

```dart
DatePicker.showDatePicker(
  context,
  minDateTime: ...,
  maxDateTime: ...,
  pickerTheme: DateTimePickerTheme(
    backgroundColor: Colors.blue.shade50,  // explicit
    // cancelTextStyle, confirmTextStyle, itemTextStyle → auto-resolved
  ),
);
```

[1]: ./example/output/demo.gif
