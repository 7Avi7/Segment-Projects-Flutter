import 'package:flutter/material.dart';
import 'package:row_column/rowcolumn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return Text("Hello, World", textDirection: TextDirection.ltr);
    return const MaterialApp(
      home: RowColumnPage(),
    );
  }
}