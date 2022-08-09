import 'package:flutter/material.dart';
import 'package:nft_market/view/global_widgets/custom_container.dart';
import 'package:nft_market/view/style/image_path.dart';
import 'package:nft_market/view/style/style.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Profile',
          style: textStyle14,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(user_3),
                ),
                const SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Daniel Mohammadi',
                      style: textStyle18,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur...',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffA9ADB7)),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    Text(
                      '0xc4c16a645...b21a',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff5446FF),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.copy,
                      size: 18,
                      color: Color(0xff5446FF),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: CustomContainer(
                        width: 40,
                        height: 40,
                        radius: 25,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset(
                            'assets/logo/facebook.png',
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: CustomContainer(
                        width: 40,
                        height: 40,
                        radius: 20,
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Image.asset(
                            'assets/logo/twitter.png',
                          ),
                        ),
                      ),
                    ),
                    CustomContainer(
                      width: 40,
                      height: 40,
                      radius: 20,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          'assets/logo/instagram.png',
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                InfoColumn(
                  titleText: 'Items',
                  subtitleText: '10K',
                ),
                InfoColumn(
                  titleText: 'Owners',
                  subtitleText: '8.5K',
                ),
                InfoColumn(
                  titleText: 'Floor Price',
                  subtitleText: '10.5K',
                ),
                InfoColumn(
                  titleText: 'Traded',
                  subtitleText: '254',
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    const Color(0xff5446FF),
                  ),
                  elevation: MaterialStateProperty.all(0),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'Follow',
                  style: TextStyle(
                    fontSize: textStyle14.fontSize,
                    fontWeight: textStyle14.fontWeight,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}

class InfoColumn extends StatelessWidget {
  const InfoColumn({
    Key? key,
    required this.titleText,
    required this.subtitleText,
  }) : super(key: key);
  final String titleText;
  final String subtitleText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          titleText,
          style: textStyle14,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          subtitleText,
          style: textStyle12,
        ),
      ],
    );
  }
}
