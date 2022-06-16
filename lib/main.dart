import 'package:flutter/material.dart';
import 'package:myturn/entry_pages/entry_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Turn',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
              elevation: 0, backgroundColor: Colors.transparent)),
      home: const EntryPage(),
    );
  }
}
