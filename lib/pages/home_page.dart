import 'package:flutter/material.dart';
import 'package:flutter_crash_course/widgets/drawer.dart';

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
      body: Center(
        child: Text('Welcome to $days days of flutter by $name.'),
      ),
      drawer: const MyDrawer(),
    );
  }
}
