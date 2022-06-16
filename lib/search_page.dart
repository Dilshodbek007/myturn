import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myturn/audio_search_page.dart';
import 'package:myturn/map_page.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  bool autoFocus = true;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/background1.jpg'),
                fit: BoxFit.cover),
          ),
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.white.withOpacity(0.9),
              Colors.white.withOpacity(0.9),
              Colors.white.withOpacity(0.9),
              Colors.white.withOpacity(0.9),
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          extendBody: true,
          appBar: AppBar(
            elevation: 0,
            titleSpacing: 10,
            backgroundColor: Colors.transparent,
            automaticallyImplyLeading: false,
            title: Row(
              children: [
                Expanded(
                  flex: 2,
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
                  flex: 7,
                  child: Container(
                    height: 53,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            bottomLeft: Radius.circular(12)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 2,
                            spreadRadius: 1,
                          )
                        ]),
                    child: TextField(
                      autofocus: autoFocus,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding:
                              const EdgeInsets.fromLTRB(20, 15, 0, 10),
                          hintText: 'Qayer kerak?',
                          hintStyle: GoogleFonts.inriaSans(
                              fontSize: 24, color: Colors.grey.shade500),
                          suffixIcon: IconButton(
                            icon: const Icon(
                              Icons.keyboard_voice_sharp,
                              color: Colors.blue,
                              size: 30,
                            ),
                            onPressed: () {
                              setState(() {
                                autoFocus = false;
                              });
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (ctx) => const Audiosearch()));
                            },
                          )),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (ctx) => MapPage()));
                    },
                    child: Container(
                      height: 53,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(12),
                              bottomRight: Radius.circular(12))),
                      child: Text(
                        'Karta',
                        style: GoogleFonts.inriaSans(
                            fontSize: 22, color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
