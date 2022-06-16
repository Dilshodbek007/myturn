import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MapPage extends StatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/tashkentmap.png'),
                    fit: BoxFit.cover)),
          ),
          AppBar(
            elevation: 0,
            titleSpacing: 10,
            backgroundColor: Colors.transparent,
            automaticallyImplyLeading: false,
            title: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 53,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Container(
                    height: 53,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 3,
                            spreadRadius: 2,
                          )
                        ]),
                    child: TextField(
                      autofocus: true,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.fromLTRB(20, 15, 0, 10),
                          hintText: 'Qayer kerak?',
                          hintStyle: GoogleFonts.inriaSans(
                              fontSize: 24, color: Colors.grey.shade500),
                          suffixIcon: IconButton(
                            icon: const Icon(
                              Icons.keyboard_voice_sharp,
                              color: Colors.blue,
                              size: 30,
                            ),
                            onPressed: () {},
                          )),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
