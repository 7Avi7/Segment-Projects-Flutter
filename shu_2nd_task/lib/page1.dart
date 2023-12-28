import 'package:flutter/material.dart';
import 'package:shu_2nd_task/page2.dart';
import 'package:shu_2nd_task/test.dart';

import 'button_reusable.dart';

// // shape: BoxShape.circle,
class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _TestPageState();
}

class _TestPageState extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(''),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                const Icon(Icons.fire_truck),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const TestUI(),
                        ));
                  },
                  child: const CircleAvatar(
                    radius: 25.0,
                    backgroundColor: Colors.green,
                    child: Icon(Icons.ring_volume),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Page2(),
                        ));
                  },
                  child: const CircleAvatar(
                    radius: 25.0,
                    backgroundColor: Colors.green,
                    child: Icon(Icons.man),
                  ),
                ),
              ],
            ),
            const Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Text(
                      'Welcome',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'Md Shahriar Hossain',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          color: Colors.green),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.green,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 100,
                  width: 360,
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'জরুরি বিজ্ঞপ্তি',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'কাহবভকশাবভহকবভাকশদব্বভ্লহক্সদবভক্লাশদবভ্লহসভবসদ্ভবকজদবভকবসদ্ভকজবক্সাদজবভক্সজদবভ্লখাবস্লিভুয়াস্লিভব্লিসবভ্লিশভব্লিব',
                          style: TextStyle(fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const Row(
              children: [
                SizedBox(
                  width: 180,
                  height: 130,
                  child: Card(
                    color: Colors.white,
                    // shadowColor: Colors.white,
                    elevation: 4,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '08',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 24),
                          ),
                          Text('My Store'),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 180,
                  height: 130,
                  child: Card(
                    color: Colors.white,
                    // shadowColor: Colors.white,
                    elevation: 4,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '0.0',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 24),
                          ),
                          Text('My Earning'),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            // ListView.builder(
            //   scrollDirection: Axis.vertical,
            //   itemCount: 1,
            //   itemBuilder: (BuildContext context, int index) {
            //     return const ButtonReusable();
            //   },
            // ),

            const Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // ElevatedButton(
                    //   onPressed: () {},
                    //   style: ElevatedButton.styleFrom(
                    //     padding: EdgeInsets.zero,
                    //
                    //   ),
                    //   child: Text('Hello'),
                    // ),
                    ButtonReusable(
                      companyName: 'SHU 1',
                      addressName: 'Banani Dhaka',
                    ),
                    ButtonReusable(
                      companyName: 'SHU 2',
                      addressName: 'Dhaka',
                    ),
                    ButtonReusable(
                      companyName: 'SHU 3',
                      addressName: 'Dhaka Bangladesh',
                    ),
                    ButtonReusable(
                      companyName: 'SHU 4',
                      addressName: 'Banani Dhaka',
                    ),
                  ],
                ),
              ),
            )

            // Column(
            //   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     SizedBox(
            //       width: 355,
            //       child: OutlinedButton(
            //         onPressed: () {},
            //         style: OutlinedButton.styleFrom(
            //           shadowColor: Colors.green,
            //           side: const BorderSide(
            //             color: Colors.green,
            //             width: 1,
            //           ),
            //
            //           elevation: 4,
            //           backgroundColor: Colors.white,
            //           foregroundColor: Colors.green,
            //
            //           // minimumSize: const Size(double.infinity, 10),
            //
            //           shape: RoundedRectangleBorder(
            //             borderRadius: BorderRadius.circular(10.0),
            //           ),
            //         ),
            //         child: Row(
            //           mainAxisAlignment: MainAxisAlignment.start,
            //           children: [
            //             Container(
            //               height: 100,
            //               width: 100,
            //               color: Colors.green,
            //               child: const Column(
            //                 mainAxisAlignment: MainAxisAlignment.center,
            //                 children: [
            //                   Text(
            //                     'S',
            //                     style: TextStyle(
            //                         color: Colors.white,
            //                         fontWeight: FontWeight.bold,
            //                         fontSize: 30),
            //                   ),
            //                 ],
            //               ),
            //             ),
            //             // const SizedBox(
            //             //   width: 20,
            //             // ),
            //             const SizedBox(
            //               width: 10,
            //             ),
            //             Container(
            //               child: const Column(
            //                 crossAxisAlignment: CrossAxisAlignment.start,
            //                 children: [
            //                   Text('SHU',
            //                       style: TextStyle(
            //                           fontWeight: FontWeight.bold,
            //                           color: Colors.black)),
            //                   Text('Banani, Dhaka',
            //                       style: TextStyle(
            //                           fontWeight: FontWeight.normal,
            //                           color: Colors.black)),
            //                 ],
            //               ),
            //             )
            //           ],
            //         ),
            //       ),
            //     ),
            //   ],
            // )
          ],
        ),
      ),
    );
  }
}
