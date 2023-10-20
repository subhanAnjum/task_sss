import 'package:flutter/material.dart';

// class HomePainter extends CustomPainter {
//   final Color color;

//   HomePainter({super.repaint, required this.color});
//   @override
//   void paint(Canvas canvas, Size size) {
//     // Layer 1 Copy

//     Paint paint_fill_1 = Paint()
//       ..color = Colors.pink
//       ..style = PaintingStyle.fill
//       ..strokeWidth = size.width * 0.00
//       ..strokeCap = StrokeCap.butt
//       ..strokeJoin = StrokeJoin.miter;

//     Path path_1 = Path();
//     path_1.moveTo(size.width * -0.2173083, size.height * 0.4965857);
//     path_1.quadraticBezierTo(size.width * 0.0371250, size.height * 0.4982000,
//         size.width * 0.1219417, size.height * 0.4988000);
//     path_1.cubicTo(
//         size.width * 0.1429833,
//         size.height * 0.4972143,
//         size.width * 0.1468917,
//         size.height * 0.5217000,
//         size.width * 0.1517333,
//         size.height * 0.5408857);
//     path_1.quadraticBezierTo(size.width * 0.2208250, size.height * 0.8933286,
//         size.width * 0.5008333, size.height * 0.9285714);

//     canvas.drawPath(path_1, paint_fill_1);

//     // Layer 1 Copy

//     Paint paint_stroke_1 = Paint()
//       ..color = color
//       ..style = PaintingStyle.stroke
//       ..strokeWidth = size.width * 0.00
//       ..strokeCap = StrokeCap.butt
//       ..strokeJoin = StrokeJoin.miter;

//     canvas.drawPath(path_1, paint_stroke_1);

//     // Layer 1 Copy Copy

//     Paint paint_fill_2 = Paint()
//       ..color = Colors.pink
//       ..style = PaintingStyle.fill
//       ..strokeWidth = size.width * 0.00
//       ..strokeCap = StrokeCap.butt
//       ..strokeJoin = StrokeJoin.miter;

//     Path path_2 = Path();
//     path_2.moveTo(size.width * 1.2173083, size.height * 0.4965857);
//     path_2.quadraticBezierTo(size.width * 0.9628750, size.height * 0.4982000,
//         size.width * 0.8780583, size.height * 0.4988000);
//     path_2.cubicTo(
//         size.width * 0.8570167,
//         size.height * 0.4972143,
//         size.width * 0.8531083,
//         size.height * 0.5217000,
//         size.width * 0.8482667,
//         size.height * 0.5408857);
//     path_2.quadraticBezierTo(size.width * 0.7791750, size.height * 0.8933286,
//         size.width * 0.4991667, size.height * 0.9285714);

//     canvas.drawPath(path_2, paint_fill_2);

//     // Layer 1 Copy Copy

//     Paint paint_stroke_2 = Paint()
//       ..color = color
//       ..style = PaintingStyle.stroke
//       ..strokeWidth = size.width * 0.00
//       ..strokeCap = StrokeCap.butt
//       ..strokeJoin = StrokeJoin.miter;

//     canvas.drawPath(path_2, paint_stroke_2);
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return true;
//   }
// }

class HomePainter extends CustomPainter {
  final Color color;

  HomePainter({super.repaint, required this.color});
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paint_fill_0 = Paint()
      ..color = Colors.pink
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.5232500, size.height * 0.9283143);
    path_0.lineTo(size.width * 0.4847417, size.height * 0.9278000);

    canvas.drawPath(path_0, paint_fill_0);

    // Layer 1

    Paint paint_stroke_0 = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_0, paint_stroke_0);

    // Layer 1 Copy

    Paint paint_fill_1 = Paint()
      ..color = Colors.pink
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.5232500, size.height * 0.9292286);
    path_1.lineTo(size.width * 0.4847417, size.height * 0.9278000);

    canvas.drawPath(path_1, paint_fill_1);

    // Layer 1 Copy

    Paint paint_stroke_1 = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_1, paint_stroke_1);

    // Layer 1 Copy

    Paint paint_fill_2 = Paint()
      ..color = Colors.pink
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_2 = Path();
    path_2.moveTo(size.width * -0.2173083, size.height * 0.4965857);
    path_2.quadraticBezierTo(size.width * 0.0371250, size.height * 0.4982000,
        size.width * 0.1219417, size.height * 0.4988000);
    path_2.cubicTo(
        size.width * 0.1429833,
        size.height * 0.4972143,
        size.width * 0.1468917,
        size.height * 0.5217000,
        size.width * 0.1517333,
        size.height * 0.5408857);
    path_2.quadraticBezierTo(size.width * 0.2208250, size.height * 0.8933286,
        size.width * 0.4892250, size.height * 0.9285714);

    canvas.drawPath(path_2, paint_fill_2);

    // Layer 1 Copy

    Paint paint_stroke_2 = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_2, paint_stroke_2);

    // Layer 1 Copy Copy

    Paint paint_fill_3 = Paint()
      ..color = Colors.pink
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_3 = Path();
    path_3.moveTo(size.width * 1.2173083, size.height * 0.4965857);
    path_3.quadraticBezierTo(size.width * 0.9628750, size.height * 0.4982000,
        size.width * 0.8780583, size.height * 0.4988000);
    path_3.cubicTo(
        size.width * 0.8570167,
        size.height * 0.4972143,
        size.width * 0.8531083,
        size.height * 0.5217000,
        size.width * 0.8482667,
        size.height * 0.5408857);
    path_3.quadraticBezierTo(size.width * 0.7791750, size.height * 0.8933286,
        size.width * 0.5156000, size.height * 0.9287571);

    canvas.drawPath(path_3, paint_fill_3);

    // Layer 1 Copy Copy

    Paint paint_stroke_3 = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_3, paint_stroke_3);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
