import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Done List',
      home: ToDoDone(),
    );
  }
}

class ToDoDone extends StatelessWidget {
  const ToDoDone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('To Do Done List'),
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
      body: Column(
        children: [
          TextFormField(),
          ElevatedButton(
              onPressed: () {}, child: const Text('Make your finished task')),
        ],
      ),
    );
    ;
  }
}
