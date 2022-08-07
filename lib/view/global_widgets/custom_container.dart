import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    Key? key,
    required this.width,
    required this.height,
    required this.child,
    required this.radius,
  }) : super(key: key);
  final double width;
  final double height;
  final Widget child;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        border: Border.all(
          color: Colors.black12,
        ),
      ),
      child: child,
    );
  }
}
