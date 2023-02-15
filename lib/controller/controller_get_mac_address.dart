import 'package:mac_scanner/core/controller/controller.dart';
import 'package:mac_scanner/core/model/mac_address/mac_address.dart';
import 'package:mac_scanner/usecase/usecase_get_mac_address.dart';

class ControllerGetMacAddress extends Controller {
  ControllerGetMacAddress(this.usecase);

  @override
  final UsecaseGetMacAddress usecase;

  @override
  Future<MacAddress> callUsecase() => usecase.call();
}
