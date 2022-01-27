

import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  final String _img = 'https://avatars.githubusercontent.com/u/57045839?v=4';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.teal, accentColor: Colors.red),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Başlık'),
        ),
        body: Container(
          color: Colors.red.shade300,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text('S'),
                  Text('A'),
                  Text('F'),
                  Text('A'),
                ],
              ),
              const Icon(
                Icons.add_circle,
                size: 64,
                color: Colors.green,
              ),
              const Icon(
                Icons.add_circle,
                size: 64,
                color: Colors.red,
              ),
              const Icon(
                Icons.add_circle,
                size: 64,
                color: Colors.blue,
              ),
              const Icon(
                Icons.add_circle,
                size: 64,
                color: Colors.orange,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint('Tıklandı');
          },
          child: const Icon(
            Icons.access_alarm,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget containerDersleri() {
    return Center(
      child: Container(
        padding: EdgeInsets.all(20),
        child: const Text(
          'Safa',
          style: TextStyle(fontSize: 128),
        ),
        decoration: BoxDecoration(
            color: Colors.orange,
            shape: BoxShape.rectangle,
            border: Border.all(width: 4, color: Colors.purple),
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            image:
            DecorationImage(image: NetworkImage(_img), fit: BoxFit.contain),
            boxShadow: const [
              BoxShadow(
                  color: Colors.grey, offset: Offset(2, 5), blurRadius: 30),
            ]),
      ),
    );
  }
}
