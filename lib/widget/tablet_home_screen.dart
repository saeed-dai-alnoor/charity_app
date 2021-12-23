import 'package:flutter/material.dart';

import 'Home Screen/category_home.dart';

class TabletHomeScreen extends StatelessWidget {
  const TabletHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Center(
          child: Container(
            margin: const EdgeInsets.only(top: 10.0),
            child: Image.asset(
              'assets/images/logo.png',
            ),
          ),
        ),
        Center(
          child: Container(
            margin: const EdgeInsets.only(top: 5.0),
            child: const Text(
              'Let\'s help together in this pandemic!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Color(0xffFFFFFF),
                fontFamily: 'Philosopher',
              ),
            ),
          ),
        ),
        Center(
          child: Container(
            margin: const EdgeInsets.only(top: 5.0),
            child: const Text(
              'you can get medical and food service at your doorsteps and also anyone can donate some fund for covid patients.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Poppins-Light',
                fontSize: 11,
                color: Colors.white70,
              ),
            ),
          ),
        ),
        const CategoryHome(),
      ],
    );
  }
}
