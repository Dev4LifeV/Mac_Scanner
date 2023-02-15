import 'package:mac_scanner/controller/controller_get_mac_address.dart';
import 'package:mac_scanner/core/config/injector.dart';
import 'package:mac_scanner/core/config/method_channels/http_channel.dart';
import 'package:mac_scanner/usecase/usecase_get_mac_address.dart';

init() {
  _createChannels();
  _createUsecases();
  _createControllers();
}

_createChannels() {
  Injector.shared.create<HttpChannel>(const HttpChannel());
}

_createUsecases() {
  Injector.shared.create<UsecaseGetMacAddress>(
    UsecaseGetMacAddress(
      channel: Injector.shared.read<HttpChannel>(),
    ),
  );
}

_createControllers() {
  Injector.shared.create<ControllerGetMacAddress>(
    ControllerGetMacAddress(Injector.shared.read<UsecaseGetMacAddress>()),
  );
}
