import 'package:flutter/material.dart';

import 'dropdown_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint("myapp build calisti");
    return MaterialApp(
      title: 'My Counter App',
      theme: ThemeData(
          primarySwatch: Colors.teal,
          //textButtonTheme: TextButtonThemeData(style: ButtonStyle( backgroundColor: MaterialStateProperty.all(Colors.blue))),//Burada uygulama içerisinde eklenen bütün textButton'ların temel stili bu şekilde ayarlanıyor.
          textTheme: const TextTheme(
              headline1: TextStyle(
                  color: Colors.purple, fontWeight: FontWeight.bold))),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('DropdownButton Example'),
        ),
        body: const DropDownButton(),
      ),
    );
  }
}
