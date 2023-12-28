import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'model.dart';

// import 'package:http/http.dart' as http;
class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  List<SamplePosts> samplePosts = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(''),
        centerTitle: true,
      ),
      body: FutureBuilder(
          future: getData(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: samplePosts.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 140,
                      color: Colors.greenAccent,
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
                      margin: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'User ID : ${samplePosts[index].userId}',
                            style: TextStyle(fontSize: 18),
                          ),
                          Text(
                            'ID : ${samplePosts[index].id}',
                            style: TextStyle(fontSize: 18),
                            maxLines: 1,
                          ),
                          Text(
                            'Title : ${samplePosts[index].title}',
                            style: TextStyle(fontSize: 18),
                            maxLines: 1,
                          ),
                          Text(
                            'Body : ${samplePosts[index].body}',
                            style: TextStyle(fontSize: 18),
                            maxLines: 1,
                          ),
                        ],
                      ),
                    );
                  });
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }

  Future<List<SamplePosts>> getData() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    var data = jsonDecode(response.body.toString());

    if (response.statusCode == 200) {
      for (Map<String, dynamic> index in data) {
        samplePosts.add(SamplePosts.fromJson(index));
      }
      return samplePosts;
    } else {
      return samplePosts;
    }
  }
}
