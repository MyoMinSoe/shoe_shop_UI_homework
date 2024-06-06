import 'package:flutter/material.dart';
import 'package:flutter_ui_homework/shoes/shoes_list.dart';
import 'package:flutter_ui_homework/widget/detail_shoe.dart';
import 'package:flutter_ui_homework/widget/view_all_widget.dart';

class ShoesListViewWidget extends StatelessWidget {
  const ShoesListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Just For You and View All//////////////////////////////
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Just For You',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              InkWell(
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (c) => const ViewAllWidget())),
                child: Text(
                  'VIEW ALL',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.green[600],
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
        //Shoes List///////////////////////////////////////////////////////////
        const SizedBox(height: 20),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.height * 0.3,
          child: ListView.builder(
            itemCount: 2,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (c) => DetailShoe(index: index))),
                child: Container(
                  padding: const EdgeInsets.all(5),
                  margin: const EdgeInsets.only(bottom: 20),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 20,
                        offset: Offset(0, 10),
                      ),
                    ],
                  ),
                  child: ListTile(
                    leading: SizedBox(
                      width: 80,
                      child: Image.asset(shoeList[index].image),
                    ),
                    title: Text(
                      shoeList[index].title,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(shoeList[index].brand),
                    trailing: Text(
                      shoeList[index].price,
                      style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
