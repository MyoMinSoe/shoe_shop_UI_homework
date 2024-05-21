import 'package:flutter/material.dart';
import 'package:flutter_ui_homework/screen/blank.dart';
import 'package:flutter_ui_homework/screen/home.dart';
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
        leading: Transform.flip(
          flipY: true,
          child: const Icon(Icons.short_text_sharp),
        ),
      ),
      body: screen[index],
      bottomNavigationBar: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomPaint(
            size: Size(MediaQuery.of(context).size.width, 80),
            painter: CustomBottomNavigationBarShape(),
          ),
          BottomNavigationBar(
            currentIndex: index,
            elevation: 0,
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
        ],
      ),
    );
  }
}
