import 'package:flutter/material.dart';
import 'package:text_pass_page_navigate/test.dart';

class NewPage extends StatefulWidget {
  const NewPage(this.textFromHome, {super.key});

  final textFromHome;

  @override
  State<NewPage> createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('New Page'),
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
              Text(
                'New Page with Output is: ${widget.textFromHome}',
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              SizedBox(
                height: size.height * 0.1,
              ),
              SizedBox(
                height: size.height * 0.1,
                // width: size.width * 0.30,
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TestPage()));
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
                    "Back To Previous Page",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
