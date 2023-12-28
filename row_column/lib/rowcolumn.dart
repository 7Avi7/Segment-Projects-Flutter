

import 'package:flutter/material.dart';

class RowColumnPage extends StatefulWidget {
  const RowColumnPage({super.key});

  @override
  State<RowColumnPage> createState() => _RowColumnPageState();
}

class _RowColumnPageState extends State<RowColumnPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        color: Colors.blue,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.black,
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 100,
              width: 200,
              color: Colors.red,
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 100,
              width: 400,
              color: Colors.yellow ,
            ),
          ],
        ),
      ),
    );
  }
}
