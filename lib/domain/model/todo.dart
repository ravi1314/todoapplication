// make model that have some properties
//id,text and isCompleted

//make method for complete task

class Todo {
  final int id;
  final String text;
  final bool isCompleted;

  Todo({required this.id, required this.text, this.isCompleted = false});

  //make method

  Todo toggleCompletion() {
    return Todo(id: id, text: text, isCompleted: !isCompleted);
  }
}
