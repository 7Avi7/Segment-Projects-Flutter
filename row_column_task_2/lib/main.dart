import 'package:flutter/material.dart';
import 'package:row_column_task_2/row_column_task_2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: RowColumnTask_2(),
    );
  }
}
