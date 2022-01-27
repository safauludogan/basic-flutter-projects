import 'package:flutter/material.dart';

import 'image_widgets.dart';

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
          textTheme: const TextTheme(
              headline1: TextStyle(
                  color: Colors.purple, fontWeight: FontWeight.bold))),
      home: Scaffold(
        appBar: AppBar(
          title: Text('İmage Examples'),
        ),
        body: ImageOrnekleri(),
      ),
    );
  }
}
