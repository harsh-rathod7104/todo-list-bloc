import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_state_management/bloc/todo_bloc.dart';
import 'package:todo_state_management/bloc/todo_event.dart';

class AddTodo extends StatelessWidget {
  final todoTitleController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Todo"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              TextField(
                controller: todoTitleController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              CupertinoButton(
                  color: Theme.of(context).colorScheme.secondary,
                  onPressed: () {
                    BlocProvider.of<TodoBloc>(context)
                        .add(TodoAdd(name: todoTitleController.text.trim()));
                    Navigator.pop(context);
                  },
                  child: Text("Add"))
            ],
          ),
        ),
      ),
    );
  }
}
