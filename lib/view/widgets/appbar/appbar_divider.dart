import 'package:flutter/material.dart';
import 'package:mac_scanner/core/config/extensions.dart';

class AppbarDivider extends StatelessWidget implements PreferredSizeWidget {
  const AppbarDivider({super.key});

  @override
  Widget build(BuildContext context) => Divider(
        color: context.colors.primary,
        height: 0,
        thickness: 2,
      );

  @override
  Size get preferredSize => const Size(double.infinity, 0);
}
