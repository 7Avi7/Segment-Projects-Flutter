import 'package:flutter/material.dart';

class RowColumnTask_1 extends StatefulWidget {
  const RowColumnTask_1({super.key});

  @override
  State<RowColumnTask_1> createState() => _RowColumnTask_1State();
}

class _RowColumnTask_1State extends State<RowColumnTask_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(70),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment.center,
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
                  color: Colors.blue,
                  height: 100,
                  width: 100,
                  child: Container(),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  color: Colors.green,
                  height: 100,
                  width: 100,
                ),
                Container(
                  color: Colors.yellow,
                  height: 100,
                  width: 100,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
