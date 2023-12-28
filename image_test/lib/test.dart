import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 150,
        centerTitle: true,
        backgroundColor: Colors.grey,
        title: const Text('Image'),
      ),
      body: Image.asset('assets/images/avi.png'),
    );
  }
}
