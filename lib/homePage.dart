import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_state_management/add_todo.dart';
import 'package:todo_state_management/bloc/todo_bloc.dart';
import 'package:todo_state_management/cubit/todo_cubit.dart';
import 'package:todo_state_management/models/todo_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todos"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            BlocBuilder<TodoBloc, List<Todo>>(
              builder: (context, todoes) {
                return Expanded(
                  child: ListView.builder(
                    itemCount: todoes.length,
                    itemBuilder: (context, index) {
                      final todo = todoes[index];
                      return ListTile(
                        title: Text(todo.name),
                        subtitle: Text(todo.created.toString()),
                      );
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AddTodo()));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
