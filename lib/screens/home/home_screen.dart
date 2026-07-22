import 'package:flutter/material.dart';
import 'package:tally/models/category.dart';
import 'package:tally/models/expense.dart';
import 'package:tally/widgets/expense_card.dart';

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

          ExpenseCard(
            expense: Expense(
              category: Category.grocery,
              amount: 35,
              dateTime: DateTime.now(),
            ),
          ),
          ExpenseCard(
            expense: Expense(
              category: Category.home,
              amount: 335,
              dateTime: DateTime.now(),
            ),
          ),
          ExpenseCard(
            expense: Expense(
              category: Category.pets,
              amount: 100,
              dateTime: DateTime.now(),
            ),
          ),
        ],
      ),
    );
  }
}
