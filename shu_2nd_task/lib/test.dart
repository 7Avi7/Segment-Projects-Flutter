import 'package:flutter/material.dart';

class TestUI extends StatelessWidget {
  const TestUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 700,
            width: 40,
            color: Colors.red,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 40,
                color: Colors.blue,
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 200,
                width: 40,
                color: Colors.blue,
              )
            ],
          ),
          Container(
            height: 200,
            width: 40,
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}
