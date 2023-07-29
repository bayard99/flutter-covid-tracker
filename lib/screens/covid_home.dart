
import 'package:flutter/material.dart';
import '../widgets/live_counter.dart';
import '../widgets/covid_card.dart';
import '../widgets/safety.dart';
import '../widgets/tracker.dart';

class CovidHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text('Covid Tracker', style: TextStyle(
          fontSize: 25,
          color: Theme.of(context).accentColor
        ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          LiveCounter(),
          CovidCard(),
          SafetyWidget(),
          TrackerWidget()
        ],
      ),
      drawer: Drawer(),
    );
  }
}
