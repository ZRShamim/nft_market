import 'dart:math';

import 'package:flutter/material.dart';
import 'package:nft_market/view/home_page/see_all_page/see_all_page.dart';

import '../style/style.dart';
import '../global_widgets/custom_container.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

int toggle = 0;

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  AnimationController? _con;
  TextEditingController? _textEditingController;
  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
    _con = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
  }

  @override
  void dispose() {
    _con!.dispose();
    _textEditingController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: toggle == 0
            ? Container(
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
              )
            : null,
        actions: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            height: 100.0,
            width: toggle == 0 ? 48.0 : 320.0,
            alignment: const Alignment(1.0, 0.0),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              height: 48.0,
              width: toggle == 0 ? 48.0 : 320.0,
              curve: Curves.easeOut,
              decoration: BoxDecoration(
                color: Colors.white,
                // color: Colors.white,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Stack(
                children: [
                  AnimatedPositioned(
                    duration: const Duration(milliseconds: 500),
                    top: 6.0,
                    right: 7.0,
                    curve: Curves.easeOut,
                    child: AnimatedOpacity(
                      opacity: (toggle == 0) ? 0.0 : 1.0,
                      duration: const Duration(milliseconds: 200),
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: const Color(0xffF2F3F7),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: AnimatedBuilder(
                          builder: (context, widget) {
                            return Transform.rotate(
                              angle: _con!.value * 2.0 * pi,
                              child: widget,
                            );
                          },
                          animation: _con!,
                          child: const Icon(
                            Icons.mic,
                            size: 20.0,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    ),
                  ),
                  AnimatedPositioned(
                    duration: const Duration(milliseconds: 500),
                    left: (toggle == 0) ? 20.0 : 40.0,
                    curve: Curves.easeOut,
                    top: 11.0,
                    child: AnimatedOpacity(
                      opacity: (toggle == 0) ? 0.0 : 1.0,
                      duration: const Duration(milliseconds: 200),
                      child: SizedBox(
                        height: 23.0,
                        width: 180.0,
                        child: TextField(
                          controller: _textEditingController,
                          cursorRadius: const Radius.circular(10.0),
                          cursorWidth: 2.0,
                          cursorColor: Colors.black,
                          decoration: const InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            labelText: 'Search...',
                            labelStyle: TextStyle(
                              color: Color(0xff5B5B5B),
                              fontSize: 17.0,
                              fontWeight: FontWeight.w500,
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Material(
                    // color: Colors.white,
                    borderRadius: BorderRadius.circular(30.0),
                    child: IconButton(
                      splashRadius: 19.0,
                      icon: const Icon(
                        Icons.search,
                        color: Colors.black54,
                        size: 28,
                      ),
                      onPressed: () {
                        setState(
                          () {
                            if (toggle == 0) {
                              toggle = 1;
                              _con!.forward();
                            } else {
                              toggle = 0;
                              _textEditingController!.clear();
                              _con!.reverse();
                            }
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          const Icon(
            Icons.notifications_outlined,
            size: 28,
            color: Colors.black54,
          ),
          const SizedBox(
            width: 10,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            // Search by genre section
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: CustomContainer(
                      height: 125,
                      width: 125,
                      radius: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.music_note,
                            color: Color(0xff5446FF),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Music',
                            style: textStyle14,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: CustomContainer(
                      height: 125,
                      width: 125,
                      radius: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.design_services,
                            color: Color(0xff5446FF),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Design',
                            style: textStyle14,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: CustomContainer(
                      height: 125,
                      width: 125,
                      radius: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.sports,
                            color: Color(0xff5446FF),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Sport',
                            style: textStyle14,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            // group section
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: CustomContainer(
                width: 260,
                height: 250,
                radius: 15,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Groupedchild(size: 260),
                ),
              ),
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
                children: [
                  const Text(
                    'Top Buyers',
                    style: textStyle18,
                  ),
                  TextButtonIconWidget(
                    text: 'See All',
                    route: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SeeAllPage(
                          title: 'Buyers',
                        ),
                      ),
                    ),
                  )
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
                children: [
                  const Text(
                    'Top Sellers',
                    style: textStyle18,
                  ),
                  TextButtonIconWidget(
                      text: 'See All',
                      route: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SeeAllPage(
                                title: 'Sellers',
                              ),
                            ),
                          )),
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: CustomContainer(
        width: 125,
        height: 160,
        radius: 15,
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
      ),
    );
  }
}

class TextButtonIconWidget extends StatelessWidget {
  const TextButtonIconWidget({
    Key? key,
    required this.text,
    this.route,
  }) : super(key: key);
  final String text;
  final VoidCallback? route;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: route,
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
