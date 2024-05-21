import 'dart:async';

import 'package:notes/features/feature1/data/repositories/repositories.dart';

import '../../data/models/models.dart';

abstract class NotesDataSeriveInterface {
  FutureOr<List<Note>> get();
  FutureOr<Note> getById(dynamic id);
  FutureOr<void> delete(dynamic id);
  FutureOr<Note> store(Note model);
  FutureOr<Note> update();
}
