import 'package:flutter/material.dart';
import 'package:flutter_ui_homework/shoes/shoes_list.dart';
import 'package:flutter_ui_homework/widget/custom_clip_path.dart';
import 'package:flutter_ui_homework/widget/detail_shoe.dart';

class CurveBoxWidget extends StatelessWidget {
  const CurveBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.4,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: shoeList.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Stack(
              children: [
                //Curve Box Color Shape////////////////////////////////////////////////
                Container(
                  width: MediaQuery.of(context).size.width * 0.65,
                  height: MediaQuery.of(context).size.height * 0.4,
                  padding: const EdgeInsets.only(top: 50),
                  child: ClipPath(
                      clipper: CustomClipPath(),
                      child: Container(
                        color: shoeList[index].color,
                      )),
                ),
                //Shoe Image////////////////////////////////////////////////////////////
                Positioned(
                  right: 0,
                  child: Image.asset(
                    shoeList[index].image,
                    width: MediaQuery.of(context).size.width * 0.5,
                  ),
                ),
                //Logo Image////////////////////////////////////////////////////////////
                Positioned(
                  left: 20,
                  top: 70,
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Image.asset(
                      shoeList[index].logo,
                      color: Colors.white,
                    ),
                  ),
                ),
                //shoe -> title, brand, price///////////////////////////////////////////
                Positioned(
                    bottom: 20,
                    left: 20,
                    child: SizedBox(
                      width: 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            shoeList[index].title,
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            shoeList[index].price,
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    )),
                //green + button////////////////////////////////////////////////////////
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Hero(
                    tag: 1,
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (c) => DetailShoe(index: index)));
                      },
                      child: Container(
                        width: 60,
                        height: 60,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              bottomRight: Radius.circular(34)),
                        ),
                        child: const Text(
                          '+',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
