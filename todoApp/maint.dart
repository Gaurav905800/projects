import 'package:flutter/material.dart';
import 'package:flutter_application_1/todoApp/screen/home_screen.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main(List<String> args) async {
  // init the hive
  await Hive.initFlutter();
  // open a box
  var box = await Hive.openBox('mybox');

  runApp(const TodoApp());
}

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(
        barText: "To Do",
      ),
    );
  }
}
