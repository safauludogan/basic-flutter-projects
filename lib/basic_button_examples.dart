import 'package:flutter/material.dart';

class BasicButtons extends StatelessWidget {
  const BasicButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {},
          onLongPress: () {
            debugPrint('Uzun basıldı');
          },
          child: const Text('textButton'),
        ),
        TextButton.icon(
          onPressed: () {},
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.red),
            //Butonun rengini değiştirir(Fakat buton içerisindeki yazı veya tıklanma rengini değiştirmez)
            foregroundColor: MaterialStateProperty.all(Colors.yellow),
            //Yazı rengi
            overlayColor:
                MaterialStateProperty.all(Colors.white), //Tıklanma rengi
            //overlayColor: MaterialStateProperty.all(Colors.white.withOpacity(0.5)),//Tıklanma rengi(opaklık vererek tıklanma rengini ayarla)
          ),
          icon: const Icon(Icons.add),
          label: const Text('Text button with icon'),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              primary: Colors.red, onPrimary: Colors.yellow),
          child: const Text('Elevated button'),
        ),
        ElevatedButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.add),
          label: const Text('Elevated with icon'),
        ),
        OutlinedButton(
          onPressed: () {},
          child: const Text('Outline'),
        ),
        OutlinedButton.icon(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
              side: const BorderSide(color: Colors.red, width: 1),//Butonun kenar rengi ve kalınlığını ayarladık
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),//butonumuza ovallik verdik
              )),
          icon: const Icon(Icons.add),
          label: const Text('Outline with icon'),
        ),
      ],
    );
  }
}
