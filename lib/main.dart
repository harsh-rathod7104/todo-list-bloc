import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_state_management/bloc/todo_bloc.dart';
import 'package:todo_state_management/cubit/todo_cubit.dart';
import 'package:todo_state_management/homePage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => TodoBloc(),
      child:
          MaterialApp(theme: ThemeData(useMaterial3: false), home: HomePage()),
    );
  }
}
