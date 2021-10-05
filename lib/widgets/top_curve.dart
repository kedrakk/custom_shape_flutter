import 'package:flutter/material.dart';

class TopCurvePage extends StatelessWidget {
  const TopCurvePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Top Curve"),elevation: 0,backgroundColor: Colors.blueAccent,),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: CustomPaint(
          size: Size(MediaQuery.of(context).size.width, MediaQuery.of(context).size.height*1/2,),
          painter: const TopCurvePainter(bgColor: Colors.blueAccent),
        ),
      ),
    );
  }
}

class TopCurvePainter extends CustomPainter {
  final Color bgColor;
  const TopCurvePainter({required this.bgColor});

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = bgColor;
    paint.style = PaintingStyle.fill; 

    var path = Path();
    path.moveTo(0, size.height/2);
    path.quadraticBezierTo(size.width/2 , size.height , size.width, size.height/2 );
    path.lineTo(size.width,0);
    path.lineTo(0, 0);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}