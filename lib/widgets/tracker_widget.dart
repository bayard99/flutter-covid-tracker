import 'package:flutter/material.dart';
import '../services/api.dart';
import '../models/total_stats.dart';

class TrackerWidget extends StatefulWidget {
  @override
  _TrackerWidgetState createState() => _TrackerWidgetState();
}

class _TrackerWidgetState extends State<TrackerWidget> {
  @override
  var service = CovidService.instance;
  Future<TotalCount> _totalCountFuture;

  @override
  void initState() {
    _fetchData();
    super.initState();
  }

  _fetchData() {
    _totalCountFuture = service.fetchAllTotalCount();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _totalCountFuture,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else {
          final TotalCount totalCount = snapshot.data;
          return ListView(
            children: <Widget>[
              ListTile(
                title: Text(
                  'Total Recoveries: ${totalCount.confirmed}',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
              ),
              ListTile(
                title: Text(
                  'Total Infected: ${totalCount.recovered}',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.green),
                ),
                subtitle: Text(
                  'Recovery Rate: ${totalCount.recoveryRate.toStringAsFixed(2)}%',
                  style: TextStyle(color: Colors.green, fontSize: 20),
                ),
              ),
              ListTile(
                title: Text(
                  'Total Fatalities: ${totalCount.deaths}',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                ),
                subtitle: Text(
                  'Fatality Rate: ${totalCount.fatalityRate.toStringAsFixed(2)}%',
                  style: TextStyle(color: Colors.red, fontSize: 20),
                ),
              ),
            ],
          );
        }
      },
    );
  }
}
