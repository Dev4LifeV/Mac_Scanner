import 'package:flutter/foundation.dart';

safePrint(String message) {
  if (kDebugMode) {
    print(message);
  }
}
