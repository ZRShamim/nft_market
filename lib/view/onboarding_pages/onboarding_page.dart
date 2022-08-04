import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../main_pages/home_page.dart';
import 'widget/landing_page_widget.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final pageViewController = PageController();
  bool isLastPage = false;

  @override
  void dispose() {
    pageViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageViewController,
        onPageChanged: (index) {
          setState(() {
            isLastPage = index == 1;
          });
        },
        children: [
          LandingPageWidget(
            navFunc: () => pageViewController.nextPage(
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut,
            ),
            icon: Icons.arrow_right_alt,
            imageSrc: 'assets/images/onboarding_1.png',
            text: 'Variety of\nCryptocurrency\nWallet',
          ),
          LandingPageWidget(
            navFunc: () async {
              final prefs = await SharedPreferences.getInstance();
              prefs.setBool('showHome', true);

              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const HomePage(),
                ),
              );
            },
            icon: Icons.home,
            imageSrc: 'assets/images/onboarding_2.png',
            text: 'The largest digital\nmarketplace for NFT',
          ),
        ],
      ),
    );
  }
}
