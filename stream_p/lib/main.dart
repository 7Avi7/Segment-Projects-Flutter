import 'package:flutter/material.dart';
import 'package:stream_p/stream_test.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  bool switchIsDark = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData.dark(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      title: 'Stream_Languages',
      theme: switchIsDark ? ThemeData.dark() : ThemeData.light(),
      home: const Stream(),
    );
  }
}
