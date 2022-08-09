import 'package:flutter/material.dart';

class WalletTile extends StatelessWidget {
  const WalletTile({
    Key? key,
    required this.title,
    this.onTap,
  }) : super(key: key);

  final String title;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(),
      title: const Text('Meta Task'),
      trailing: TextButton(
        onPressed: onTap,
        child: const Text(
          'Connect',
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w700,
            color: Color(0xff5446FF),
          ),
        ),
      ),
    );
  }
}
