import 'package:flutter/material.dart';
import 'widgets/genre_container.dart';

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
              // App bar
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
              height: 10,
            ),
            // Search by genre section
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  GenreContainer(
                    text: 'Music',
                    icon: Icons.music_note,
                  ),
                  GenreContainer(
                    text: 'Design',
                    icon: Icons.design_services_outlined,
                  ),
                  GenreContainer(
                    text: 'Sport',
                    icon: Icons.sports_baseball_outlined,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            // group section
            const GroupContainer()
            // Hot Collection
            // Top sellers
            // Top buyers
          ],
        ),
      ),
    );
  }
}

class GroupContainer extends StatelessWidget {
  const GroupContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double size = 260;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      width: size,
      height: 240,
      decoration: BoxDecoration(
        // color: Colors.black,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: Colors.black12,
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: size * 0.58,
                  height: 140,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Column(
                  children: [
                    Container(
                      width: size * 0.32,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: size * 0.32,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  Text(
                    'NFT Bored Bunny',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.verified,
                    size: 18,
                    color: Color(0xff4389FF),
                  )
                ],
              ),
              const Text('0.2 ETH'),
            ],
          )
        ],
      ),
    );
  }
}
