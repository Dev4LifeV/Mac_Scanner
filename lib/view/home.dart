import 'package:flutter/material.dart';
import 'package:mac_scanner/controller/controller_get_mac_address.dart';
import 'package:mac_scanner/core/config/injector.dart';
import 'package:mac_scanner/core/model/mac_address/mac_address.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  MacAddress? result;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text("MacScanner iOS"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => Injector.shared
              .read<ControllerGetMacAddress>()
              .callUsecase()
              .then((value) => setState(() => result = value)),
          child: const Icon(Icons.search),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Tap the button to start a new request"),
              Text(
                result?.macAddressDetails?.transmissionType ?? "Nothing was found",
              )
            ],
          ),
        ),
      );
}
