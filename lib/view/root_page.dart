import 'package:flutter/material.dart';
import 'package:nft_market/view/explore_page/explore_page.dart';
import 'package:nft_market/view/profile_page/profile_page.dart';
import 'package:nft_market/view/state_page/state_page.dart';

import 'home_page/home_page.dart';

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int index = 0;
  var screens = [
    const HomePage(),
    const ExplorePage(),
    const StatePage(),
    const ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBarTheme(
        data: const NavigationBarThemeData(
          backgroundColor: Colors.transparent,
          elevation: 0,
          indicatorColor: Colors.transparent,
        ),
        child: NavigationBar(
          selectedIndex: index,
          onDestinationSelected: (index) => setState(() {
            this.index = index;
          }),
          height: 60,
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home),
              label: '',
            ),
            NavigationDestination(
              icon: Icon(Icons.explore_outlined),
              label: '',
            ),
            NavigationDestination(
              icon: Icon(Icons.show_chart_outlined),
              label: '',
            ),
            NavigationDestination(
              icon: Icon(Icons.person_outlined),
              label: '',
            ),
          ],
        ),
      ),
      body: screens[index],
    );
  }
}
