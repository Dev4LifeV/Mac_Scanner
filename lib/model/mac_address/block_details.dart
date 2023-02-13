class BlockDetails {
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

  final String? _blockFound;
  final String? _borderLeft;
  final String? _borderRight;
  final String? _blockSize;
  final String? _assignmentBlockSize;
  final String? _dateCreated;
  final String? _dateUpdated;

  String get blockFound => _blockFound ?? "";
  String get borderLeft => _borderLeft ?? "";
  String get borderRight => _borderRight ?? "";
  String get blockSize => _blockSize ?? "";
  String get assignmentBlockSize => _assignmentBlockSize ?? "";
  String get dateCreated => _dateCreated ?? "";
  String get dateUpdated => _dateUpdated ?? "";
}
