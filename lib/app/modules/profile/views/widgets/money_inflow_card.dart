import 'package:ez_scan_connect/app/data/constants/app_colors.dart';
import 'package:flutter/material.dart';

//Add this CustomPaint widget to the Widget Tree
// CustomPaint(
//     size: Size(377, (377*0.4986737400530504).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
//     painter: MoneyInflowCard(),
// ),

//Copy this CustomPainter code to the Bottom of the File
class MoneyInflowCard extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(0, size.height * 0.1598936);
    path_0.cubicTo(0, size.height * 0.07158670, size.width * 0.03569841, 0,
        size.width * 0.07973475, 0);
    path_0.lineTo(size.width * 0.3612891, 0);
    path_0.cubicTo(
        size.width * 0.3692095,
        0,
        size.width * 0.3769920,
        size.height * 0.004150559,
        size.width * 0.3838674,
        size.height * 0.01204037);
    path_0.lineTo(size.width * 0.4205782, size.height * 0.05417287);
    path_0.cubicTo(
        size.width * 0.4279443,
        size.height * 0.06262606,
        size.width * 0.4362838,
        size.height * 0.06707340,
        size.width * 0.4447692,
        size.height * 0.06707340);
    path_0.lineTo(size.width * 0.5677401, size.height * 0.06707340);
    path_0.cubicTo(
        size.width * 0.5754987,
        size.height * 0.06707340,
        size.width * 0.5831432,
        size.height * 0.06335638,
        size.width * 0.5900398,
        size.height * 0.05623245);
    path_0.lineTo(size.width * 0.6346844, size.height * 0.01011814);
    path_0.cubicTo(size.width * 0.6411220, size.height * 0.003469000,
        size.width * 0.6482573, 0, size.width * 0.6554987, 0);
    path_0.lineTo(size.width * 0.9202653, 0);
    path_0.cubicTo(size.width * 0.9643024, 0, size.width,
        size.height * 0.07158670, size.width, size.height * 0.1598936);
    path_0.lineTo(size.width, size.height * 0.8401064);
    path_0.cubicTo(size.width, size.height * 0.9284149, size.width * 0.9643024,
        size.height, size.width * 0.9202653, size.height);
    path_0.lineTo(size.width * 0.6527162, size.height);
    path_0.cubicTo(
        size.width * 0.6472706,
        size.height,
        size.width * 0.6418674,
        size.height * 0.9980372,
        size.width * 0.6367692,
        size.height * 0.9942074);
    path_0.lineTo(size.width * 0.5878064, size.height * 0.9574255);
    path_0.cubicTo(
        size.width * 0.5823448,
        size.height * 0.9533191,
        size.width * 0.5765570,
        size.height * 0.9512181,
        size.width * 0.5707215,
        size.height * 0.9512181);
    path_0.lineTo(size.width * 0.4415491, size.height * 0.9512181);
    path_0.cubicTo(
        size.width * 0.4351247,
        size.height * 0.9512181,
        size.width * 0.4287639,
        size.height * 0.9537660,
        size.width * 0.4228355,
        size.height * 0.9587181);
    path_0.lineTo(size.width * 0.3817613, size.height * 0.9930000);
    path_0.cubicTo(
        size.width * 0.3762255,
        size.height * 0.9976223,
        size.width * 0.3702891,
        size.height,
        size.width * 0.3642944,
        size.height);
    path_0.lineTo(size.width * 0.07973475, size.height);
    path_0.cubicTo(size.width * 0.03569841, size.height, 0,
        size.height * 0.9284149, 0, size.height * 0.8401064);
    path_0.lineTo(0, size.height * 0.1598936);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = EzAppColors.ezPurple.withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
