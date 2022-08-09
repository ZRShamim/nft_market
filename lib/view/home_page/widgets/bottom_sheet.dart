import 'package:flutter/material.dart';

import 'wallet_tile.dart';

class ModalBottomSheet extends StatelessWidget {
  const ModalBottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .45,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Icon(
                        Icons.wallet,
                        color: Color(0xff5446FF),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Connect Wallet',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.close,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  WalletTile(
                    title: 'Meta Task',
                    onTap: () {},
                  ),
                  WalletTile(
                    title: 'Meta Task',
                    onTap: () {},
                  ),
                  WalletTile(
                    title: 'Meta Task',
                    onTap: () {},
                  ),
                  WalletTile(
                    title: 'Meta Task',
                    onTap: () {},
                  ),
                  WalletTile(
                    title: 'Meta Task',
                    onTap: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
