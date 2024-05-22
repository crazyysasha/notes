import 'dart:async';

import '../models/models.dart';

abstract interface class TagSource {
  FutureOr<List<TagModel>> get({
    List<int> ids,
  });
  FutureOr<TagModel> getById(int id);
  FutureOr<int> store(TagModel model);
  FutureOr<void> update({
    required int id,
    required TagModel model,
  });
  FutureOr<void> delete(int id);
}
