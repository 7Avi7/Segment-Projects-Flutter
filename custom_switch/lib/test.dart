import 'package:flutter/material.dart';
// import 'package:lite_rolling_switch/lite_rolling_switch.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  bool switchValue = false;

  bool colorMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(''),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Switch(
              activeColor: Colors.green,
              inactiveThumbColor: Colors.black,
              inactiveTrackColor: Colors.red,
              value: switchValue,
              onChanged: (value) {
                setState(() {
                  switchValue = value;
                  // colorMode = true;
                });
              },
            ),

            Container(
              height: 300,
              width: 300,
              color: switchValue ? Colors.green : Colors.red,
            ),

            // FlutterSwitch(
            //   width: 125.0,
            //   height: 55.0,
            //   valueFontSize: 25.0,
            //   toggleSize: 45.0,
            //   value: status,
            //   borderRadius: 30.0,
            //   padding: 8.0,
            //   showOnOff: true,
            //     onToggle: (val){
            //     setState(() {
            //       status = val;
            //     });
            //     },
            //
            //
            //
            // )

            // LiteRollingSwitch(
            //   value: true,
            //   textOn: "On",
            //   textOff: 'Off',
            //   colorOn: Colors.green,
            //   colorOff: Colors.red,
            //   iconOn: Icons.done,
            //   iconOff: Icons.alarm_off,
            //   textSize: 18,
            //   onChanged: (bool position) {
            //     print('The Button is $position');
            //   },
            // )
          ],
        ),
      ),
    );
  }
}
