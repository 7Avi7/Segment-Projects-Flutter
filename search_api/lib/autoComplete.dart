import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:search_api/user_model.dart';

class AutoComplete extends StatefulWidget {
  const AutoComplete({super.key});

  @override
  State<AutoComplete> createState() => _TestPageState();
}

class _TestPageState extends State<AutoComplete> {
  UserModel? userModel;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getDataFromAPI();
  }

  void _getDataFromAPI() async {
    var response =
        await http.get(Uri.parse('https://reqres.in/api/users?page=2'));

    setState(() {
      userModel = UserModel.fromJson(json.decode(response.body));
    });

    print(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.yellow,
        title: const Text(
          'Search Names By API',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Autocomplete<Datum>(
          optionsBuilder: (TextEditingValue value) {
            if (value.text.isEmpty) {
              return List.empty();
            }

            return userModel!.data!
                .where((element) => element.firstName!
                    .toLowerCase()
                    .contains(value.text.toLowerCase()))
                .toList();
          },
          fieldViewBuilder: (BuildContext context,
                  TextEditingController controller,
                  FocusNode node,
                  Function onSubmit) =>
              TextField(
            focusNode: node,
            controller: controller,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              label: const Stack(
                alignment: Alignment.topCenter,
                children: [
                  Text(
                    "Name",
                    style: TextStyle(color: Colors.yellow),
                  ),
                ],
              ),
              floatingLabelAlignment: FloatingLabelAlignment.center,
              // labelText: 'Name',
              alignLabelWithHint: true,
              hintText: 'Please Enter Name here',
              hintStyle: const TextStyle(color: Colors.grey),
              prefixIcon: const Icon(Icons.search),
              prefixIconColor: Colors.blueAccent,
              filled: true,
              fillColor: Colors.white10,
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.green,
                  width: 4.5,
                  style: BorderStyle.solid,
                  strokeAlign: BorderSide.strokeAlignOutside,
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.indigoAccent,
                  width: 2.0,
                  style: BorderStyle.solid,
                  strokeAlign: BorderSide.strokeAlignOutside,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          optionsViewBuilder: (BuildContext context, Function onSelect,
              Iterable<Datum> dataList) {
            return Material(
              child: ListView.builder(
                  itemCount: dataList.length,
                  itemBuilder: (context, index) {
                    Datum d = dataList.elementAt(index);
                    return InkWell(
                      onTap: () => onSelect(d),
                      child: ListTile(
                        title: Text(d.firstName!),
                        leading: Image.network(
                          d.avatar!,
                          width: 50,
                          height: 50,
                          fit: BoxFit.fill,
                        ),
                      ),
                    );
                  }),
            );
          },
          onSelected: (value) => print(value.firstName),
          displayStringForOption: (Datum d) => '${d.firstName!} ${d.lastName!}',
        ),
      ),
    );
  }
}
