import 'package:flutter/material.dart';
import 'package:flutter_ui_homework/shoes/shoes_list.dart';
import 'package:flutter_ui_homework/widget/detail_shoe.dart';

class ViewAllWidget extends StatefulWidget {
  const ViewAllWidget({super.key});

  @override
  State<ViewAllWidget> createState() => _ViewAllWidgetState();
}

class _ViewAllWidgetState extends State<ViewAllWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'All Shoes on Market',
          style: TextStyle(color: Colors.black26),
        ),
      ),
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.height * 0.9,
          child: ListView.builder(
            itemCount: shoeList.length,
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
      ),
    );
  }
}
