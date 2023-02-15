import 'package:flutter/services.dart';
import 'package:mac_scanner/core/config/method_channels/channels.dart';
import 'package:mac_scanner/core/config/method_channels/method_channel.dart';
import 'package:mac_scanner/core/config/method_channels/method_result.dart';
import 'package:mac_scanner/core/config/method_channels/methods.dart';

class HttpChannel extends Channel {
  const HttpChannel();

  @override
  final MethodChannel channel = const MethodChannel(channelHttp);

  Future<MethodResult> get(List<dynamic> args) async => invoke(Methods.get, args);
}
