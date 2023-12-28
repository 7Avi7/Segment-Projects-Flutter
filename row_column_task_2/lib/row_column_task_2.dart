import 'package:flutter/material.dart';

class RowColumnTask_2 extends StatefulWidget {
  const RowColumnTask_2({super.key});

  @override
  State<RowColumnTask_2> createState() => _RowColumnTask_2State();
}

class _RowColumnTask_2State extends State<RowColumnTask_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                color: Colors.red,
                child: Container(
                  color: Colors.green,
                  height: 100,
                  width: 100,
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                color: Colors.yellow,
                child: Container(
                  color: Colors.black,
                  height: 100,
                  width: 100,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.blueGrey,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(20),
                      padding: const EdgeInsets.all(10),
                      color: Colors.blue,
                      child: Container(
                        color: Colors.white,
                        height: 100,
                        width: 100,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(20),
                      padding: EdgeInsets.all(10),
                      color: Colors.green,
                      child: Container(
                        color: Colors.blueAccent,
                        height: 100,
                        width: 100,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
