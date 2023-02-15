class Injector {
  Injector._privateConstructor();

  static final Injector shared = Injector._privateConstructor();

  static final Map _injector = {};

  K create<K>(K value) => _injector.putIfAbsent(K, () => value);

  V read<V>() => _injector[V];

  void delete<K>() => _injector.remove(K);
}
