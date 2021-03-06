import 'package:flutter/material.dart';

class DropDownButton extends StatefulWidget {
  const DropDownButton({Key? key}) : super(key: key);

  @override
  _DropDownButtonState createState() => _DropDownButtonState();
}

class _DropDownButtonState extends State<DropDownButton> {
  String? dropdownValue = null;
  final List<String> _allCities = ['Ankara', 'Bursa', 'İstanbul', 'Antalya'];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton<String>(
        icon: const Icon(Icons.arrow_downward),
        iconSize: 20,
        style: const TextStyle(color: Colors.purple),
        underline: Container(
          height: 2,
          color: Colors.purple,
        ),
        hint: const Text('Şehir seçiniz'),
        value: dropdownValue,
        onChanged: (String? newValue) {
          setState(() {
            dropdownValue = newValue!;
          });
        },
        /*   items: const [
          DropdownMenuItem(
            child: Text('Ankara şehri'),
            value: 'Ankara',
          ),
          DropdownMenuItem(
            child: Text('İzmir şehri'),
            value: 'İzmir',
          ),
          DropdownMenuItem(
            child: Text('Antalya şehri'),
            value: 'Antalya',
          )
        ],*/
        items: _allCities.map(
          (String city) => DropdownMenuItem(
            child: Text(city),
            value: city,
          ),
        ).toList(),//allCities listesindeki elemanları map yapısı ile listeye dönüştürüp dropDownMenu'ye atıyoruz
      ),
    );
  }
}
