import 'package:flutter/material.dart';

class HomeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path_0 = Path();
    path_0.moveTo(0, size.height);
    path_0.lineTo(0, 0);
    var widthPercent = 0.1750000;
    path_0.lineTo(size.width * widthPercent, 0);
    path_0.quadraticBezierTo(
        size.width * (widthPercent + 0.046875), // width% + 0.046875
        size.height * -0.0017500,
        size.width * (widthPercent + 0.055), // width% + 0.055
        size.height * 0.0550000);
    path_0.cubicTo(
        size.width * (widthPercent + 0.0999625), //width % + 0.0999625
        size.height * 0.2266000,
        size.width * (widthPercent * 4.5), //width% + 0.150775
        size.height * 0.2267500,
        size.width * (widthPercent * 4.5) + 0.091099625, // width% + 0.1958875
        size.height * 0.050000);
    path_0.quadraticBezierTo(
      size.width * ((widthPercent * 4.5) + 0.0088),
      0, // width% + 0.2040125
      size.width * ((widthPercent * 4.5) + 0.0400),
      0,
    );
    // path_0.quadraticBezierTo(
    //     size.width * ((widthPercent * 4.5) + 0.056875),
    //     size.height * -0.0027500, // width% + 0.2040125
    //     size.width * ((widthPercent * 4.5) + 0.053875),
    //     size.height * 0.000011); // width% + 0.25
    path_0.lineTo(size.width, 0);
    path_0.lineTo(size.width, size.height);
    path_0.lineTo(0, size.height);
    path_0.close();
    return path_0;
  }

  @override
  bool shouldReclip(HomeClipper oldClipper) => false;
}
