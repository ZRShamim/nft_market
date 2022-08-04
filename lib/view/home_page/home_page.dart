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
      appBar: AppBar(
        title: Container(
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
        actions: const [
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
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
            const CustomContainer(
              width: 260,
              height: 240,
              child: Groupedchild(size: 260),
            ),
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
                            const TextButtonIconWidget(
                              text: 'Details',
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // Top sellers
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Top Sellers',
                    style: textStyle18,
                  ),
                  TextButtonIconWidget(
                    text: 'See All',
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  UserCard(),
                  UserCard(),
                  UserCard(),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // Top buyers
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Top Sellers',
                    style: textStyle18,
                  ),
                  TextButtonIconWidget(
                    text: 'See All',
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  UserCard(),
                  UserCard(),
                  UserCard(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class UserCard extends StatelessWidget {
  const UserCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      width: 125,
      height: 160,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          CircleAvatar(),
          SizedBox(
            height: 10,
          ),
          Text(
            'Shamim',
            style: textStyle14,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '2.88 ETH',
            style: textStyleGreen,
          )
        ],
      ),
    );
  }
}

class TextButtonIconWidget extends StatelessWidget {
  const TextButtonIconWidget({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Row(
        children: [
          Text(
            text,
            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            width: 5,
          ),
          const Icon(
            Icons.arrow_forward_ios,
            size: 14,
          ),
        ],
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    Key? key,
    required this.width,
    required this.height,
    required this.child,
  }) : super(key: key);
  final double width;
  final double height;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      padding: const EdgeInsets.symmetric(horizontal: 8),
      width: width,
      height: height,
      decoration: BoxDecoration(
        // color: Colors.black,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: Colors.black12,
        ),
      ),
      child: child,
    );
  }
}

class Groupedchild extends StatelessWidget {
  const Groupedchild({
    Key? key,
    required this.size,
  }) : super(key: key);

  final double size;

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
