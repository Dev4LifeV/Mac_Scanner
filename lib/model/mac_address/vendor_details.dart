import 'package:mac_scanner/core/model/decodable.dart';

class VendorDetails implements Decodable {
  VendorDetails(
      {String? oui,
      String? isPrivate,
      String? companyName,
      String? companyAddress,
      String? countryCode})
      : _oui = oui,
        _isPrivate = isPrivate,
        _companyName = companyName,
        _companyAddress = companyAddress,
        _countryCode = countryCode;

  String? _oui;
  String? _isPrivate;
  String? _companyName;
  String? _companyAddress;
  String? _countryCode;

  String get oui => _oui ?? "";
  String get isPrivate => _isPrivate ?? "";
  String get companyName => _companyName ?? "";
  String get companyAddress => _companyAddress ?? "";
  String get countryCode => _countryCode ?? "";

  @override
  decode(Map<String, dynamic> json) {
    _oui = json["oui"];
    _isPrivate = json["isPrivate"];
    _companyName = json["companyName"];
    _companyAddress = json["companyAddress"];
    _countryCode = json["countryCode"];
  }
}
