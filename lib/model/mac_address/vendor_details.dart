class VendorDetails {
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

  final String? _oui;
  final String? _isPrivate;
  final String? _companyName;
  final String? _companyAddress;
  final String? _countryCode;

  String get oui => _oui ?? "";
  String get isPrivate => _isPrivate ?? "";
  String get companyName => _companyName ?? "";
  String get companyAddress => _companyAddress ?? "";
  String get countryCode => _countryCode ?? "";
}
