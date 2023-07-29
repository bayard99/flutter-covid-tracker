import 'package:flutter/material.dart';
import '../widgets/advise_list.dart';

class SafetyScreen extends StatelessWidget {
  static const routeName = '/safety-tips';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('Safety Tips',
        style: TextStyle(fontSize: 25, color: Theme.of(context).accentColor)
        ),
      ),
      body: AdviseList(),
    );
  }
}
