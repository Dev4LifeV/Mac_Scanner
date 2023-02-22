import 'package:mac_scanner/core/model/model.dart';

class BlockDetails extends Model {
  BlockDetails({
    bool? blockFound,
    String? borderLeft,
    String? borderRight,
    int? blockSize,
    String? assignmentBlockSize,
    String? dateCreated,
    String? dateUpdated,
  })  : _blockFound = blockFound,
        _borderLeft = borderLeft,
        _borderRight = borderRight,
        _blockSize = blockSize,
        _assignmentBlockSize = assignmentBlockSize,
        _dateCreated = dateCreated,
        _dateUpdated = dateUpdated;

  bool? _blockFound;
  String? _borderLeft;
  String? _borderRight;
  int? _blockSize;
  String? _assignmentBlockSize;
  String? _dateCreated;
  String? _dateUpdated;

  Map? _rawModel;

  bool get blockFound => _blockFound ?? false;
  String get borderLeft => _borderLeft ?? "";
  String get borderRight => _borderRight ?? "";
  int get blockSize => _blockSize ?? 0;
  String get assignmentBlockSize => _assignmentBlockSize ?? "";
  String get dateCreated => _dateCreated ?? "";
  String get dateUpdated => _dateUpdated ?? "";

  @override
  Map get rawModel => _rawModel ?? {};

  BlockDetails.fromJson(Map json) {
    _rawModel = json;
    _blockFound = json["blockFound"];
    _borderLeft = json["borderLeft"];
    _borderRight = json["borderRight"];
    _blockSize = json["blockSize"];
    _assignmentBlockSize = json["assignmentBlockSize"];
    _dateCreated = json["dateCreated"];
    _dateUpdated = json["dateUpdated"];
  }
}
