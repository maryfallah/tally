import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tally')),
      body: ListView(
        padding: EdgeInsets.all(8),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('Day   Month   Year')],
          ),
          Center(child: Text("<       June 2026      >")),

          Container(
            width: 400,
            height: 400,
            color: Colors.blueGrey,
            child: Text('PIE CHART'),
          ),

          Text('Grocery'),
          Text("Phone"),
          Text("Health"),
        ],
      ),
    );
  }
}
