import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  final ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        controller: _controller,
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset('assets/images/user_3.jpeg',
                    height: 120, width: 120, fit: BoxFit.cover),
              ),
            ),
            const Text('@TomCruise'),
            const SizedBox(height: 10),
            Container(
                height: 45,
                alignment: Alignment.center,
                child: Text(
                  'Ma\'lumot',
                  style: GoogleFonts.inter(fontSize: 18, color: Colors.black54),
                )),
            textBox('Ism', 'Tom'),
            textBox('Username', 'TomCruise'),
            textBox('E-mail', 'tomcruise@gmail.com'),
            textBox('Telefon', '+19093427707'),
            Container(
                height: 45,
                alignment: Alignment.center,
                child: Text(
                  'Xavfsizlik',
                  style: GoogleFonts.inter(fontSize: 18, color: Colors.black54),
                )),
            textBox('Manzil', 'Usa, Kalifornia shtati, Hollywood'),
            textBox('Parol', '***********'),
            const SizedBox(height: 20),
            ConstrainedBox(
              constraints: BoxConstraints.tightFor(
                  width: MediaQuery.of(context).size.width / 1.2, height: 50),
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: const Color(0xff5EC65B),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  child: Text(
                    'Profilni tahrirlash',
                    style:
                        GoogleFonts.inter(fontSize: 24, color: Colors.black87),
                  )),
            )
          ],
        ),
      ),
    );
  }

  Widget textBox(String type, String data) {
    return Container(
      height: 60,
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: Colors.grey, width: 0.5)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            type,
            style: GoogleFonts.inter(fontSize: 18, color: Colors.black38),
          ),
          Text(
            data,
            style: GoogleFonts.inter(fontSize: 20, color: Colors.black87),
          ),
        ],
      ),
    );
  }
}
