class TodoEvent {}

class TodoAdd extends TodoEvent {
  String name;
  TodoAdd({required this.name});
}
