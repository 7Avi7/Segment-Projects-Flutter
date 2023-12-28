import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  const DropDown({super.key});

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  String dropDownValue = 'One';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DropDown'),
        centerTitle: true,
      ),
      body: Center(
        child: DropdownButton<String>(
          value: dropDownValue,
          icon: const Icon(Icons.menu),
          style: const TextStyle(color: Colors.black),
          underline: Container(
            height: 2,
            color: Colors.black,
          ),
          onChanged: (String? newvalue) {
            setState(() {
              dropDownValue = newvalue!;
            });
          },
          items: const [
            DropdownMenuItem<String>(
              value: 'One',
              child: Text('One'),
            ),
            DropdownMenuItem<String>(
              value: 'Two',
              child: Text('Two'),
            ),
            DropdownMenuItem<String>(
              value: 'Three',
              child: Text('Three'),
            ),
          ],
        ),
      ),
    );
  }
}
