import 'package:flutter/material.dart';

import 'all_lists_page.dart';

class TestPage extends StatefulWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  final TextEditingController _searchController = TextEditingController();
  final List<String> _dataList = [
    'Jobayer',
    'Uchchas',
    'Mahabub',
    'Sourov',
    'Avilash'
  ];
  String _searchText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 150,
        backgroundColor: Colors.yellow,
        title: const Text(
          'Search For Employee',
          style: TextStyle(
              color: Colors.red, fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              onChanged: (value) {
                setState(() {
                  _searchText = value.toLowerCase();
                });
              },
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Please Enter Language name here',
                hintStyle: const TextStyle(color: Colors.white),
                prefixIcon: const Icon(Icons.search),
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
          ),
          SizedBox(
            // height: size.height * 0.1,
            // width: size.width * 0.30,
            child: ElevatedButton.icon(
              onPressed: () {
                final userInput = _searchController.text;
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            DetailPage(userInput.toString())));
              },
              icon: const Icon(Icons.search),
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
                "Search",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _dataList.length,
              itemBuilder: (context, index) {
                final item = _dataList[index];
                final isMatch = item.toLowerCase().contains(_searchText);
                return ListTile(
                  title: Text(
                    item,
                    style: TextStyle(
                      color: isMatch ? Colors.green : Colors.red,
                    ),
                  ),
                  onTap: () {
                    // Do something when an item is tapped
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailPage(item),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
