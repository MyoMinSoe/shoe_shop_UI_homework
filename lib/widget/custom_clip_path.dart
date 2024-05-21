import 'package:flutter/material.dart';

class CustomClipPath extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    Path path = Path();
    double w = size.width;
    double h = size.height;

    path.moveTo(w * 0.8686286, h);
    path.lineTo(w * 0.1312752, h);
    path.cubicTo(
      w * 0.05876130,
      h,
      0,
      h * 0.9477197,
      0,
      h * 0.8832036,
    );
    path.lineTo(0, h * 0.1168820);
    path.cubicTo(
      0,
      h * 0.03747754,
      w * 0.08722831,
      h * -0.01882433,
      w * 0.1721485,
      h * 0.005903996,
    );
    path.lineTo(w * 0.9095018, h * 0.2204158);
    path.cubicTo(
      w * 0.9634545,
      h * 0.2361598,
      w * 1.000000,
      h * 0.2809104,
      w * 1.000000,
      h * 0.3314794,
    );
    path.lineTo(w * 1.000000, h * 0.8832036);
    path.cubicTo(
      w * 1.000000,
      h * 0.9477197,
      w * 0.9412387,
      h,
      w * 0.8687248,
      h,
    );
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return false;
  }
}

////////////////////////////////////////////////////////////////////////////////
///
///
class CustomClipPath2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    double w = size.width;
    double h = size.height;

    path.moveTo(w, h);
    path.lineTo(0, h);
    path.lineTo(0, h * 0.06272425);
    path.cubicTo(
      0,
      h * 0.02019934,
      w * 0.06529929,
      h * -0.009966777,
      w * 0.1290289,
      h * 0.003056478,
    );
    path.lineTo(w * 0.9237129, h * 0.1659801);
    path.cubicTo(
      w * 0.9692340,
      h * 0.1752824,
      w,
      h * 0.2021927,
      w,
      h * 0.2325581,
    );
    path.lineTo(w, h);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
