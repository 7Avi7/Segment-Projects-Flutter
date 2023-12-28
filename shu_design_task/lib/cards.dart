import 'package:flutter/material.dart';

class ItemCards extends StatelessWidget {
  final String deliveryNo;
  final String deliveryStatus;

  const ItemCards(
      {super.key, required this.deliveryNo, required this.deliveryStatus});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    print(size.height);
    print(size.width);

    return Expanded(
      child: Card(
        elevation: 5,
        color: Colors.white,
        child: Container(
          margin: const EdgeInsets.all(5),
          padding: const EdgeInsets.all(10),
          // color: Colors.white,
          child: SizedBox(
            // color: Colors.white,
            height: size.height * 0.1,

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  deliveryNo,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text(
                  deliveryStatus,
                  style: const TextStyle(fontSize: 15),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
