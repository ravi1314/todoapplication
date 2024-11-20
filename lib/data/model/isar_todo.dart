import 'package:isar/isar.dart';
import 'package:todoapplication/domain/model/todo.dart';

//Isar to to model

//convert todo models into isar todo model show we can store n isar db
part 'isar_todo.g.dart';

@collection
class TodoIsar {
  Id id = Isar.autoIncrement;
  late String text;
  late bool isCompleted;

  //convert isar object to    ->>>pure to do object to use over app

  Todo todoDomain() {
    return Todo(id: id, text: text, isCompleted: isCompleted);
  }

  //convert pure todo object --> isar object to store

  static TodoIsar fromDomain(Todo todo) {
    return TodoIsar()
      ..id = todo.id
      ..text=todo.text
      ..isCompleted=todo.isCompleted;
    
  }
}
