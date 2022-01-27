import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Üçüncü APP',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Üçüncü APP'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Container containerOlustur(String harf, Color renk, {double margin = 0}) {
    return Container(
      width: 75,
      height: 75,
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: margin),
      child: Text(
        harf,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 36),
      ),
      color: renk,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            dartRowOlustur(),
            Expanded(child: dersleriColumnOlustur()),
          ],
        ),
      ),
    );
  }

  Column dersleriColumnOlustur() {
    return Column(
      children: [
        Expanded(
          child: containerOlustur("E", Colors.orange.shade300, margin: 15),
        ),
        Expanded(
          child: containerOlustur("R", Colors.orange.shade400, margin: 15),
        ),
        Expanded(
            child: containerOlustur("S", Colors.orange.shade500, margin: 15)),
        Expanded(
            child: containerOlustur("L", Colors.orange.shade600, margin: 15)),
        Expanded(
            child: containerOlustur("E", Colors.orange.shade700, margin: 15)),
        Expanded(
            child: containerOlustur("R", Colors.orange.shade800, margin: 15)),
        Expanded(
            child: containerOlustur("İ", Colors.orange.shade900, margin: 15)),
      ],
    );
  }

  Row dartRowOlustur() {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        containerOlustur("D", Colors.orange.shade200),
        containerOlustur("A", Colors.orange.shade400),
        containerOlustur("R", Colors.orange.shade600),
        containerOlustur("T", Colors.orange.shade800),
      ],
    );
  }
}
