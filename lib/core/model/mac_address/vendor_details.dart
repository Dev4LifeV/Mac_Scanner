class VendorDetails {
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

  factory VendorDetails.fromJson(Map json) => VendorDetails(
      oui: json["oui"],
      isPrivate: json["isPrivate"],
      companyName: json["companyName"],
      companyAddress: json["companyAddress"],
      countryCode: json["countryCode"]);
}
