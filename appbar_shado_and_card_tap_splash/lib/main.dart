import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void Card1Tap() {
    print('Card 1 tapped');
  }

  void Card2Tap() {
    print('Card 2 tapped');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData.dark(useMaterial3: true),
      title: 'Card Tap Splash',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 100,
          backgroundColor: Colors.amber,
          centerTitle: true,
          title: const Text('Box Shadow and Card Tap Splash'),
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              InkWell(
                onTap: Card1Tap,
                child: const SizedBox(
                  height: 300,
                  width: 300,
                  child: Card(
                    color: Colors.white10,
                    // shadowColor: Colors.red,
                    elevation: 10,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(
                          'Card 1',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 300,
                width: 300,
                child: InkWell(
                  onTap: Card2Tap,
                  child: const Card(
                    color: Colors.white60,
                    shadowColor: Colors.red,
                    elevation: 10,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(
                          'Card 2',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
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

// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatefulWidget {
//   const MyApp({super.key});
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData.dark(useMaterial3: true),
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.amber,
//           centerTitle: true,
//           title: const Text('Box Shadow and Card Tap Splash'),
//         ),
//         body: const Center(
//           child: Column(
//             children: [
//               SizedBox(
//                 height: 50,
//               ),
//               SizedBox(
//                 height: 300,
//                 width: 300,
//                 child: Card(
//                   color: Colors.white60,
//                   shadowColor: Colors.red,
//                   elevation: 10,
//                   child: Padding(
//                     padding: EdgeInsets.all(8.0),
//                     child: Center(
//                         child: Text(
//                       'Card 1',
//                       style:
//                           TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//                     )),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 300,
//                 width: 300,
//                 child: Card(
//                   color: Colors.white60,
//                   shadowColor: Colors.red,
//                   elevation: 10,
//                   child: Padding(
//                     padding: EdgeInsets.all(8.0),
//                     child: Center(
//                         child: Text(
//                       'Card 2',
//                       style:
//                           TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//                     )),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
