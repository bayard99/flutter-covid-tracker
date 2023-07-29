import 'package:flutter/material.dart';
import '../widgets/tracker_widget.dart';

class TrackerScreen extends StatelessWidget {
  static const routeName = '/tracker';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('Tracker',
            style:
                TextStyle(fontSize: 25, color: Theme.of(context).accentColor)),
      ),
      body: TrackerWidget(),
    );
  }
}
