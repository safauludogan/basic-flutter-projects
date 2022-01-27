import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageOrnekleri extends StatelessWidget {
  const ImageOrnekleri({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String _imageUrl =
        'https://helpx.adobe.com/content/dam/help/en/stock/how-to/visual-reverse-image-search/'
        'jcr_content/main-pars/image/visual-reverse-image-search-v2_intro.jpg';
    String _profileImage = 'https://media-exp1.licdn.com/dms/image/C4D03AQHJGrdt-k87ew/'
        'profile-displayphoto-shrink_200_200/0/1623136840962?e=1648684800&v=beta&t=3mhJTloBbyOMiB4-OuZstRj9dJfKdwfwtgPOZnM4BWg';
    return Center(
      child: Column(
        children: [
          Container(
              color: Colors.red.shade300,
              width: 150,
              height: 150,
              child: Image.asset(
                'assets/images/car.jpg',
                fit: BoxFit.cover,
              )),
          Container(
              color: Colors.red.shade300,
              width: 150,
              height: 150,
              child: Image.network(
                _imageUrl,
                fit: BoxFit.cover,
              )),
          Container(

              child: CircleAvatar(
               // child: Text('S',style: Theme.of(context).textTheme.headline1,),
                backgroundImage: NetworkImage(_profileImage),
                backgroundColor: Colors.amber,
                foregroundColor: Colors.red,
                radius: 80,
              )
          ),
        ],
      ),
    );
  }
}
