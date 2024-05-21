import 'package:flutter/material.dart';
import 'package:flutter_ui_homework/widget/curve_box_widget.dart';
import 'package:flutter_ui_homework/widget/shoes_listview_widget.dart';

class ShoesExploreWidget extends StatelessWidget {
  const ShoesExploreWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: const Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Categories',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(
                Icons.search,
                size: 45,
                color: Colors.black26,
              )
            ],
          ),
          //Category and Search Icon//////////////////////////////////
          SizedBox(height: 10),
          CurveBoxWidget(),
          SizedBox(height: 20),
          ShoesListViewWidget(),
        ],
      ),
    );
  }
}
