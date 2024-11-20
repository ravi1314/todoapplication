import '../domain/model/todo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todoapplication/domain/repository/todo_repo.dart';

//sate management

class TodoCubit extends Cubit<List<Todo>> {
  //todo repo
  final TodoRepo todoRepo;
  TodoCubit(this.todoRepo) : super([]) {
    loadTodo();
  }

  //load
  Future<void> loadTodo() async {
    final todoList = await todoRepo.getTodos();

    //emit
    emit(todoList);
  }

  //add todo
  Future<void> addTodo(String text) async {
    //create new todo with id
    final newTodo = Todo(id: DateTime.now().millisecondsSinceEpoch, text: text);

    //save data

    await todoRepo.addTodo(newTodo);
    //re_load
    loadTodo();
  }

  //delate todo

  Future<void> delateTodo(Todo todo) async {
    await todoRepo.deleteTodo(todo);

    //re_load
    loadTodo();
  }

  Future<void> toggleCompletion(Todo todo) async {
    final updateTodo = todo.toggleCompletion();

    //update

    await todoRepo.updateTodo(updateTodo);
  }
}
