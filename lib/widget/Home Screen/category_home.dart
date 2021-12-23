import 'package:charity_app/screen/food_screen.dart';
import 'package:flutter/material.dart';

class CategoryHome extends StatelessWidget {
  const CategoryHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            margin: const EdgeInsets.only(top: 18.0, bottom: 15.0),
            child: const Text(
              'Choose your category',
              style: TextStyle(
                  color: Color(0xff282846),
                  fontSize: 16.0,
                  fontFamily: 'Poppins-Medium'),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                MaterialButton(
                  onPressed: () {},
                  child: Container(
                    width: 60.0,
                    height: 60.0,
                    margin: const EdgeInsets.only(bottom: 10),
                    child: Image.asset(
                      'assets/images/medicines.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const Text(
                  'Medical',
                  style: TextStyle(
                    color: Color(0xff282846),
                    fontSize: 14,
                    fontFamily: 'Poppins-Medium',
                  ),
                ),
              ],
            ),
            Column(
              children: [
                MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FoodScreen(),
                      ),
                    );
                  },
                  child: Container(
                    width: 60.0,
                    height: 60.0,
                    margin: const EdgeInsets.only(bottom: 10),
                    child: Image.asset(
                      'assets/images/hot-food.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const Text(
                  'Food',
                  style: TextStyle(
                    color: Color(0xff282846),
                    fontSize: 14,
                    fontFamily: 'Poppins-Medium',
                  ),
                ),
              ],
            ),
            Column(
              children: [
                MaterialButton(
                  onPressed: () {},
                  child: Container(
                    width: 60.0,
                    height: 60.0,
                    margin: const EdgeInsets.only(bottom: 10),
                    child: Image.asset(
                      'assets/images/giving.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const Text(
                  'Donate',
                  style: TextStyle(
                    color: Color(0xff282846),
                    fontSize: 14,
                    fontFamily: 'Poppins-Medium',
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
