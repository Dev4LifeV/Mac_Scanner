class MacAddressDetails {
  MacAddressDetails({
    String? searchTerm,
    String? isValid,
    String? virtualMachine,
    List<String>? applications,
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

  final String? _searchTerm;
  final String? _isValid;
  final String? _virtualMachine;
  final List<String>? _applications;
  final String? _transmissionType;
  final String? _administrationType;
  final String? _wiresharkNotes;
  final String? _comment;

  String get searchTerm => _searchTerm ?? "";
  String get isValid => _isValid ?? "";
  String get virtualMachine => _virtualMachine ?? "";
  List<String> get applications => _applications ?? [];
  String get transmissionType => _transmissionType ?? "";
  String get administrationType => _administrationType ?? "";
  String get wiresharkNotes => _wiresharkNotes ?? "";
  String get comment => _comment ?? "";
}
