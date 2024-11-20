import '../model/todo.dart';
//here we can define what the app can do

abstract class TodoRepo {
  //fetch list of todo

  Future<List<Todo>> getTodos();

  //add todo is todo

  Future<void> addTodo(Todo newTodo);

  //update todo

  Future<void> updateTodo(Todo todo);

  //delete todo

  Future<void> deleteTodo(Todo todo);
}
