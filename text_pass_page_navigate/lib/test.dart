import 'package:flutter/material.dart';

import 'new_page.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  final TextEditingController controllerText = TextEditingController();

  @override
  void dispose() {
    controllerText.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Welcome Page with Input'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 30,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Welcome to Dashboard',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              SizedBox(
                height: size.height * 0.1,
              ),
              TextField(
                controller: controllerText,
                decoration: InputDecoration(
                  hintText: 'Please Enter Text here',
                  hintStyle: const TextStyle(color: Colors.white),
                  prefixIcon: const Icon(Icons.book_online_rounded),
                  prefixIconColor: Colors.blueAccent,
                  filled: true,
                  fillColor: Colors.white10,
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.red,
                      width: 4.5,
                      style: BorderStyle.solid,
                      strokeAlign: BorderSide.strokeAlignOutside,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.red,
                      width: 2.0,
                      style: BorderStyle.solid,
                      strokeAlign: BorderSide.strokeAlignOutside,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),

              SizedBox(
                height: size.height * 0.1,
              ),

              Flexible(
                fit: FlexFit.loose,
                child: SizedBox(
                  height: size.height * 0.1,
                  // width: size.width * 0.30,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  NewPage(controllerText.text.toString())));
                    },
                    icon: const Icon(Icons.add_circle),
                    style: ElevatedButton.styleFrom(
                      elevation: 20,
                      backgroundColor: Colors.black45,
                      foregroundColor: Colors.amber,
                      side: const BorderSide(width: 3, color: Colors.blue),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    label: const Text(
                      "Add Tex For Passing To another Page",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
              ),
              // ElevatedButton(onPressed: () {}, child: child)
            ],
          ),
        ),
      ),
    );
  }
}
