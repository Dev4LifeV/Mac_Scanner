import 'package:mac_scanner/core/model/decodable.dart';

class BlockDetails implements Decodable {
  BlockDetails({
    String? blockFound,
    String? borderLeft,
    String? borderRight,
    String? blockSize,
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

  String? _blockFound;
  String? _borderLeft;
  String? _borderRight;
  String? _blockSize;
  String? _assignmentBlockSize;
  String? _dateCreated;
  String? _dateUpdated;

  String get blockFound => _blockFound ?? "";
  String get borderLeft => _borderLeft ?? "";
  String get borderRight => _borderRight ?? "";
  String get blockSize => _blockSize ?? "";
  String get assignmentBlockSize => _assignmentBlockSize ?? "";
  String get dateCreated => _dateCreated ?? "";
  String get dateUpdated => _dateUpdated ?? "";

  @override
  decode(Map<String, dynamic> json) {
    _blockFound = json[""];
    _borderLeft = json[""];
    _borderRight = json[""];
    _blockSize = json[""];
    _assignmentBlockSize = json[""];
    _dateCreated = json[""];
    _dateUpdated = json[""];
  }
}
