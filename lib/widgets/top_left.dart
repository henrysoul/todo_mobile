import 'package:flutter/material.dart';

class TopLeft extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Image(
        image: AssetImage('assets/images/topleft.png'),
      ),
    );
  }
}
