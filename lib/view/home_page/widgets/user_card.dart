import 'package:flutter/material.dart';

import '../../global_widgets/custom_container.dart';
import '../../style/style.dart';

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
