import 'package:mac_scanner/core/model/model.dart';

class MacAddressDetails extends Model {
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

  Map? _rawModel;

  String get searchTerm => _searchTerm ?? "";
  bool get isValid => _isValid ?? false;
  String get virtualMachine => _virtualMachine ?? "";
  List get applications => _applications ?? [];
  String get transmissionType => _transmissionType ?? "";
  String get administrationType => _administrationType ?? "";
  String get wiresharkNotes => _wiresharkNotes ?? "";
  String get comment => _comment ?? "";

  @override
  Map get rawModel => _rawModel ?? {};

  MacAddressDetails.fromJson(Map json) {
    _rawModel = json;
    _administrationType = json["administrationType"];
    _applications = json["applications"];
    _isValid = json["isValid"];
    _searchTerm = json["searchTerm"];
    _virtualMachine = json["virtualMachine"];
    _transmissionType = json["transmissionType"];
    _wiresharkNotes = json["wiresharkNotes"];
    _comment = json["comment"];
  }
}
