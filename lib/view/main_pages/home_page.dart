import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final user = FirebaseAuth.instance.currentUser!;

    return Scaffold(
      // backgroundColor: const Color(0xffe7ecef),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 160,
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xffEEECFF),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Center(
                      child: Text(
                        'Connect Wallet',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff5446FF)),
                      ),
                    ),
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.search,
                        size: 28,
                        color: Colors.black54,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.notifications_outlined,
                        size: 28,
                        color: Colors.black54,
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.all(15),
                    width: 125,
                    height: 125,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black12,
                      ),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.music_note),
                        Text('Music'),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
