import 'package:flutter/material.dart';

class BottomWavePage extends StatelessWidget {
  const BottomWavePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Bottom Wave"),elevation: 0,backgroundColor: Colors.greenAccent,),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height/2,
          ),
          Expanded(
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: CustomPaint(
                size: Size(MediaQuery.of(context).size.width, MediaQuery.of(context).size.height*1/5,),
                painter: const BottomWavePainter(bgColor: Colors.greenAccent),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BottomWavePainter extends CustomPainter {
  final Color bgColor;
  const BottomWavePainter({required this.bgColor});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0 =  Paint()
      ..color = bgColor
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;
     
         
    Path path_0 = Path();
    path_0.moveTo(size.width*0.0010000,size.height*0.9932000);
    path_0.quadraticBezierTo(size.width*0.0017500,size.height*0.7733000,size.width*0.0020000,size.height*0.7000000);
    path_0.quadraticBezierTo(size.width*0.1747500,size.height*0.5458000,size.width*0.2494000,size.height*0.5904000);
    path_0.cubicTo(size.width*0.3155500,size.height*0.5944000,size.width*0.4134500,size.height*0.8152000,size.width*0.4980000,size.height*0.6960000);
    path_0.cubicTo(size.width*0.5490000,size.height*0.6475000,size.width*0.6430000,size.height*0.5313000,size.width*0.7020000,size.height*0.5020000);
    path_0.quadraticBezierTo(size.width*0.7794000,size.height*0.4567000,size.width*0.9988000,size.height*0.7016000);
    path_0.lineTo(size.width,size.height*0.9912000);
    path_0.quadraticBezierTo(size.width*0.7157500,size.height*0.9893000,size.width*0.0010000,size.height*0.9932000);
    path_0.close();

    canvas.drawPath(path_0, paint_0);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

