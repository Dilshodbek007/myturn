import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myturn/home_page.dart';

class SMSPage extends StatefulWidget {
  const SMSPage({Key? key}) : super(key: key);

  @override
  State<SMSPage> createState() => _SMSPageState();
}

class _SMSPageState extends State<SMSPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xffFFC878),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/phone.png',
                  height: MediaQuery.of(context).size.width / 3,
                ),
                Text(
                  'Kodni kiriting',
                  style: GoogleFonts.inriaSans(
                    fontSize: 18,
                    color: const Color(0xff232C31),
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                Text(
                  'Biz +998900000000 telefon raqamingizga sms orqali faollashtirish kodini yubordik',
                  style: GoogleFonts.inriaSans(
                    fontSize: 18,
                    color: const Color(0xff232C31),
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (int i = 0; i < 5; i++)
                      Container(
                        height: 55,
                        width: 45,
                        margin: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                            color: const Color(0xffFFC878),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.black, width: 2)),
                        child: const TextField(
                          decoration: InputDecoration(border: InputBorder.none),
                        ),
                      )
                  ],
                ),
                const SizedBox(height: 20),
                ConstrainedBox(
                  constraints: BoxConstraints.tightFor(
                      width: MediaQuery.of(context).size.width / 1.2,
                      height: 50),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (ctx) => const HomePage()));
                      },
                      style: ElevatedButton.styleFrom(
                          primary: const Color(0xffFFC878),
                          shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  color: Colors.black, width: 1),
                              borderRadius: BorderRadius.circular(10))),
                      child: Text(
                        'Davom Etish',
                        style: GoogleFonts.inter(
                            color: const Color(0xff2F1520), fontSize: 20),
                      )),
                ),
              ],
            ),
            const Text('Kodni aytish uchun menga chaqiruv qilinsin')
          ],
        ),
      ),
    );
  }
}
