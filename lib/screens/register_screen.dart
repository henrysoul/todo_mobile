import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:todo/screens/login_screen.dart';
import 'package:todo/widgets/top_left.dart';

class RegisterScreen extends StatelessWidget {
  static const routeName = '/register';
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
                padding: EdgeInsets.only(top: 20, bottom: 10),
                child: Text(
                  'Welcome Onboard!',
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
              child: Text('Let’s help you meet up your tasks'),
            ),
            SizedBox(
              height: 25,
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
                        hintText: 'Enter your full name',
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
                  new Theme(
                    data: new ThemeData(
                      primaryColor: Theme.of(context).primaryColor,
                      hintColor: Colors.white,
                    ),
                    child: TextField(
                      decoration: new InputDecoration(
                        contentPadding: const EdgeInsets.only(left: 25.0),
                        hintText: 'Confirm Password',
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
                ],
              ),
            ),
            Container(
              width: 350,
              margin: EdgeInsets.only(top: 40, bottom: 20),
              child: RaisedButton(
                onPressed: () {},
                textColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 20),
                color: Theme.of(context).primaryColor,
                child: const Text(
                  'Register',
                  style: TextStyle(fontSize: 14, letterSpacing: 2),
                ),
              ),
            ),
            RichText(
              text: TextSpan(
                text: 'Already have an account ? ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: ' Sign in',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.of(context).pushNamed(LoginScreen.routeName);
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
