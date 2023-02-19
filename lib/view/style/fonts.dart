import 'package:flutter/material.dart';
import 'package:mac_scanner/core/config/extensions.dart';

extension Fonts on BuildContext {
  TextStyle? get _headlineMedium => Theme.of(this).textTheme.headlineMedium;
  TextStyle? get _headlineSmall => Theme.of(this).textTheme.headlineSmall;
  TextStyle? get _titleMedium => Theme.of(this).textTheme.titleMedium;
  TextStyle? get _bodyLarge => Theme.of(this).textTheme.bodyLarge;

  TextStyle get title => TextStyle(
        fontSize: _headlineMedium?.fontSize,
        height: _headlineMedium?.height,
        wordSpacing: _headlineMedium?.wordSpacing,
        textBaseline: _headlineMedium?.textBaseline,
        overflow: _headlineMedium?.overflow,
        letterSpacing: _headlineMedium?.letterSpacing,
        fontVariations: _headlineMedium?.fontVariations,
        fontWeight: FontWeight.w300,
        color: colors.primary,
        fontFeatures: _headlineMedium?.fontFeatures,
      );

  TextStyle get subtitle => TextStyle(
        fontSize: _titleMedium?.fontSize,
        height: _titleMedium?.height,
        wordSpacing: _titleMedium?.wordSpacing,
        textBaseline: _titleMedium?.textBaseline,
        overflow: _titleMedium?.overflow,
        letterSpacing: _titleMedium?.letterSpacing,
        fontVariations: _titleMedium?.fontVariations,
        fontWeight: FontWeight.w300,
        color: colors.primary,
        fontFeatures: _titleMedium?.fontFeatures,
      );

  TextStyle get titleBold => TextStyle(
        fontSize: _headlineMedium?.fontSize,
        height: _headlineMedium?.height,
        wordSpacing: _headlineMedium?.wordSpacing,
        textBaseline: _headlineMedium?.textBaseline,
        overflow: _headlineMedium?.overflow,
        letterSpacing: _headlineMedium?.letterSpacing,
        fontVariations: _headlineMedium?.fontVariations,
        fontWeight: FontWeight.w600,
        color: colors.primary,
        fontFeatures: _headlineMedium?.fontFeatures,
      );

  TextStyle get cardTitle => TextStyle(
        fontSize: _headlineSmall?.fontSize,
        height: _headlineSmall?.height,
        wordSpacing: _headlineSmall?.wordSpacing,
        textBaseline: _headlineSmall?.textBaseline,
        overflow: _headlineSmall?.overflow,
        letterSpacing: _headlineSmall?.letterSpacing,
        fontVariations: _headlineSmall?.fontVariations,
        fontWeight: FontWeight.w700,
        color: colors.onPrimary,
        fontFeatures: _headlineSmall?.fontFeatures,
      );

  TextStyle get bodyText => TextStyle(
        fontSize: _bodyLarge?.fontSize,
        height: _bodyLarge?.height,
        wordSpacing: _bodyLarge?.wordSpacing,
        textBaseline: _bodyLarge?.textBaseline,
        overflow: _bodyLarge?.overflow,
        letterSpacing: _bodyLarge?.letterSpacing,
        fontVariations: _bodyLarge?.fontVariations,
        fontWeight: FontWeight.w700,
        color: colors.onPrimary,
        fontFeatures: _bodyLarge?.fontFeatures,
      );
}
