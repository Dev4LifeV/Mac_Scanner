import 'package:mac_scanner/core/config/method_channels/http_channel.dart';
import 'package:mac_scanner/core/config/method_channels/method_result.dart';
import 'package:mac_scanner/core/model/mac_address/mac_address.dart';
import 'package:mac_scanner/core/usecase/usecase.dart';

class UsecaseGetMacAddress extends Usecase<MacAddress> {
  UsecaseGetMacAddress({required this.channel});

  @override
  final HttpChannel channel;

  @override
  Future<MacAddress> call() => channel.get([
        "https://api.macaddress.io/v1?output=json&search=4c:20:b8:ab:f5:11",
        "at_tmMmqWS9NdQCPL5FbHWljvWSJj1nn",
      ]).then(_handleValue);

  MacAddress _handleValue(MethodResult result) => MacAddress(
        vendorDetails: VendorDetails.fromJson(result.value["vendorDetails"]),
        blockDetails: BlockDetails.fromJson(result.value["blockDetails"]),
        macAddressDetails: MacAddressDetails.fromJson(
          result.value["macAddressDetails"],
        ),
      );
}
