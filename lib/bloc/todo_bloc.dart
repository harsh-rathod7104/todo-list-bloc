import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_state_management/bloc/todo_event.dart';
import 'package:todo_state_management/models/todo_model.dart';

class TodoBloc extends Bloc<TodoEvent, List<Todo>> {
  TodoBloc() : super([]) {
    on<TodoAdd>((event, emit) {
      if ((event.name).isEmpty) {
        addError("Title can not be empty");
      } else {
        final todo = Todo(name: event.name, created: DateTime.now());
        emit([...state, todo]);
      }
    });
  }
  @override
  void onChange(Change<List<Todo>> change) {
    log('change = $change');
    super.onChange(change);
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    super.onError(error, stackTrace);
    log(error.toString());
  }
}
