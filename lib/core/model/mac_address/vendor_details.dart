import 'package:mac_scanner/core/model/model.dart';

class VendorDetails extends Model {
  VendorDetails(
      {String? oui,
      bool? isPrivate,
      String? companyName,
      String? companyAddress,
      String? countryCode})
      : _oui = oui,
        _isPrivate = isPrivate,
        _companyName = companyName,
        _companyAddress = companyAddress,
        _countryCode = countryCode;

  String? _oui;
  bool? _isPrivate;
  String? _companyName;
  String? _companyAddress;
  String? _countryCode;

  String get oui => _oui ?? "";
  bool get isPrivate => _isPrivate ?? false;
  String get companyName => _companyName ?? "";
  String get companyAddress => _companyAddress ?? "";
  String get countryCode => _countryCode ?? "";

  @override
  Map get rawModel => _rawModel ?? {};

  Map? _rawModel;

  VendorDetails.fromJson(Map json) {
    _rawModel = json;
    _oui = json["oui"];
    _isPrivate = json["isPrivate"];
    _companyName = json["companyName"];
    _companyAddress = json["companyAddress"];
    _countryCode = json["countryCode"];
  }
}
