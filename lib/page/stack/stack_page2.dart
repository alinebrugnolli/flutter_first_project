import 'package:flutter/material.dart';

class StackPage2 extends StatelessWidget {
  const StackPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack 2'),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://thumbs.dreamstime.com/z/torre-de-tokyo-29468776.jpg?w=992'),
                  fit: BoxFit.cover),
            ),
          ),
          Container(
            color: Colors.white54,
          ),
          Positioned(
            left: 10,
            right: 10,
            bottom: 48,
            child: Card(
              elevation: 12,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text(
                        style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        'Tokyo'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                        'Tokyo, the bustling capital of Japan, blends ultramodern style with tradition, from neon-lit skyscrapers to historic temples. The opulent Meiji Shinto Shrine is renowned for its towering gate and surrounding forests. The Imperial Palace is situated amidst public gardens. The citys many museums offer exhibitions ranging from classic art (at the Tokyo National Museum) to a reconstructed kabuki theater (at the Edo-Tokyo Museum).'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
