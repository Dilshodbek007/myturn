import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myturn/entry_pages/application_send_page.dart';

class MyDrawerBody extends StatefulWidget {
  const MyDrawerBody({Key? key}) : super(key: key);

  @override
  State<MyDrawerBody> createState() => _MyDrawerBodyState();
}

class _MyDrawerBodyState extends State<MyDrawerBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 20,
          color: const Color(0xffC4C4C4),
        ),
        InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (ctx) => const ApplicationPage()));
            },
            child: category(
              "Soha vakili bo’lish",
            )),
        category("Mening manzillarim"),
        category("Xavfsizlik"),
        category("To’lov usullari"),
        Container(
          height: 20,
          color: Color(0xffC4C4C4),
        ),
        category('Sozlanmalar'),
        category("Interfeys"),
        Container(
          height: 20,
          color: Color(0xffC4C4C4),
        ),
        category("Statistika"),
        Container(
          height: 20,
          color: Color(0xffC4C4C4),
        ),
        category("Yordam ximati"),
        category("Ma’lumot"),
        Container(
          height: 20,
          color: Color(0xffC4C4C4),
        ),
        category("Chiqish"),
      ],
    );
  }

  Widget category(
    String text, [
    pageName,
    Color givenColor = Colors.black,
  ]) {
    return Container(
      padding: const EdgeInsets.only(left: 18),
      alignment: Alignment.centerLeft,
      height: 50,
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xffC4C4C4), width: 0.5)),
      child: Text(
        text,
        style: GoogleFonts.arimo(
          fontSize: 16,
          color: Colors.black.withOpacity(0.8),
        ),
      ),
    );
  }
}
