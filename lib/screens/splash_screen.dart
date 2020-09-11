import 'package:flutter/material.dart';

import '../widgets/top_left.dart';
import 'register_screen.dart';
class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Column(
        children: [
          TopLeft(),
          Container(
            child: Expanded(
              child: Image(
                image: AssetImage('assets/images/splash.png'),
              ),
            ),
          ),
          Container(
            child: Expanded(
              child: Column(
                children: [
                  Text(
                    'Get things done with TODO',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.5,
                      fontSize: 18,
                      wordSpacing: 4,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    margin: const EdgeInsets.symmetric(horizontal: 53,vertical: 20),
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Interdum dictum tempus, interdum at dignissim metus. Ultricies sed nunc.',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.5,
                        fontSize: 13,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    width: 350,
                    margin: EdgeInsets.only(top: 10),
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(RegisterScreen.routeName);
                      },
                      textColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      color: Theme.of(context).primaryColor,
                      child: const Text(
                        'Get Started',
                        style: TextStyle(fontSize: 14,letterSpacing: 2),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
