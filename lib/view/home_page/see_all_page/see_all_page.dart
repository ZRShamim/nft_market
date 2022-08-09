import 'package:flutter/material.dart';
import 'package:nft_market/view/global_widgets/custom_container.dart';

import '../../style/style.dart';

class SeeAllPage extends StatelessWidget {
  const SeeAllPage({
    Key? key,
    required this.title,
    required this.userImg,
  }) : super(key: key);

  final String title;
  final String userImg;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: textStyle14,
        ),
        toolbarHeight: 50,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 1,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        itemCount: 10,
        itemBuilder: (ctx, i) => CustomContainer(
          width: 125,
          height: 160,
          radius: 15,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(userImg),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Shamim',
                style: textStyle14,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                '2.88 ETH',
                style: textStyleGreen,
              )
            ],
          ),
        ),
      ),
    );
  }
}
