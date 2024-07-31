import 'dart:convert';

import 'package:day2/models/todo.dart';
import 'package:http/http.dart' as http;

class TodoService {
  String todoApi = "https://jsonplaceholder.typicode.com/todos";
  Future<List<Todo>> getTodos() async {
    final response = await http.get(Uri.parse(todoApi));
    final extractedData = jsonDecode(response.body) as List;
    List<Todo> todos = [];
    for (var todoData in extractedData) {
      final todo = Todo.fromMap(todoData);
      todos.add(todo);
    }
    return todos;
  }
}
