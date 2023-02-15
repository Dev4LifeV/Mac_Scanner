import 'package:mac_scanner/core/model/mac_address/block_details.dart';
import 'package:mac_scanner/core/model/mac_address/mac_address_details.dart';
import 'package:mac_scanner/core/model/mac_address/vendor_details.dart';

class MacAddress {
  MacAddress({
    VendorDetails? vendorDetails,
    BlockDetails? blockDetails,
    MacAddressDetails? macAddressDetails,
  })  : _vendorDetails = vendorDetails,
        _blockDetails = blockDetails,
        _macAddressDetails = macAddressDetails;

  final VendorDetails? _vendorDetails;
  final BlockDetails? _blockDetails;
  final MacAddressDetails? _macAddressDetails;

  VendorDetails get vendorDetails => _vendorDetails ?? VendorDetails();
  BlockDetails get blockDetails => _blockDetails ?? BlockDetails();
  MacAddressDetails? get macAddressDetails => _macAddressDetails ?? MacAddressDetails();
}
