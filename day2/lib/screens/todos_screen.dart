import 'package:day2/models/todo.dart';
import 'package:day2/provider/todo_provider.dart';
import 'package:day2/services/todo_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class TodosScreen extends StatefulWidget {
  const TodosScreen({super.key});

  @override
  State<TodosScreen> createState() => _TodosScreenState();
}

class _TodosScreenState extends State<TodosScreen> {
  @override
  void initState() {
    getTodos();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todos'),
      ),
      body: Consumer<TodoProvider>(
        builder: (context,provider,_) {
          return ListView.builder(
            itemCount: provider.todos.length,
            itemBuilder: (context, index) {
              final todo = provider.todos[index];
              return ListTile(
                title: Text(todo.title),
                leading: Checkbox(
                  value: todo.completed,
                  onChanged: (value) {
                    // TODO: Implement functionality to update todo item completion status
                  },
                ),
                onTap: () {
                  // TODO: Implement functionality to handle todo item tap
                },
              );
            },
          );
        }
      ),
    );
  }

  Future<void> getTodos() async {
    final todos = await TodoService().getTodos();
    context.read<TodoProvider>().updateTodos(todos);

  }
}
