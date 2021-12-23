import 'package:flutter/material.dart';

import 'Home Screen/category_home.dart';
class MoblieHomeScreen extends StatelessWidget {
  const MoblieHomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            width: 120.0,
            height: 120.0,
            margin: const EdgeInsets.only(top: 44.0),
            child: Image.asset(
              'assets/images/logo.png',
              fit: BoxFit.fill,
            ),
          ),
        ),
        Center(
          child: Container(
            margin: const EdgeInsets.only(top: 22.0),
            width: 280.0,
            child: Column(
              children: const [
                Text(
                  'Let\'s help together',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    color: Color(0xffFFFFFF),
                    fontFamily: 'Philosopher',
                  ),
                ),
                Text(
                  'in this pandemic!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 28,
                    color: Color(0xffFFFFFF),
                    fontFamily: 'Philosopher',
                  ),
                ),
              ],
            ),
          ),
        ),
        Center(
          child: Container(
            margin: const EdgeInsets.only(top: 15.0),
            width: 280.0,
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
        Expanded(
          child: Container(),
        ),
        Expanded(
          child: const CategoryHome(),
          flex: MediaQuery.of(context).size.height > 656 ? 1 : 2,
        ),
      ],
    );
  }
}

