import 'package:flutter/material.dart';

class TextFieldArea extends StatelessWidget {
  const TextFieldArea({
    super.key,
    required this.stackText,
    required this.hintTextMessage,
    this.validator,
  });

  final String stackText;
  final String hintTextMessage;

  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      // textAlign: TextAlign.center,
      // keyboardType: TextInputType.text,
      obscureText: true,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        label: Stack(
          alignment: Alignment.topCenter,
          children: [
            Text(
              stackText,
              // "Name",
              style: const TextStyle(color: Colors.grey),
            ),
          ],
        ),
        floatingLabelAlignment: FloatingLabelAlignment.center,
        // labelText: 'Name',
        alignLabelWithHint: true,
        hintText: hintTextMessage,
        hintStyle: const TextStyle(color: Colors.grey),
        // prefixIcon: const Icon(Icons.search),
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
        errorBorder: OutlineInputBorder(
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
            color: Colors.indigoAccent,
            width: 2.0,
            style: BorderStyle.solid,
            strokeAlign: BorderSide.strokeAlignOutside,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      validator: validator,
    );
  }
}
