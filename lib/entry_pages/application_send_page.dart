import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class ApplicationPage extends StatefulWidget {
  const ApplicationPage({Key? key}) : super(key: key);

  @override
  State<ApplicationPage> createState() => _ApplicationPageState();
}

class _ApplicationPageState extends State<ApplicationPage> {
  var fioController = TextEditingController();
  var phoneController = TextEditingController();

  final _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBody: true,
      body: SafeArea(
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            SingleChildScrollView(
              controller: _controller,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Image.asset(
                        'assets/images/myturn2.png',
                        height: 120,
                      ),
                    ),
                    const SizedBox(height: 30),
                    Text(
                      'O’zbekistonda online navbatlarni qabul qiluvchi soha vakili sifatida ishlash',
                      style: GoogleFonts.inriaSans(
                          fontSize: 32, color: Colors.black),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'MyTurn bilan hamkorlik',
                      style: GoogleFonts.inriaSans(
                          fontSize: 24, color: Colors.black),
                    ),
                    const SizedBox(height: 30),
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.red,
                          size: 10,
                        ),
                        Text(
                          'F.I.O',
                          style: GoogleFonts.inriaSans(
                              fontSize: 24, color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 55,
                      child: TextField(
                        controller: fioController,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0),
                              borderSide: BorderSide(
                                  color: Colors.black.withOpacity(0.7),
                                  width: 2)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0),
                              borderSide: BorderSide(
                                  color: Colors.black.withOpacity(0.7),
                                  width: 2)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0),
                              borderSide: BorderSide(
                                  color: Colors.black.withOpacity(0.7),
                                  width: 2)),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.red,
                          size: 10,
                        ),
                        Text(
                          'Telefon raqami',
                          style: GoogleFonts.inriaSans(
                              fontSize: 24, color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 55,
                      child: TextField(
                        controller: phoneController,
                        inputFormatters: [
                          MaskTextInputFormatter(mask: "+998 (##) ###-##-##"),
                        ],
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          hintText: "+998 (__) -___-__-__",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0),
                              borderSide: BorderSide(
                                  color: Colors.black.withOpacity(0.7),
                                  width: 2)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0),
                              borderSide: BorderSide(
                                  color: Colors.black.withOpacity(0.7),
                                  width: 2)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0),
                              borderSide: BorderSide(
                                  color: Colors.black.withOpacity(0.7),
                                  width: 2)),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      alignment: Alignment.center,
                      child: RichText(
                        text: const TextSpan(children: [
                          TextSpan(
                              text: 'Ariza yuborish siz ',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20)),
                          TextSpan(
                              text: 'oferta shartlariga ',
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 20)),
                          TextSpan(
                              text: 'rozilik bildirasiz.',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20)),
                        ]),
                      ),
                    ),
                    const SizedBox(height: 50),
                    ConstrainedBox(
                      constraints: BoxConstraints.tightFor(
                          width: MediaQuery.of(context).size.width / 1.2,
                          height: 50),
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              primary: const Color(0xffF9E10D)),
                          child: Text(
                            'Ariza yuborish',
                            style: GoogleFonts.inter(
                                color: Colors.black, fontSize: 20),
                          )),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.cancel)),
            )
          ],
        ),
      ),
    );
  }
}
