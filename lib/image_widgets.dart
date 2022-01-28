import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageOrnekleri extends StatelessWidget {
  const ImageOrnekleri({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String _imageUrl =
        'https://helpx.adobe.com/content/dam/help/en/stock/how-to/visual-reverse-image-search/'
        'jcr_content/main-pars/image/visual-reverse-image-search-v2_intro.jpg';
    String _profileImage =
        'https://media-exp1.licdn.com/dms/image/C4D03AQHJGrdt-k87ew/'
        'profile-displayphoto-shrink_200_200/0/1623136840962?e=1648684800&v=beta&t=3mhJTloBbyOMiB4-OuZstRj9dJfKdwfwtgPOZnM4BWg';
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          IntrinsicHeight(
            //Bu widget'in amacı. Row içerisindeki elemanlardan en yüksek boyutlu elemana göre diğer elemanların yüksekliklerinin ayarlanması.
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  //Expanded içerisindeki elemanın ekrana tam olarak sığmasını sağlar.
                  child: Container(
                      color: Colors.red.shade300,
                      child: Image.asset(
                        'assets/images/car.jpg',
                        fit: BoxFit.cover,
                      )),
                ),
                Expanded(
                  child: Container(
                      color: Colors.red.shade300,
                      child: Image.network(
                        _imageUrl,
                        fit: BoxFit.cover,
                      )),
                ),
                Expanded(
                  child: Container(
                      child: CircleAvatar(
                    // child: Text('S',style: Theme.of(context).textTheme.headline1,),
                    backgroundImage: NetworkImage(_profileImage),
                    backgroundColor: Colors.amber,
                    foregroundColor: Colors.red,
                  )),
                ),
              ],
            ),
          ),
          Container(
            height: 200,
            child: FadeInImage.assetNetwork( //İnternet'den veri indirirken, veri indirilme aşamasında loading.gif'i göstermeye yarayan widget
                fit: BoxFit.cover,
                placeholder: 'assets/images/loading.gif',
                image: _imageUrl),
          ),
          const Expanded(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Placeholder(color: Colors.blue,),
              )),
        ],
      ),
    );
  }
}
