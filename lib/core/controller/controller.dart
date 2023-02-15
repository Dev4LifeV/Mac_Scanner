import 'package:mac_scanner/core/usecase/usecase.dart';

abstract class Controller<T> {
  abstract final Usecase<T> usecase;

  Future<T> callUsecase();
}
