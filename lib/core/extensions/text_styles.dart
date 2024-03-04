import 'package:flutter/material.dart';

extension BuildContextEntension<T> on BuildContext {
  // text styles

  TextStyle? get display => Theme.of(this).textTheme.displayLarge;

  TextStyle? get subDisplay => Theme.of(this).textTheme.displaySmall;

  TextStyle? get main => Theme.of(this).textTheme.headlineLarge;

  TextStyle? get heading => Theme.of(this).textTheme.titleLarge;

  TextStyle? get title => Theme.of(this).textTheme.titleMedium;

  TextStyle? get subTitle => Theme.of(this).textTheme.titleSmall;

  TextStyle? get body => Theme.of(this).textTheme.bodyLarge;

  TextStyle? get description => Theme.of(this).textTheme.bodyMedium;

  TextStyle? get placeholder => Theme.of(this).textTheme.labelLarge;

  TextStyle? get button => Theme.of(this).textTheme.labelMedium;

  TextStyle? get textButton => Theme.of(this).textTheme.labelSmall;
}
