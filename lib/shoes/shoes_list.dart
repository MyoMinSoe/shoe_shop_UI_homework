import 'package:flutter/material.dart';
import 'package:flutter_ui_homework/constants/assets.dart';
import 'package:flutter_ui_homework/shoes/model.dart';

List<Shoe> shoeList = [
  Shoe(
    title: 'Nike Air Jordan',
    brand: 'Nike',
    price: '\$186',
    image: Assets.assetsShoe1,
    logo: Assets.assetsNike,
    detail:
        'Never mess with a classic. Keep heritage on your feet with a white-on-white look that will never go out of style.',
    color: Colors.cyan,
  ),
  Shoe(
      title: "ADIZERO BOSTON 12 RUNNING SHOES",
      brand: 'Adidas',
      price: '\$160',
      image: Assets.assetsShoe2,
      logo: Assets.assetsAdidas,
      detail:
          "The Boston Marathon is a race. But it's also a goal, and a training plan and all the days it stays on your mind before the big one. The Adizero Boston 12 Shoes are built for mid- to long-distance running.",
      color: Colors.lime),
];
