import 'package:objectbox/objectbox.dart';

@Entity()
class Note {
  @Id()
  int id = 0;
  String title;
  String content;

  Note({required this.title, required this.content});
}
