import 'dart:async';
import 'package:hive/hive.dart';
import 'package:notes/core/exceptions/exceptions.dart';

import 'sources.dart';
import '../models/models.dart';

class LocalTagSource implements TagSource {
  final Box<TagModel> box;

  LocalTagSource({required this.box});

  @override
  FutureOr<List<TagModel>> get({List<int> ids = const []}) async {
    if (ids.isEmpty) {
      return box.values.toList();
    } else {
      return box.values.where((tag) => ids.contains(tag.key)).toList();
    }
  }

  @override
  FutureOr<TagModel> getById(int id) {
    final model = box.get(id);
    if (model == null) {
      throw NotFoundException(message: "Tag with id: $id not found.");
    }
    return model;
  }

  @override
  FutureOr<int> store(TagModel model) {
    return box.add(model);
  }

  @override
  FutureOr<void> update({required int id, required TagModel model}) {
    return box.put(id, model);
  }

  @override
  FutureOr<void> delete(int id) {
    return box.delete(id);
  }
}
