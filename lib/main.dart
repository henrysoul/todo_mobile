import 'package:flutter/material.dart';
import 'package:todo/screens/dashboard_screen.dart';
import 'package:todo/screens/login_screen.dart';
import 'package:todo/screens/register_screen.dart';

import './screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}
// const  primayColor = Color(0xff50C2C9);
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xff50C2C9),
        accentColor: Colors.deepOrange,
        fontFamily: 'Lato',
        backgroundColor: Color(0xffE5E5E5),
        inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
           borderSide: BorderSide(color: Colors.pink)
        )
    ),
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: {
        RegisterScreen.routeName: (ctx) => RegisterScreen (),
        LoginScreen.routeName: (ctx) => LoginScreen(),
        DashBoardScreen.routeName: (ctx) => DashBoardScreen(),
      },
    );
  }
}
