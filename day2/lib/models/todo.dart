class Todo {
  final int id;
  final int userId;
  final String title;
  final bool completed;
  Todo(
      {required this.id,
      required this.userId,
      required this.title,
      required this.completed});
  Todo.fromMap(Map<String, dynamic> map)
      : id = map['id'],
        userId = map['userId'],
        title = map['title'],
        completed = map['completed'];
}
