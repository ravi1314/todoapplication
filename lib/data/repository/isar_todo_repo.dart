import 'package:isar/isar.dart';
import 'package:todoapplication/domain/model/todo.dart';
import 'package:todoapplication/data/model/isar_todo.dart';
import 'package:todoapplication/domain/repository/todo_repo.dart';
//data base

//all add ,update ,delete

class IsarTodoRepo implements TodoRepo {
  //data base

  final Isar db;
  IsarTodoRepo(this.db);

  //get todo

  @override
  Future<List<Todo>> getTodos() async {
    //fetch from db
    final todos = await db.todoIsars.where().findAll();

    //return  list  of todo
    return todos.map((todoIsar) => todoIsar.todoDomain()).toList();
  }

  @override
  Future<void> addTodo(Todo newTodo) {
    //convert data into isar database
    final todoIsar = TodoIsar.fromDomain(newTodo);

    //store

    return db.writeTxn(() => db.todoIsars.put(todoIsar));
  }

  @override
  Future<void> updateTodo(Todo todo) {
    final todoIsar = TodoIsar.fromDomain(todo);

    //store

    return db.writeTxn(() => db.todoIsars.put(todoIsar));
  }

  @override
  Future<void> deleteTodo(Todo todo) async {
    await db.writeTxn(() => db.todoIsars.delete(todo.id));
  }
}
