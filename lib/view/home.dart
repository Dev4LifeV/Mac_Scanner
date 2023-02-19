import 'package:flutter/material.dart';
import 'package:mac_scanner/core/model/mac_address/mac_address.dart';
import 'package:mac_scanner/core/config/extensions.dart';
import 'package:mac_scanner/view/widgets/appbar/custom_appbar.dart';
import 'package:mac_scanner/view/widgets/card/card_latest_lookup.dart';
import 'package:mac_scanner/view/widgets/card/card_result.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  MacAddress? result;

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: context.colors.background,
        appBar: const PreferredSize(
          preferredSize: Size(double.infinity, CustomAppBar.toolbarHeight),
          child: CustomAppBar(),
        ),
        body: body(),
      );

  Widget body() => SingleChildScrollView(
        child: Column(
          children: [
            header(),
            const CardResult(),
            const CardResult(),
            const CardResult(),
            const CardResult(),
            const CardResult(),
            const CardResult(),
          ],
        ),
      );

  Widget header() => const CardLatestLookup();
}
