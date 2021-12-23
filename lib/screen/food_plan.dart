import 'package:flutter/material.dart';
import 'package:charity_app/screen/food_screen.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class FoodPlan extends StatelessWidget {
  const FoodPlan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            foodPlanAppBar(),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Container(
                    margin: const EdgeInsets.only(
                        left: 8.0, top: 13.0, bottom: 11.0),
                    child: const ListTile(
                      trailing: Icon(Icons.calendar_today_outlined),
                      title: Text(
                        'Select Days',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'Poppins-SemiBold',
                          color: Color(0xff161D6F),
                        ),
                      ),
                    ),
                  ),
                  SfCalendar(
                    view: CalendarView.month,
                    initialSelectedDate: DateTime.now(),
                    cellBorderColor: Colors.transparent,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget foodPlanAppBar() {
    return SliverAppBar(
      pinned: true,
      backgroundColor: mealNumber! % 2 == 0
          ? const Color(0xffFF6868)
          : const Color(0xffFFC14F),
      expandedHeight: 180.0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(40),
        ),
      ),
      title: const Text(
        'Food Plan',
        style: TextStyle(
          color: Color(0xffFFFFFF),
          fontFamily: 'Poppins-SemiBold',
        ),
        textAlign: TextAlign.left,
      ),
      flexibleSpace: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 60.0, left: 15.0),
            child: Image.asset(
              'assets/images/meal.png',
              height: 70.0,
              width: 61.0,
              fit: BoxFit.fill,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 80.0),
                    child: Text(
                      '$mealNumber Meal',
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                        fontSize: 14,
                        fontFamily: 'Poppins-Medium',
                        color: Color(0xff161D6F),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 80),
                    child: const Icon(
                      Icons.keyboard_arrow_down,
                      color: Color(0xff161D6F),
                    ),
                  ),
                ],
              ),
              const Text(
                '1 Veg Sabji, 1 Panner Sabji,4 \nRoti, 1 Sweet, Salad and\nButtermilk.',
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 10,
                    fontFamily: 'Poppins-Medium',
                    color: Color(0xff161D6F),
                    height: 1),
              )
            ],
          ),
        ],
      ),
    );
  }
}
