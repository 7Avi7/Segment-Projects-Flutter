import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';

class Stream extends StatefulWidget {
  const Stream({super.key});

  @override
  State<Stream> createState() => _StreamState();
}

class _StreamState extends State<Stream> {
  final TextEditingController controllerForText = TextEditingController();

  List<String> languages = [];

  StreamController controllerForStream = StreamController();

  bool switchValue = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 150,
        centerTitle: true,
        title: const Text(
          'Languages',
          style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.yellow,
        actions: [
          Switch(
            value: switchValue,
            onChanged: (value) {
              setState(() {
                switchValue = value;
              });
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: controllerForText,
              decoration: InputDecoration(
                hintText: 'Please Enter Language name here',
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
              height: size.height * 0.01,
              width: size.width * 0.30,
            ),
            SizedBox(
              height: size.height * 0.1,
              width: size.width * 0.30,
              child: ElevatedButton.icon(
                onPressed: () {
                  final userInput = controllerForText.text;
                  languages.add(userInput);
                  controllerForStream.sink.add(languages);
                  controllerForText.clear();
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
                  "Add new Language",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.01,
              width: size.width * 0.30,
            ),
            Flexible(
              flex: 10,
              fit: FlexFit.tight,
              child: Expanded(
                child: Flexible(
                  flex: 10,
                  fit: FlexFit.tight,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(60),
                    ),
                    child: Container(
                      width: 330.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: StreamBuilder(
                        stream: controllerForStream.stream,
                        builder: (BuildContext context,
                            AsyncSnapshot<dynamic> snapshot) {
                          if (snapshot.hasData) {
                            return ListView.builder(
                              itemCount: snapshot.data.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Card(
                                    color: Colors.green,
                                    child: ListTile(
                                      title: Text(snapshot.data[index]),
                                    ),
                                  ),
                                );
                              },
                            );
                          } else {
                            return const Center(
                              child: Text(
                                'Empty List',
                                style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            );
                          }
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.01,
              width: size.width * 0.30,
            ),
            SizedBox(
              width: 250,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  languages.clear();
                  controllerForStream.sink.add(languages);
                },
                style: ElevatedButton.styleFrom(
                  elevation: 20,
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: const Text(
                  "Clear All Cards",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.01,
              width: size.width * 0.30,
            ),
            Flexible(
              child: SizedBox(
                width: 250,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    // Call the reset function when the button is pressed
                    resetApp();
                  },
                  child: const Text('Exit App'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void resetApp() {
    exit(0);
  }
}
