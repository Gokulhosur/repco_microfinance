import 'package:flutter/material.dart';

class SampleSpace extends StatefulWidget {
  const SampleSpace({super.key});

  @override
  State<SampleSpace> createState() => _SampleSpaceState();
}

class _SampleSpaceState extends State<SampleSpace> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: CustomPaint(
        painter: CurveCustomPainter(),
      ),
    ));
  }
}

class CurveCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.fill
      ..strokeWidth = 5;
    var points = [
      Offset(50, 300),
      Offset(300, 300),
      Offset(300, 150),
      // Offset(50, 500),
      // Offset(30, 600),
    ];

    // for (var i = 0; i < points.length - 1; i++) {
    //   var currentPoint = points[i];
    //   var nextPoint = points[i + 1];
    //   canvas.drawLine(currentPoint, nextPoint, paint);
    // }
    // for (var p in points) {
    //   canvas.drawCircle(p, 7, paint..color = Colors.black);
    // }

    //canvas.drawLine(Offset(50, 300), Offset(300, 300), paint);
    // canvas.drawCircle(Offset(50, 300), 7, paint..color = Colors.black);
    // canvas.drawCircle(Offset(300, 300), 7, paint..color = Colors.black);

    var path = Path();
    path.moveTo(points[0].dx, points[0].dy);

    for (var i = 1; i < points.length - 2; i++) {
      var xc = (points[i].dx + points[i + 1].dx) / 2;
      var yc = (points[i].dy + points[i + 1].dy) / 2;
      path.quadraticBezierTo(points[i].dx, points[i].dy, xc, yc);
    }
    path.quadraticBezierTo(
      points[points.length - 2].dx,
      points[points.length - 2].dy,
      points[points.length - 1].dx,
      points[points.length - 1].dy,
    );
    canvas.drawPath(path, paint..color = Colors.blue);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
