import 'package:flutter/material.dart';

extension SchemeStyle on BuildContext {
  ColorScheme get colors => Theme.of(this).colorScheme;
}
