import 'package:flutter/material.dart';
import 'package:shu_2nd_task/page1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // theme: ThemeData.dark(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: Page1(),
    );
  }
}
