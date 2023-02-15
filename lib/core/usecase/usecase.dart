import 'package:mac_scanner/core/config/method_channels/method_channel.dart';

abstract class Usecase<T> {
  abstract final Channel channel;

  Future<T> call();
}
