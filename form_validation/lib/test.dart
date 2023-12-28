import 'package:flutter/material.dart';
import 'package:form_validation/textField.dart';

class TestPage extends StatelessWidget {
  TestPage({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(_formKey.currentContext!).showSnackBar(
        const SnackBar(content: Text('Submit Successfully')),
      );
    }
  }

  String? _validate_Email(value) {
    if (value!.isEmpty) {
      return 'Please Enter an Email';
    }
    RegExp emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegExp.hasMatch(value)) {
      return 'Please enter a valid Email';
    }
    return null;
  }

  String? _validate_Phone(value) {
    if (value!.isEmpty) {
      return 'Please Enter a Phone Number';
    }

    if (value.length != 11) {
      return 'Please enter a valid Phone Number with 11 Digits';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    double appBarHeight = MediaQuery.of(context).padding.top + kToolbarHeight;

    return Scaffold(
      // resizeToAvoidBottomInset: false,
      appBar: AppBar(
        // toolbarHeight: 100,
        backgroundColor: Colors.brown,
        title: const Text('Form Validation',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: SizedBox(
            height: size.height - appBarHeight,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFieldArea(
                      stackText: 'Name',
                      hintTextMessage: 'Please Enter Your Name',
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please Enter a user name';
                        }
                        // else {
                        //   return null;
                        // }
                      }),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFieldArea(
                    stackText: 'Email',
                    hintTextMessage: 'Please Enter Your Email',
                    validator: _validate_Email,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFieldArea(
                      stackText: 'Phone Number',
                      hintTextMessage: 'Please Enter Your Phone Number',
                      validator: _validate_Phone),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    height: 70,
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: _submitForm,
                      style: OutlinedButton.styleFrom(
                        shadowColor: Colors.red,
                        side: const BorderSide(
                          color: Colors.yellow,
                          width: 1,
                        ),
                        elevation: 4,
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.blue,

                        // minimumSize: const Size(double.infinity, 10),

                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      child: const Text(
                        'Submit',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
