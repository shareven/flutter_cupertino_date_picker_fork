import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

const DATETIME_PICKER_SHOW_TITLE_DEFAULT = true;
const double DATETIME_PICKER_HEIGHT = 210.0;
const double DATETIME_PICKER_TITLE_HEIGHT = 44.0;
const double DATETIME_PICKER_ITEM_HEIGHT = 36.0;

class DateTimePickerTheme with Diagnosticable {
  final cancelDefault = const Text('OK');

  const DateTimePickerTheme({
    this.backgroundColor,
    this.cancelTextStyle,
    this.confirmTextStyle,
    this.cancel,
    this.confirm,
    this.title,
    this.showTitle = DATETIME_PICKER_SHOW_TITLE_DEFAULT,
    this.pickerHeight = DATETIME_PICKER_HEIGHT,
    this.titleHeight = DATETIME_PICKER_TITLE_HEIGHT,
    this.itemHeight = DATETIME_PICKER_ITEM_HEIGHT,
    this.itemTextStyle,
  });

  static const DateTimePickerTheme Default = DateTimePickerTheme();

  factory DateTimePickerTheme.of(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final colorScheme = theme.colorScheme;

    return DateTimePickerTheme(
      backgroundColor: isDark ? const Color(0xFF1C1C1E) : Colors.white,
      itemTextStyle: TextStyle(
        color: isDark ? const Color(0xFFE0E0E0) : const Color(0xFF000046),
        fontSize: 16.0,
      ),
      cancelTextStyle: TextStyle(
        color: isDark ? const Color(0xFF8E8E93) : theme.unselectedWidgetColor,
        fontSize: 16.0,
      ),
      confirmTextStyle: TextStyle(
        color: colorScheme.primary,
        fontSize: 16.0,
      ),
    );
  }

  DateTimePickerTheme resolve(BuildContext context) {
    final defaults = DateTimePickerTheme.of(context);
    return DateTimePickerTheme(
      backgroundColor: backgroundColor ?? defaults.backgroundColor!,
      cancelTextStyle: cancelTextStyle ?? defaults.cancelTextStyle,
      confirmTextStyle: confirmTextStyle ?? defaults.confirmTextStyle,
      cancel: cancel ?? defaults.cancel,
      confirm: confirm ?? defaults.confirm,
      title: title ?? defaults.title,
      showTitle: showTitle,
      pickerHeight: pickerHeight,
      titleHeight: titleHeight,
      itemHeight: itemHeight,
      itemTextStyle: itemTextStyle ?? defaults.itemTextStyle,
    );
  }

  final Color? backgroundColor;

  final TextStyle? cancelTextStyle;

  final TextStyle? confirmTextStyle;

  final Widget? cancel;

  final Widget? confirm;

  final Widget? title;

  final bool showTitle;

  final double pickerHeight;

  final double titleHeight;

  final double itemHeight;

  final TextStyle? itemTextStyle;
}
