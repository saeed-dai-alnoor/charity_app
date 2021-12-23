import 'package:charity_app/screen/food_plan.dart';
import 'package:flutter/material.dart';

int? mealNumber;

class FoodScreen extends StatelessWidget {
  FoodScreen({Key? key}) : super(key: key);

  final List<String> _feathers = [
    'Order yourmeal online',
    'Schedule asper your ease',
    'TrackDelivery',
    'Enjoy awarm meal'
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            CustomScrollView(
              slivers: <Widget>[
                appBarFood(),
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      Container(
                        margin: const EdgeInsets.only(top: 120, left: 15.0),
                        child: const Text(
                          'Our Features',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontFamily: 'Philosopher-Bold',
                            fontWeight: FontWeight.bold,
                            color: Color(0xff161D6F),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SliverGrid(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) => buildFeatures(index),
                    childCount: 4,
                  ),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  buildFoodPlan(context, 1),
                  buildFoodPlan(context, 2),
                  buildFoodPlan(context, 3),
                  buildFoodPlan(context, 4),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget appBarFood() {
    return SliverAppBar(
      pinned: true,
      floating: true,
      backgroundColor: const Color(0xff161D6F),
      expandedHeight: 200.0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(40),
        ),
      ),
      title: const Text(
        'Food',
        style:
            TextStyle(color: Color(0xffFFFFFF), fontFamily: 'Poppins-SemiBold'),
        textAlign: TextAlign.left,
      ),
      flexibleSpace: Container(
        margin: const EdgeInsets.only(top: 80.0, left: 15),
        child: const Text(
          'Select your plan and enjoy a warm lunch or dinner at your home.',
          style: TextStyle(
              height: 1.2,
              fontSize: 14.0,
              color: Color(0xffFFFFFF),
              fontFamily: 'Poppins-Regular'),
          textAlign: TextAlign.left,
        ),
      ),
      actions: [
        Container(
          margin: const EdgeInsets.only(top: 13.0, right: 15.0),
          child: const CircleAvatar(
            backgroundImage: ExactAssetImage('assets/images/HeadMan.png'),
          ),
        ),
      ],
    );
  }

  Widget buildFoodPlan(BuildContext context, int index) {
    return Container(
      margin: const EdgeInsets.only(left: 17, top: 150),
      width: 150,
      height: 152,
      decoration: BoxDecoration(
        color:
            index % 2 == 0 ? const Color(0xffFF6868) : const Color(0xffFFC14F),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                '$index Meal',
                textAlign: TextAlign.left,
                style: const TextStyle(
                  fontSize: 21,
                  fontFamily: 'Philosopher-Bold',
                  color: Color(0xff161D6F),
                ),
              ),
              Image.asset('assets/images/veg.png'),
             
            ],
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: Text(
                  '\$${11 + index}',
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    color: Color(0xff161D6F),
                  ),
                ),
              ),
              const Opacity(
                opacity: 0.6980392156862745,
                child: Text(
                  '/a day',
                  style: TextStyle(
                      fontSize: 10,
                      fontFamily: 'Poppins-Regular',
                      color: Color(0xff161D6F)),
                ),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FoodPlan(),
                ),
              );
              mealNumber = index;
            },
            child: const Text(
              'View Details',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
                fontFamily: 'Poppins-SemiBold',
                color: Color(0xff161D6F),
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 7,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildFeatures(int index) {
    return Container(
      margin: const EdgeInsets.all(12),
      color: const Color(0xffF5F6F9),
      child: Column(
        children: [
          Container(
            margin:
                const EdgeInsets.only(top: 15, left: 26, right: 25, bottom: 19),
            child: Image.asset(
              'assets/images/feature$index.png',
              height: 55,
              width: 55,
              fit: BoxFit.fill,
            ),
          ),
          Text(
            _feathers[index],
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 12,
              color: Color(0xff161D6F),
              fontFamily: 'Poppins-SemiBold',
            ),
          ),
        ],
      ),
    );
  }
}
