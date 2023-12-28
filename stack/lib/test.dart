import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Stack'),
        centerTitle: true,
      ),
      body: Center(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 250,
              width: 250,
              color: Colors.tealAccent,
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.limeAccent,
            ),
            Positioned(
              bottom: -30,
              right: -40,
              child: Container(
                height: 150,
                width: 150,
                color: Colors.lightBlueAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
