
import '../screens/safety_screen.dart';
import 'package:flutter/material.dart';

class SafetyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(SafetyScreen.routeName);
      },
      child: Card(
        child: ListTile(
          title: Center(
            child: Text(
              'Safety Tips',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
