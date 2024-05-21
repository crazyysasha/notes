import 'dart:async';

import 'package:hive/hive.dart';

abstract class DataRepository<T> {
  FutureOr<List<T>> get();
  FutureOr<T> getById(id);
  FutureOr<T> store(T data);
  FutureOr<T> update();
  FutureOr<void> delete(id);
}

class HiveRepository<T> implements DataRepository<T> {
  final Box<T> box;

  HiveRepository({required this.box});

  @override
  Future<void> delete(id) async {
    return await box.delete(id);
  }

  @override
  Future<List<T>> get() async {
    return box.values.toList();
  }

  @override
  Future<T> getById(id) async {
    final data = box.get(id);

    if (data == null) {
      throw NotFoundException(message: '$T with $id not found');
    }
    return data;
  }

  @override
  Future<T> store(T data) async {
    try {
      final id = await box.add(data);
      return getById(id);
    }
    // TODO: chto to sdelat' s etim.
    //
    //  on NotFoundException catch (e) {
    //   throw DontStoredException(message: e.toString());
    // }
    catch (e) {
      throw DontStoredException(message: e.toString());
    }
  }

  @override
  Future<T> update() {
    // TODO: implement update
    throw UnimplementedError();
  }
}

class NotFoundException implements Exception {
  final String message;
  const NotFoundException({
    required this.message,
  });
}

class DontStoredException implements Exception {
  final String message;

  DontStoredException({required this.message});
}
