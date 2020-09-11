import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:todo/screens/dashboard_screen.dart';
import 'package:todo/screens/register_screen.dart';
import 'package:todo/widgets/top_left.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = '/login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopLeft(),
            Container(
              child: Padding(
                padding: EdgeInsets.only(top: 0, bottom: 10),
                child: Text(
                  'Welcome Back!',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.5,
                    fontSize: 18,
                    wordSpacing: 4,
                  ),
                ),
              ),
            ),
            Container(
              child: Image(
                image: AssetImage('assets/images/login.png',),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 350,
              child: Column(
                children: [
                  new Theme(
                    data: new ThemeData(
                      primaryColor: Theme.of(context).primaryColor,
                      hintColor: Colors.white,
                    ),
                    child: TextField(
                      decoration: new InputDecoration(
                        contentPadding: const EdgeInsets.only(left: 25.0),
                        hintText: 'Enter your email',
                        fillColor: Colors.white,
                        hintStyle: TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                        ),
                        filled: true,
                        border: new OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: new BorderSide(color: Colors.red),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  new Theme(
                    data: new ThemeData(
                      primaryColor: Theme.of(context).primaryColor,
                      hintColor: Colors.white,
                    ),
                    child: TextField(
                      decoration: new InputDecoration(
                        contentPadding: const EdgeInsets.only(left: 25.0),
                        hintText: 'Enter password',
                        fillColor: Colors.white,
                        hintStyle: TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                        ),
                        filled: true,
                        border: new OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: new BorderSide(color: Colors.red),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Forgot Password',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            Container(
              width: 350,
              margin: EdgeInsets.only(top: 0, bottom: 20),
              child: RaisedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(DashBoardScreen.routeName);
                },
                textColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 20),
                color: Theme.of(context).primaryColor,
                child: const Text(
                  'Sign In',
                  style: TextStyle(fontSize: 14, letterSpacing: 2),
                ),
              ),
            ),
            RichText(
              text: TextSpan(
                text: 'Dont have an account ? ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: ' Sign up',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.of(context)
                            .pushNamed(RegisterScreen.routeName);
                      },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
