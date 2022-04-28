import 'package:flutter/material.dart';
import 'package:flutter_crash_course/models/catalog.dart';
import 'package:flutter_crash_course/widgets/drawer.dart';
import 'package:flutter_crash_course/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late int days;
    String name = 'Yash';
    days = 30;
    // num temperature = 30.5; both int and double
    // assert(days == 0);

    // const pie = 3.14; // constant for only compile time whereas, final is always constant.

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Catalog App",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: CatalogModel.items.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: CatalogModel.items[index],
            );
          },
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
