import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:myturn/entry_pages/entry_page2.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final phoneController = TextEditingController();
  var maskFormatter = MaskTextInputFormatter(
      mask: '+998 (##) ###-##-##',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        controller: ScrollController(),
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/back1.png'),
                fit: BoxFit.cover),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset('assets/images/myturn2.png', height: 100),
              SizedBox(
                height: MediaQuery.of(context).size.height / 5.5,
              ),
              //main box
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Text(
                  'Kirish',
                  style: GoogleFonts.inter(fontSize: 36, color: Colors.black),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 35),
                padding: const EdgeInsets.symmetric(horizontal: 30),
                height: MediaQuery.of(context).size.height / 2.5,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Telefon nomer',
                      style: GoogleFonts.inter(
                          fontSize: 16, color: Color(0xff797777)),
                    ),
                    const SizedBox(height: 10),
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
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: Color(0xffFFC878), width: 2)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: Color(0xffFFC878), width: 2)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: Color(0xffFFC878), width: 2)),
                        ),
                      ),
                    ),
                    SizedBox(height: 24),
                    //kirish
                    ConstrainedBox(
                      constraints: BoxConstraints.tightFor(
                          width: MediaQuery.of(context).size.width / 1.2,
                          height: 50),
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (ctx) => const EntryPage2()));
                          },
                          style: ElevatedButton.styleFrom(
                              primary: const Color(0xffFFC878)),
                          child: Text(
                            'Keyingisi',
                            style: GoogleFonts.inter(
                                color: Colors.black, fontSize: 20),
                          )),
                    ),
                    const SizedBox(height: 24),
                    //royhatdan o'tish
                    ConstrainedBox(
                      constraints: BoxConstraints.tightFor(
                          width: MediaQuery.of(context).size.width / 1.2,
                          height: 50),
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              primary: const Color(0xffFFC878)),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/images/google.png',
                                width: 25,
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Google orqali kirish',
                                style: GoogleFonts.inter(
                                    color: Colors.black, fontSize: 20),
                              ),
                            ],
                          )),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Hisob yaratish',
                style:
                    GoogleFonts.inter(fontSize: 20, color: Color(0xff797777)),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
