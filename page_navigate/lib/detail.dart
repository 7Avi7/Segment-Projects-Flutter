import 'package:flutter/material.dart';

import 'navigation.dart';

class MyPagedetail extends StatefulWidget {
  const MyPagedetail({super.key});

  @override
  State<MyPagedetail> createState() => _MyPagedetailState();
}

class _MyPagedetailState extends State<MyPagedetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 150,
        backgroundColor: Colors.blueGrey,
        title: const Text('Detail Page'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const MyNavigationPage(
                          title: '',
                        )));
          },
          child: const Text('Back To The Navigation Page'),
        ),
      ),
    );
  }
}
