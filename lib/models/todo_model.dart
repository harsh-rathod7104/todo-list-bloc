class Todo {
  final String name;
  final DateTime created;

  Todo({required this.name, required this.created});

  @override
  String toString() {
    return 'Todo(name: $name,createdAt:$created)';
  }
}
