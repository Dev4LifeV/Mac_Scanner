import 'package:mac_scanner/core/model/decodable.dart';

class MacAddressDetails implements Decodable {
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

  String? _searchTerm;
  String? _isValid;
  String? _virtualMachine;
  List<String>? _applications;
  String? _transmissionType;
  String? _administrationType;
  String? _wiresharkNotes;
  String? _comment;

  String get searchTerm => _searchTerm ?? "";
  String get isValid => _isValid ?? "";
  String get virtualMachine => _virtualMachine ?? "";
  List<String> get applications => _applications ?? [];
  String get transmissionType => _transmissionType ?? "";
  String get administrationType => _administrationType ?? "";
  String get wiresharkNotes => _wiresharkNotes ?? "";
  String get comment => _comment ?? "";

  @override
  decode(Map<String, dynamic> json) {
    _searchTerm = json["searchTerm"];
    _isValid = json["isValid"];
    _virtualMachine = json["virtualMachine"];
    _applications = json["applications"];
    _transmissionType = json["transmissionType"];
    _administrationType = json["administrationType"];
    _wiresharkNotes = json["wiresharkNotes"];
    _comment = json["comment"];
  }
}
