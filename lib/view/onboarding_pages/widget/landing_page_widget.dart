import 'package:flutter/material.dart';

class LandingPageWidget extends StatelessWidget {
  const LandingPageWidget({
    Key? key,
    required this.imageSrc,
    required this.text,
    required this.navFunc,
    required this.icon,
  }) : super(key: key);
  final String imageSrc;
  final String text;
  final VoidCallback navFunc;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffe7ecef),
      child: Column(
        children: [
          SizedBox(
            height: 470,
            width: double.infinity,
            child: Image.asset(
              imageSrc,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          SizedBox(
            height: 100,
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              color: const Color(0xff5446FF),
              borderRadius: BorderRadius.circular(50),
            ),
            child: IconButton(
              onPressed: navFunc,
              icon: Icon(
                icon,
                color: Colors.white,
                size: 30,
              ),
            ),
          )
        ],
      ),
    );
  }
}
