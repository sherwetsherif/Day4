import 'package:day2/models/todo.dart';
import 'package:flutter/material.dart';

class TodoProvider extends ChangeNotifier {
  List<Todo> _todos = [];
  List<Todo> get todos => _todos;
  void updateTodos(List<Todo> value){
    _todos = value;
    notifyListeners();
  } 
}
