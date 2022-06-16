import 'package:flutter/material.dart';

class Audiosearch extends StatefulWidget {
  const Audiosearch({Key? key}) : super(key: key);

  @override
  State<Audiosearch> createState() => _AudiosearchState();
}

class _AudiosearchState extends State<Audiosearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/background1.jpg'),
                  fit: BoxFit.cover),
            ),
            child: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                Colors.black26,
                Colors.black26,
                Colors.black38,
                Colors.black38,
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            height: 300,
            width: 300,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text('Google'),
                CircleAvatar(
                    radius: 40,
                    child: Icon(
                      Icons.keyboard_voice_rounded,
                      size: 30,
                    )),
                Text('Bir nima deb ko\'ring'),
                SizedBox(height: 20),
                Text('o\'zbek (lotin,O\'zbekiston'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
