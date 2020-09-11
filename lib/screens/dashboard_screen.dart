import 'package:flutter/material.dart';
import 'package:analog_clock/analog_clock.dart';
import 'package:todo/widgets/todo_item.dart';

class DashBoardScreen extends StatefulWidget {
  static const routeName = '/dashboard';

  greetings() {
    var hour = DateTime.now().hour;
    if (hour < 12) {
      return 'Good Morning';
    }
    if (hour < 17) {
      return 'Good Afternoon';
    }
    return 'Good Evening';
  }

  @override
  _DashBoardScreenState createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 250,
                  decoration: BoxDecoration(
                    color: Color(0xff50C2C9),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Image(
                    image: AssetImage('assets/images/dash_board_topleft.png'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 110, left: 150),
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/user.png',
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 220),
                  child: Center(
                    child: Text(
                      'Welcome, Oliva Grace',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 15, right: 15),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  widget.greetings(),
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    letterSpacing: 2.8,
                  ),
                ),
              ),
            ),
            Container(
              height: 100,
              child: AnalogClock(
                decoration: BoxDecoration(
                    border: Border.all(width: 2.0, color: Color(0xffF5EFEF)),
                    color: Color(0xffF5EFEF),
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(1.0, 1.0),
                        blurRadius: 0,
                        spreadRadius: 2.0,
                        color: Colors.grey,
                      ),
                    ]),
                width: 200.0,
                isLive: true,
                hourHandColor: Colors.black,
                minuteHandColor: Colors.black,
                secondHandColor: Theme.of(context).primaryColor,
                showSecondHand: true,
                numberColor: Theme.of(context).primaryColor,
                showNumbers: true,
                textScaleFactor: 2.8,
                showTicks: false,
                showDigitalClock: false,
                datetime: DateTime(2019, 1, 1, 9, 12, 15),
              ),
            ),
            Container(
              width: 350,
              margin: EdgeInsets.only(bottom: 10),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Tasks List',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Card(
              elevation: 20,
              shadowColor: Colors.grey,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                // side: BorderSide(width: 5, color: Colors.green),
              ),
              child: Container(
                width: 350,
                height: 250,
                padding: EdgeInsets.all(15),
                child: ListView(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Tasks List',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.add_circle_outline),
                          onPressed: () {},
                          color: Theme.of(context).primaryColor,
                        )
                      ],
                    ),
                    Container(
                      child: Column(
                        children: [
                          TodoItem('Cook Rice and Chicken at 10 am'),
                          TodoItem('Learn Reactjs at 12 pm'),
                          TodoItem('Have Launch  at 1pm'),
                          TodoItem('Learn HTML and CSS at 3pm'),
                          TodoItem('Have Dinner at 8pm'),
                          TodoItem('Cook Rice and Chicken at 10 am'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
