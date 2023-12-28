import 'package:flutter/material.dart';

class ButtonReusable extends StatelessWidget {
  final String companyName;
  final String addressName;
  const ButtonReusable(
      {super.key, required this.companyName, required this.addressName});

  // String get company => company;
  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            shadowColor: Colors.green,
            side: BorderSide(
              color: Colors.green,
              width: 1,
            ),
            padding: EdgeInsets.zero,

            elevation: 4,
            backgroundColor: Colors.white,
            foregroundColor: Colors.green,

            // minimumSize: const Size(double.infinity, 10),

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.green,
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'S',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                  ],
                ),
              ),
              // const SizedBox(
              //   width: 20,
              // ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(companyName,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black)),
                  Text(addressName,
                      style: const TextStyle(
                          fontWeight: FontWeight.normal, color: Colors.black)),
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
