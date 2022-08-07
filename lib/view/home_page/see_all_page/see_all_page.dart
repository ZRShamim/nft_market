import 'package:flutter/material.dart';
import 'package:nft_market/view/global_widgets/custom_container.dart';

import '../../style/style.dart';

class SeeAllPage extends StatelessWidget {
  const SeeAllPage({Key? key, required this.title}) : super(key: key);

  final String title;

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
      ),
    );
  }
}
