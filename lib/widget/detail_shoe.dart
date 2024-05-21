import 'package:flutter/material.dart';
import 'package:flutter_ui_homework/shoes/shoes_list.dart';
import 'package:flutter_ui_homework/widget/custom_clip_path.dart';

class DetailShoe extends StatelessWidget {
  final int index;
  const DetailShoe({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'CATEGORIES',
          style: TextStyle(
              color: Color.fromARGB(197, 255, 255, 255),
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: shoeList[index].color,
        leading: IconButton(
          icon: const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Container(
        color: shoeList[index].color,
        child: Center(
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.15,
                ),
                //Curve Shape white////////////////////////////////////////////
                child: ClipPath(
                  clipper: CustomClipPath2(),
                  child: Container(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 130,
                        left: 30,
                        right: 30,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 300,
                            child:
                                //Shoe Title////////////////////////////////////////
                                Text(
                              shoeList[index].title,
                              style: const TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          //Shoe Reviews////////////////////////////////////////
                          Row(
                            children: [
                              const Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              const Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              const Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              const Icon(
                                Icons.star_outline,
                                color: Colors.amber,
                              ),
                              const SizedBox(width: 30),
                              Text(shoeList[index].review),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          //Detail//////////////////////////////////////////////
                          const Text(
                            'DETAILS',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 15),
                          Text(
                            shoeList[index].detail,
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              //Shoe Image on Top///////////////////////////////////////////////
              Positioned(
                top: 0,
                right: 20,
                child: SizedBox(
                  width: 400,
                  height: 280,
                  child: Image.asset(shoeList[index].image),
                ),
              ),
              //Color Options and Price and Add Cart///////////////////////////
              Positioned(
                bottom: 0,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'COLOR OPTIONS',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: 200,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.blue,
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Colors.green,
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Colors.brown,
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Colors.red,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 100,
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(45),
                            topRight: Radius.circular(45),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black45,
                              blurRadius: 30,
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'PRICE',
                                  style: TextStyle(fontSize: 15),
                                ),
                                Text(
                                  shoeList[index].price,
                                  style: const TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ],
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                alignment: Alignment.center,
                                width: 200,
                                height: 55,
                                decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 60, 169, 125),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30)),
                                    boxShadow: [
                                      BoxShadow(
                                          offset: Offset(0, 20),
                                          blurRadius: 30,
                                          color: Colors.black38)
                                    ]),
                                child: const Text(
                                  'ADD CART',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
