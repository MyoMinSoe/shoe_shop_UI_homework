import 'package:flutter/material.dart';
import 'package:flutter_ui_homework/shoes/shoes_list.dart';

class ShoesListViewWidget extends StatelessWidget {
  const ShoesListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.amber,
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.45,
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Just For You',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Text(
              'View All',
              style: TextStyle(fontSize: 20, color: Colors.green[600]),
            ),
          ],
        ),
        //Just For You and View All//////////////////////////////
        const SizedBox(height: 20),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.height * 0.3,
          child: ListView.builder(
            itemCount: 2,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                elevation: 10,
                color: Colors.white,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25))),
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
              );
            },
          ),
        ),
      ],
    );
  }
}
