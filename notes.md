# Flutter Crash Course

- In flutter All work related to dependencies and packages are done in **pubspec.yaml** (like package.json in node)**.**
- For both android and ios there are separate folder.
- Our main work of flutter will be done in lib folder.
- Default project of flutter is a counter app.

# main.dart

## Structure and Code-

1. First, Import flutter material.dart package and other packages you need in your project.
2. Create a simple void main function and runApp(MyApp());
3. Create MyApp class and extend it to StatelessWidget (You can use “stl” stateless widget code snippet.)
4. In Widget build function return MaterialApp widget with home: Material( child: Center( child: Container( child: **Text(”Hello World”)**, ))).

{
import 'package:flutter/material.dart';

void main() {
runApp(MyApp());
}

class MyApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
return MaterialApp(
home: Material(
child: Center(
child: Container(
child: Text('Hello World!'),
),
),
),
);
}
}

}

## Basics of Dart-

### Variables and Datatypes-

- int for integers.(30)
- double for decimals.(30.0)
- String for collection of characters.(Sky)
  etc.

https://dart.dev/guides/language/language-tour

## Flutter

### Theme and AppBar

    themeMode: ThemeMode.light,
      theme: ThemeData(
          // primarySwatch: Colors.red,
          ),
      darkTheme: ThemeData(
        // primarySwatch: Colors.deepPurple,
        brightness: Brightness.dark,
      ),

    appBar: AppBar(
      title: const Text("Catalogue App"),
    ),
    drawer: const Drawer(),

### Routes

    initialRoute: "/home", // this will allow you to change default or initial
                            // route (by default initialRoute: "/")
    routes: {
        '/': (context) => const LoginPage(), // or home: LoginPage();
        '/home': (context) => const HomePage()
      },
