class MacAddressDetails {
  MacAddressDetails({
    String? searchTerm,
    bool? isValid,
    String? virtualMachine,
    List? applications,
    String? transmissionType,
    String? administrationType,
    String? wiresharkNotes,
    String? comment,
  })  : _searchTerm = searchTerm,
        _isValid = isValid,
        _virtualMachine = virtualMachine,
        _applications = applications,
        _transmissionType = transmissionType,
        _administrationType = administrationType,
        _wiresharkNotes = wiresharkNotes,
        _comment = comment;

  String? _searchTerm;
  bool? _isValid;
  String? _virtualMachine;
  List? _applications;
  String? _transmissionType;
  String? _administrationType;
  String? _wiresharkNotes;
  String? _comment;

  String get searchTerm => _searchTerm ?? "";
  bool get isValid => _isValid ?? false;
  String get virtualMachine => _virtualMachine ?? "";
  List get applications => _applications ?? [];
  String get transmissionType => _transmissionType ?? "";
  String get administrationType => _administrationType ?? "";
  String get wiresharkNotes => _wiresharkNotes ?? "";
  String get comment => _comment ?? "";

  factory MacAddressDetails.fromJson(Map json) => MacAddressDetails(
        administrationType: json["administrationType"],
        applications: json["applications"],
        isValid: json["isValid"],
        searchTerm: json["searchTerm"],
        virtualMachine: json["virtualMachine"],
        transmissionType: json["transmissionType"],
        wiresharkNotes: json["wiresharkNotes"],
        comment: json["comment"],
      );
}
