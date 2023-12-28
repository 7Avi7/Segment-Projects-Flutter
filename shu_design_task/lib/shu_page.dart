import 'package:flutter/material.dart';

import 'cards.dart';

class ShuPage extends StatelessWidget {
  const ShuPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    print(size.height);
    print(size.width);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green,
        title: const Text(
          'Back to the Store List',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              // height: 75,
              width: 350,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.shopping_bag,
                    size: 64,
                  ),
                  Text('SHU'),
                  Text('Banani Dhaka'),
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.01,
              width: size.width * 0.30,
            ),
            const Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ItemCards(deliveryNo: '02', deliveryStatus: 'Pending Delivery'),
                ItemCards(deliveryNo: '03', deliveryStatus: 'Pending Return'),
              ],
            ),
            const Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ItemCards(deliveryNo: '00', deliveryStatus: 'Total Return'),
                ItemCards(deliveryNo: '00', deliveryStatus: 'Total Delivered'),
              ],
            ),
            const Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ItemCards(deliveryNo: '05', deliveryStatus: 'Total Order'),
                ItemCards(
                    deliveryNo: '0.0', deliveryStatus: 'Account Balance (৳)'),
              ],
            ),
            SizedBox(
              // height: 50,
              height: size.height * 0.050,
              width: size.width * 0.30,
            ),
            SizedBox(
              height: size.height * 0.070,
              child: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  shadowColor: Colors.green,
                  side: const BorderSide(
                    color: Colors.green,
                    width: 1,
                  ),
                  elevation: 4,
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.green,

                  // minimumSize: const Size(double.infinity, 10),

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: const Text('Parcels List'),
              ),
            ),
            SizedBox(
              height: size.height * 0.050,
            ),
            SizedBox(
              height: size.height * 0.070,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  elevation: 50,
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  side: const BorderSide(
                    color: Colors.red,
                    width: 1,
                  ),
                  // minimumSize: const Size(double.infinity, 10),
                  fixedSize: const Size(330.0, 10.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: const Text(
                  'Add New Parcel',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
