import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myturn/entry_pages/sign_in_page.dart';
import 'package:myturn/entry_pages/sign_up_page.dart';

class EntryPage extends StatelessWidget {
  const EntryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/back1.png'), fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset('assets/images/myturn2.png', height: 100),
            SizedBox(
              height: MediaQuery.of(context).size.height / 5.5,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 35),
              padding: const EdgeInsets.symmetric(horizontal: 30),
              height: MediaQuery.of(context).size.height / 3,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //kirish
                  ConstrainedBox(
                    constraints:
                        BoxConstraints.tightFor(width: 300, height: 50),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (ctx) => const SignIn()));
                        },
                        style: ElevatedButton.styleFrom(
                            primary: const Color(0xffFFC878)),
                        child: Text(
                          'Kirish',
                          style: GoogleFonts.inter(
                              color: Colors.black, fontSize: 20),
                        )),
                  ),
                  const SizedBox(height: 28),
                  //royhatdan o'tish
                  ConstrainedBox(
                    constraints:
                        BoxConstraints.tightFor(width: 300, height: 50),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (ctx) => const SignUp()));
                        },
                        style: ElevatedButton.styleFrom(
                            primary: const Color(0xffFFC878)),
                        child: Text(
                          'Ro\'yhatdan o\'tish',
                          style: GoogleFonts.inter(
                              color: Colors.black, fontSize: 20),
                        )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
