import 'package:flutter/material.dart';

class Blank extends StatelessWidget {
  const Blank({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black12,
      child: const Center(
        child: Text(
          'BLANK',
          style: TextStyle(
              color: Colors.black38, fontSize: 60, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
