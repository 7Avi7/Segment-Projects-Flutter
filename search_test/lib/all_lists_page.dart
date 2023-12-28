import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  DetailPage(this.itemName, {super.key});
  final List<String> _dataList = [
    'Jobayer',
    'Uchchas',
    'Mahabub',
    'Sourov',
    'Avilash'
  ];
  final String _searchText = '';

  final String itemName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 150,
        backgroundColor: Colors.yellow,
        title: const Text(
          'Apointed Employee Lists',
          style: TextStyle(
              color: Colors.red, fontWeight: FontWeight.bold, fontSize: 27),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              'Searched Employee: $itemName',
              style: const TextStyle(fontSize: 20),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _dataList.length,
              itemBuilder: (context, index) {
                final item = _dataList[index];
                final isMatch = item.toLowerCase().contains(_searchText);

                for (int index = 0; index < _dataList.length; index++) {
                  if (itemName == _dataList[index]) {
                    return ListTile(
                      title: Text(
                        item,
                        style: TextStyle(
                          color: isMatch ? Colors.green : Colors.yellow,
                        ),
                      ),
                      // onTap: () {
                      //   Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //       builder: (context) => DetailPage(_dataList[index]),
                      //     ),
                      //   );
                      // },
                    );
                  }
                }
                return null;
              },
            ),
          ),
        ],
      ),
    );
  }
}
