import 'package:flutter/material.dart';

class CustomClipPath extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    Path path = Path();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return false;
  }
}
