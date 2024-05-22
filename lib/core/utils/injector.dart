final i = Injector();

class Injector {
  Injector._();
  static Injector instance = Injector._();

  factory Injector() {
    return instance;
  }

  final Map<Type, dynamic> _singletons = {};

  T register<T>(T singleton) {
    if (_singletons.containsKey(T)) {
      throw Exception('$singleton already registered as $T');
    }

    return _singletons[T] = singleton;
  }

  RegisterCallBack<T> registerLazy<T>(RegisterCallBack<T> cb) {
    if (_singletons.containsKey(RegisterCallBack<T>)) {
      throw Exception('$cb already registered as $RegisterCallBack<T>');
    }
    _singletons[RegisterCallBack<T>] = cb;

    return () {
      final singleton = cb();

      register<T>(singleton);

      _singletons.remove(RegisterCallBack<T>);

      return singleton;
    };
  }

  T of<T>() {
    if (_singletons.containsKey(RegisterCallBack<T>)) {
      final _ = register<T>(_singletons[RegisterCallBack<T>]!());

      _singletons.remove(RegisterCallBack<T>);
    }

    return _singletons[T];
  }

  bool contains<T>() {
    return _singletons.containsKey(RegisterCallBack<T>) ||
        _singletons.containsKey(T);
  }

  T unregister<T>() {
    final singleton = _singletons[T];
    _singletons.remove(T);
    return singleton;
  }
}

typedef RegisterCallBack<T> = T Function();
