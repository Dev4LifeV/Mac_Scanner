class BlockDetails {
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

  bool get blockFound => _blockFound ?? false;
  String get borderLeft => _borderLeft ?? "";
  String get borderRight => _borderRight ?? "";
  int get blockSize => _blockSize ?? 0;
  String get assignmentBlockSize => _assignmentBlockSize ?? "";
  String get dateCreated => _dateCreated ?? "";
  String get dateUpdated => _dateUpdated ?? "";

  factory BlockDetails.fromJson(Map json) => BlockDetails(
        blockFound: json["blockFound"],
        borderLeft: json["borderLeft"],
        borderRight: json["borderRight"],
        blockSize: json["blockSize"],
        assignmentBlockSize: json["assignmentBlockSize"],
        dateCreated: json["dateCreated"],
        dateUpdated: json["dateUpdated"],
      );
}
