// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CircleAvatarPage extends StatelessWidget {
  const CircleAvatarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Circle Avatar'),
      ),
      body: Row(
        children: [
          //  Container(
          //   height: 100,
          //   width: 100,
          //   child: CircleAvatar(
          //     // backgroundImage: NetworkImage('https://www.creativefabrica.com/wp-content/uploads/2022/11/07/Charming-Vibrant-Light-Skin-Brunette-Executive-Woman-Avatar-Chibi-Style-45433143-1.png'),
          //     // backgroundImage: NetworkImage('https://disneyplusbrasil.com.br/wp-content/uploads/2021/03/Feiticeira-Escarlate-Avatar-750x750.png'),
          //   ),
          //  ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ImageAvatar(
                urlImage:
                    'https://disneyplusbrasil.com.br/wp-content/uploads/2021/03/Feiticeira-Escarlate-Avatar-750x750.png'),
          ),
          SizedBox(
            width: 10,
          ),
          ImageAvatar(
              urlImage:
                  'https://www.creativefabrica.com/wp-content/uploads/2022/11/07/Charming-Vibrant-Light-Skin-Brunette-Executive-Woman-Avatar-Chibi-Style-45433143-1.png'),
        ],
      ),
    );
  }
}

class ImageAvatar extends StatelessWidget {
  final String urlImage;

  const ImageAvatar({
    super.key,
    required this.urlImage,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.red,
                Colors.black,
              ],
              begin: Alignment.topCenter,
            ),
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        Container(
          width: 100,
          height: 100,
          padding: EdgeInsets.all(5),
          child: CircleAvatar(
            backgroundImage: NetworkImage(urlImage),
          ),
        ),
        Container(
          width: 100,
          height: 100,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                'Live',
                style: TextStyle(fontSize: 15),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
