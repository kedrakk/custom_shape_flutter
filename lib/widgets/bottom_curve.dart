import 'package:flutter/material.dart';

class BottomCurvePage extends StatelessWidget {
  const BottomCurvePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Bottom Curve"),elevation: 0,backgroundColor: Colors.orangeAccent,),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height/4,
          ),
          Expanded(
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: CustomPaint(
                size: Size(MediaQuery.of(context).size.width, MediaQuery.of(context).size.height*1/3,),
                painter: const BottomCurvePainter(bgColor: Colors.orangeAccent),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BottomCurvePainter extends CustomPainter {
  final Color bgColor;
  const BottomCurvePainter({required this.bgColor});

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = bgColor;
    paint.style = PaintingStyle.fill; 

    var path = Path();
    path.moveTo(0, size.height * 0.5);
    path.quadraticBezierTo(size.width/2 , size.height/4 , size.width, size.height * 0.5 );
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}