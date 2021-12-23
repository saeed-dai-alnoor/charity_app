import 'package:charity_app/widget/Home%20Screen/screen_shape.dart';
import 'package:charity_app/widget/mobile_home_screen.dart';
import 'package:charity_app/widget/tablet_home_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff161D6F),
        body: LayoutBuilder(
          builder: (context, constraints) => SizedBox(
            width: constraints.maxWidth,
            height: constraints.maxHeight,
            child: CustomPaint(
                painter: RPSCustomPainter(),
                child: MediaQuery.of(context).size.width >= 443.1
                    ? const TabletHomeScreen()
                    : const MoblieHomeScreen()),
          ),
        ),
      ),
    );
  }
}
