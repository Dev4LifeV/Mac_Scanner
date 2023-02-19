import 'package:flutter/material.dart';
import 'package:mac_scanner/core/config/extensions.dart';
import 'package:mac_scanner/view/widgets/appbar/bottom_line.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  static const double toolbarHeight = kToolbarHeight + 44;

  @override
  Widget build(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: EdgeInsets.zero,
            padding: EdgeInsets.zero,
            height: toolbarHeight,
            color: context.colors.background,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  padding: const EdgeInsets.only(top: 25),
                  onPressed: () {},
                  icon: Icon(
                    Icons.history,
                    color: context.colors.primary,
                  ),
                )
              ],
            ),
          ),
          const BottomLine()
        ],
      );
}
