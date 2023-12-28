import 'package:flutter/material.dart';

import 'detail.dart';

class MyNavigationPage extends StatefulWidget {
  const MyNavigationPage({super.key, required String title});

  @override
  State<MyNavigationPage> createState() => _MyNavigationPageState();
}

class _MyNavigationPageState extends State<MyNavigationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 150,
        backgroundColor: Colors.blueGrey,
        title: const Text('Navigation Page'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const MyPagedetail()));
          },
          child: const Text('Click Here To go Detail Page'),
        ),
      ),
    );
  }
}
