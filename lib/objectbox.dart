import 'package:lesson_flutter_objectbox/entities/note.dart';

import 'objectbox.g.dart';

class ObjectBox {
  late final Store store;
  late final Box<Note> noteBox;

  ObjectBox._create(this.store) {
    noteBox = Box<Note>(store);
  }

  static Future<ObjectBox> create() async {
    final store = await openStore();
    return ObjectBox._create(store);
  }
}
