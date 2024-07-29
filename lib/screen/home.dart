import 'package:flutter/material.dart';
import 'package:flutter_ui_homework/screen/blank.dart';
import 'package:flutter_ui_homework/widget/shoes_explore.dart';

class Home extends StatefulWidget {
  const Home({
    super.key,
  });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0;
  List<Widget> screen = [
    const Blank(),
    const ShoesExploreWidget(),
    const Blank(),
    const Blank(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        leading: Transform.flip(
          flipY: true,
          child: const Icon(Icons.short_text_sharp),
        ),
      ),
      body: screen[index],
      bottomNavigationBar: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          //unnecessary
          // CustomPaint(
          //   size: const Size(double.infinity, 80),
          //   painter: CustomBottomNavigationBarShape(),
          // ),
          Container(
            width: double.infinity,
            height: 60,
            decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(color: Colors.black38, blurRadius: 40),
                ],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
          ),
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            child: BottomNavigationBar(
              currentIndex: index,
              elevation: 0,
              selectedFontSize: 0,
              unselectedFontSize: 0,
              backgroundColor: Colors.transparent,
              fixedColor: Colors.green[400],
              unselectedItemColor: Colors.black26,
              type: BottomNavigationBarType.fixed,
              iconSize: 30,
              onTap: (value) {
                index = value;
                setState(() {});
              },
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.explore_outlined,
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.format_list_bulleted),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.domain_verification_sharp),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline_sharp),
                  label: '',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// unnecessary
class CustomBottomNavigationBarShape extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    double w = size.width;
    double h = size.height;

    final path = Path();

    path.lineTo(0, h * 0.4);

    path.quadraticBezierTo(w * 0.02, h * 0.1, w * 0.1, 0);
    //right curve
    path.lineTo(w * 0.9, 0);
    //middle line
    path.quadraticBezierTo(w * 0.98, h * 0.1, w, h * 0.4);
    //left curve

    path.lineTo(w, h);

    path.lineTo(0, h);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
