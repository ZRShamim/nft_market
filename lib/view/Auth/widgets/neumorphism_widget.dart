import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

class NeuMorphismWidget extends StatelessWidget {
  const NeuMorphismWidget({
    Key? key,
    required this.width,
    required this.height,
    required this.radius,
    required this.child,
    this.inset = false,
  }) : super(key: key);

  final double width;
  final double height;
  final double radius;
  final Widget child;
  final bool inset;
  @override
  Widget build(BuildContext context) {
    const backgroundColor = Color(0xffe7ecef);
    Offset distance = const Offset(15, 15);
    double blur = 30;
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor,
        boxShadow: [
          BoxShadow(
            blurRadius: blur,
            offset: distance,
            color: const Color(0xffa7a9af),
            inset: inset,
          ),
          BoxShadow(
            blurRadius: blur,
            offset: -distance,
            color: Colors.white,
            inset: inset,
          ),
        ],
      ),
      child: Center(
        child: child,
      ),
    );
  }
}
