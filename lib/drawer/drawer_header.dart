import 'package:flutter/material.dart';

class MyDrawerHeader extends StatefulWidget {
  const MyDrawerHeader({Key? key}) : super(key: key);

  @override
  State<MyDrawerHeader> createState() => _MyDrawerHeaderState();
}

class _MyDrawerHeaderState extends State<MyDrawerHeader> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: DrawerHeader(
        margin: EdgeInsets.zero,
        child: ListTile(
          //  visualDensity: VisualDensity(vertical: -3),
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(60),
            child: Image.asset('assets/images/user_3.jpeg',
                height: 60, width: 60, fit: BoxFit.cover),
          ),
          title: Text('Tom \nCruise'),
          subtitle: Text('+19093427707'),
        ),
        decoration: const BoxDecoration(color: Colors.white),
      ),
    );
  }
}
