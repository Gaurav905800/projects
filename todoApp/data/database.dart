import 'package:hive/hive.dart';

class ToDoDatabase {
  List todoList = [];
  // reference the hive
  final _myBox = Hive.box('mybox');

  // first time opening the app this methord will call

  void createInitialData() {
    todoList = [
      ['hello i am todo', false],
      ['you can write any task.', false]
    ];
  }

  // load the data from database
  void loadData() {
    todoList = _myBox.get('TODOLIST');
  }

  // update the database
  void updateDatabase() {
    _myBox.put('TODOLIST', todoList);
  }
}
