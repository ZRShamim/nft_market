import 'package:flutter/material.dart';

import '../style/style.dart';
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomAppBar(),
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
            const SizedBox(
              height: 10,
            ),
            // group section
            const GroupContainer(),
            const SizedBox(
              height: 25,
            ),
            // Hot Collection
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'Hot Collection',
                style: textStyle18,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              width: MediaQuery.of(context).size.width - 40,
              height: 150,
              child: Row(
                children: [
                  Container(
                    width: 125,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          Text('NFT Bored Bunny'),
                          SizedBox(
                            width: 5,
                          ),
                          verifiedIcon,
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Floor price:',
                        style: TextStyle(
                          color: Color(0xffA9ADB7),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width - 200,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              '4.2 ETH',
                              style: textStyleGreen,
                            ),
                            Container(
                              width: 85,
                              height: 25,
                              decoration: BoxDecoration(
                                color: const Color(0xffF6F6F6),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(
                                    Icons.timer,
                                    color: Color(0xffA9ADB7),
                                    size: 18,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '20:15:23',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xffA9ADB7),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width - 200,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const CircleAvatar(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Alex. J',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: Color(
                                      0xff151516,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  '@Alex. J',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xffA9ADB7),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Row(
                                children: const [
                                  Text(
                                    'Details',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    size: 14,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            // Top sellers
            // Top buyers
          ],
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                style: textStyle14,
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
      margin: const EdgeInsets.symmetric(horizontal: 15),
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    Text(
                      'NFT Bored Bunny',
                      style: textStyle14,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    verifiedIcon,
                  ],
                ),
                const Text(
                  '0.2 ETH',
                  style: textStyleGreen,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('9.2k pieces'),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xff5446FF),
                    elevation: 0,
                  ),
                  child: const Text('Buy Now'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
