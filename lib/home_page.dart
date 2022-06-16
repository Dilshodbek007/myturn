import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/countdown_timer_controller.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:myturn/account_page.dart';
import 'package:myturn/drawer/drawer_page.dart';
import 'package:myturn/search_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _resized2 = false;
  bool _resized1 = false;
  DateTime now = DateTime.now();
  int currentPage = 1;
  List plansTime = [
    '14:00',
    '16:30',
    '18:00',
  ];
  List plans = [
    'Tish doktor',
    'Davlat xizmatlari markazi',
    'Korzinka',
  ];
  CountdownTimerController? controller;
  int time1 = DateFormat('kk:mm').parse('14:00').millisecondsSinceEpoch;
  int time2 = DateFormat('kk:mm').parse('16:30').millisecondsSinceEpoch;
  int endTime = DateTime.now().millisecondsSinceEpoch + 0;
  @override
  void initState() {
    super.initState();
    _resized1 = false;
  }

  void onEnd() {
    print('onEnd');
  }

  TextStyle textStyle =
      GoogleFonts.inriaSans(color: const Color(0xff4D4D4D), fontSize: 20);

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
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.black26,
              Colors.black26,
              Colors.black38,
              Colors.black38,
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          drawer: const MyDrawer(),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
                'assets/images/myturn2.png',
                height: 120,
              ),
              if (!_resized2) const SizedBox(height: 20),
              if (!_resized2)
                Flexible(
                  flex: 1,
                  child: AnimatedSize(
                    duration: const Duration(milliseconds: 550),
                    curve: Curves.fastOutSlowIn,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          if (_resized1) {
                            _resized1 = false;
                          } else {
                            _resized1 = true;
                          }
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 14),
                        decoration: BoxDecoration(
                            color: const Color(0xffC4C4C4).withOpacity(0.5),
                            borderRadius: BorderRadius.circular(20)),
                        height: _resized1
                            ? MediaQuery.of(context).size.height / 1.65
                            : MediaQuery.of(context).size.height / 5.5,
                        child: Column(
                          children: [
                            Text(
                              'Bugungi rejadagi manzillar:',
                              style: textStyle.copyWith(
                                  color: Colors.black.withOpacity(0.7)),
                            ),
                            Expanded(
                              child: ListView.builder(
                                itemCount: _resized1 ? plans.length : 2,
                                itemBuilder: (ctx, index) => myPlanList(index),
                              ),
                            ),
                            Text(
                              !_resized1 ? 'Ko\'proq ko\'rish' : '',
                              style: textStyle.copyWith(fontSize: 14),
                            ),
                            Icon(
                              !_resized1
                                  ? Icons.keyboard_arrow_down
                                  : Icons.keyboard_arrow_up,
                              size: 30,
                              color: Colors.black.withOpacity(0.6),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              if (!_resized1) const SizedBox(height: 20),
              if (!_resized1)
                Flexible(
                  flex: 2,
                  child: AnimatedSize(
                    duration: const Duration(
                      microseconds: 300,
                    ),
                    curve: Curves.bounceOut,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 3),
                      decoration: BoxDecoration(
                          color: const Color(0xffC4C4C4).withOpacity(0.3),
                          borderRadius: BorderRadius.circular(20)),
                      height: _resized2
                          ? MediaQuery.of(context).size.height / 1.65
                          : MediaQuery.of(context).size.height / 2.5,
                      child: Column(
                        children: [
                          InkWell(
                              onTap: () {
                                setState(() {
                                  if (_resized2) {
                                    _resized2 = false;
                                  } else {
                                    _resized2 = true;
                                  }
                                });
                              },
                              child: Icon(
                                !_resized2
                                    ? Icons.keyboard_arrow_up_outlined
                                    : Icons.keyboard_arrow_down_outlined,
                                size: 30,
                                color: Colors.black.withOpacity(0.6),
                              )),
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              width: MediaQuery.of(context).size.width / 1.5,
                              child: Text(
                                'Yangiliklar va imkoniyatlar oynasi',
                                maxLines: 3,
                                textAlign: TextAlign.center,
                                style: textStyle.copyWith(
                                    color: Colors.white, fontSize: 40),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
            ],
          ),
          bottomNavigationBar: Container(
              margin: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.white)),
              height: 66,
              child: BottomNavigationBar(
                currentIndex: 1,
                backgroundColor: Colors.transparent,
                showUnselectedLabels: false,
                showSelectedLabels: false,
                onTap: (int i) {
                  if (i == 0) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (ctx) => const SearchPage()));
                  } else if (i == 2) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (ctx) => const AccountPage()));
                  }
                },
                items: [
                  BottomNavigationBarItem(
                      icon: Image.asset(
                        'assets/images/search.png',
                        width: 33,
                        height: 33,
                      ),
                      label: 'Search',
                      backgroundColor: Colors.transparent),
                  BottomNavigationBarItem(
                      icon: Image.asset(
                        'assets/images/home.png',
                        width: 33,
                        height: 33,
                      ),
                      label: 'Home',
                      backgroundColor: Colors.transparent),
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.account_circle_outlined,
                        size: 34,
                        color: Colors.white.withOpacity(0.7),
                      ),
                      label: 'Account',
                      backgroundColor: Colors.transparent)
                ],
              )),
        )
      ],
    );
  }

  myPlanList(int i) {
    int time1 = DateFormat('kk:mm').parse(plansTime[i]).millisecondsSinceEpoch;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.access_time_rounded,
            color: Colors.grey.shade700,
          ),
          const SizedBox(width: 5),
          Text(
            plansTime[i],
            style: textStyle.copyWith(
                fontSize: 15, color: Colors.black.withOpacity(0.7)),
          ),
          Text(
            '(-',
            style: textStyle.copyWith(
                fontSize: 15, color: Colors.black.withOpacity(0.7)),
          ),
          CountdownTimer(
            controller: controller,
            onEnd: onEnd,
            endTime: endTime + time1,
          ),
          Text(
            'qoldi)',
            style: textStyle.copyWith(
                fontSize: 15, color: Colors.black.withOpacity(0.7)),
          ),
          Icon(Icons.arrow_right_alt_sharp,
              color: Colors.black.withOpacity(0.7)),
          Icon(
            Icons.location_on_outlined,
            color: Colors.grey.shade700,
          ),
          Container(
            alignment: Alignment.centerLeft,
            height: 35,
            width: 100,
            child: Text(
              plans[i],
              style: textStyle.copyWith(
                  fontSize: 15, color: Colors.black.withOpacity(0.7)),
            ),
          )
        ],
      ),
    );
  }
}
