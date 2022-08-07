import 'package:flutter/material.dart';

class SeeAllPage extends StatelessWidget {
  const SeeAllPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        // childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      itemCount: 10,
      itemBuilder: (ctx, i) => Container(),
    );
  }
}
