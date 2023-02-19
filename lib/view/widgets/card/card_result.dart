import 'package:flutter/material.dart';
import 'package:mac_scanner/core/config/extensions.dart';
import 'package:mac_scanner/view/style/fonts.dart';

class CardResult extends StatelessWidget {
  const CardResult({super.key});

  @override
  Widget build(BuildContext context) => Card(
        elevation: 0,
        color: Colors.transparent,
        child: body(context),
      );

  Widget title(BuildContext context, String title) => Container(
        padding: const EdgeInsets.only(left: 12, top: 20),
        child: Text(
          title,
          style: context.cardTitle,
        ),
      );

  Widget row(BuildContext context, String key, String value, int index) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 1),
        color: index.isEven ? context.colors.primary : Colors.transparent,
        child: Row(
          children: [
            Expanded(
              child: Text(
                key,
                style: context.bodyText,
              ),
            ),
            Expanded(
              child: Text(
                value,
                style: context.bodyText,
              ),
            ),
          ],
        ),
      );

  Widget body(BuildContext context) => SizedBox(
        width: MediaQuery.of(context).size.width * 0.75,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            title(context, "Vendor details"),
            const SizedBox(
              height: 10,
            ),
            row(context, "Oui", "443839", 0),
            row(context, "AA", "PP", 1),
            row(context, "AA", "PP", 2),
            row(context, "AA", "PP", 3),
          ],
        ),
      );
}
