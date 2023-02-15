import 'package:flutter/services.dart';
import 'package:mac_scanner/core/config/method_channels/method_result.dart';
import 'package:mac_scanner/core/config/method_channels/methods.dart';

abstract class Channel {
  const Channel();

  abstract final MethodChannel channel;

  Future<MethodResult> invoke(Methods method, List<dynamic> args) =>
      channel.invokeMethod(method.name, args).then(
            (value) => MethodResult(
              value["error"],
              value["value"],
            ),
          );
}
