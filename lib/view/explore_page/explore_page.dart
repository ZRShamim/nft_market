import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../style/image_path.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset(underMaintenance),
      ),
    );
  }
}
