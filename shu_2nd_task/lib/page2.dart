import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 60.0,
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                    size: 90,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Text('Md Shahriar Hossain'),
                    Text('+880xxxxxxxxxx'),
                    Text('x@x.com'),
                    Text('Dhaka bangladesh'),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                CircleAvatar(
                  radius: 20.0,
                  backgroundColor: Colors.grey,
                  foregroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                    size: 20,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text('Edit Profile'),
                Spacer(),
                Icon(
                  Icons.navigate_next,
                  size: 30,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                CircleAvatar(
                  radius: 20.0,
                  backgroundColor: Colors.grey,
                  foregroundColor: Colors.white,
                  child: Icon(
                    Icons.lock,
                    size: 20,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text('Change password'),
                Spacer(),
                Icon(
                  Icons.navigate_next,
                  size: 30,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const CircleAvatar(
                  radius: 20.0,
                  backgroundColor: Colors.grey,
                  foregroundColor: Colors.white,
                  child: Icon(
                    Icons.translate,
                    size: 20,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Text('Language'),
                const Spacer(),
                SizedBox(
                  height: 30,
                  width: 100,
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      shadowColor: Colors.green,
                      side: const BorderSide(
                        color: Colors.green,
                        width: 1,
                      ),
                      padding: EdgeInsets.zero,

                      elevation: 4,
                      backgroundColor: Colors.white,

                      // minimumSize: const Size(double.infinity, 10),

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 39,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.green,
                          ),
                          child: const Center(
                            child: Text(
                              'English',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10),
                            ),
                          ),
                        ),
                        Container(
                          height: 39,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: const Center(
                            child: Text(
                              'Bangla',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                CircleAvatar(
                  radius: 20.0,
                  backgroundColor: Colors.grey,
                  foregroundColor: Colors.white,
                  child: Icon(
                    Icons.light,
                    size: 20,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text('Theme Mode'),
                Spacer(),
                Icon(
                  Icons.sunny,
                  size: 30,
                  color: Colors.yellow,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                CircleAvatar(
                  radius: 20.0,
                  backgroundColor: Colors.grey,
                  foregroundColor: Colors.white,
                  child: Icon(
                    Icons.logout,
                    size: 20,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text('Sign Out'),
                Spacer(),
                Icon(
                  Icons.navigate_next,
                  size: 30,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
