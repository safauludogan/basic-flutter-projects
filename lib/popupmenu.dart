import 'package:flutter/material.dart';

class PopupmenuExample extends StatefulWidget {
  const PopupmenuExample({Key? key}) : super(key: key);

  @override
  _PopupmenuExample createState() => _PopupmenuExample();
}

class _PopupmenuExample extends State<PopupmenuExample> {
  String _selectedCity = 'Ankara';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: PopupMenuButton<String>(
        onSelected: (String city) {
          print("Seçilen şehir $city");
         /* setState(() {
            _selectedCity = city;
          });*/
        },
        //icon: Icon(Icons.add),
        //child: Text(_selectedCity),
        itemBuilder: (BuildContext context) {
          return <PopupMenuEntry<String>>[
            const PopupMenuItem(
              child: Text('Ankara'),
              value: 'Ankara',
            ),
            const PopupMenuItem(
              child: Text('Antalya'),
              value: 'Antalya',
            ),
            const PopupMenuItem(
              child: Text('Sinop'),
              value: 'Sinop',
            ),
          ];
        },
      ),
    );
  }
}
