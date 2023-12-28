import 'package:fetch_api_of_user_2/test.dart';
import 'package:flutter/material.dart';

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
      home: TestPage(),
    );
  }
}
