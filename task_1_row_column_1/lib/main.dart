import 'package:flutter/material.dart';
import 'package:task_1_row_column_1/row_column_task_1.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: RowColumnTask_1(),
    );
  }
}
