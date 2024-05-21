import 'package:flutter/material.dart';
import 'package:flutter_ui_homework/widget/custom_clip_path.dart';

class CurveBoxWidget extends StatelessWidget {
  const CurveBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.45,
        child: ClipPath(
            clipper: CustomClipPath(),
            child: Container(
              color: Colors.amber,
            )));
  }
}
