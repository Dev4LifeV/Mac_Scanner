import 'package:flutter/services.dart';
import 'package:mac_scanner/view/home.dart';
import 'package:flutter/material.dart';
import 'package:mac_scanner/view/style/colors.dart';

class App extends MaterialApp {
  const App({super.key});

  @override
  Widget get home => const Home();

  @override
  ThemeData get theme => ThemeData(
        colorScheme: const ColorScheme(
            brightness: Brightness.light,
            background: AppColors.backgroundColor,
            onBackground: Colors.white,
            primary: AppColors.primary,
            onPrimary: AppColors.onPrimary,
            secondary: AppColors.secondary,
            onSecondary: AppColors.onSecondary,
            surface: AppColors.onPrimary,
            onSurface: Colors.black,
            error: Colors.red,
            onError: Colors.redAccent),
      );
}
