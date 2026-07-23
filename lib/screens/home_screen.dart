import 'package:flutter/material.dart';
import 'package:tally/data/dummy_expenses.dart';
import 'package:tally/models/category.dart';
import 'package:tally/models/expense.dart';
import 'package:tally/screens/add_expense_sheet.dart';
import 'package:tally/widgets/expense_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tally')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            showDragHandle: true,
            builder: (context) {
              return const AddExpenseSheet();
            },
          );
        },
        child: const Icon(Icons.add),
      ),
      body: Column(
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

          // ...dummyExpenses.map((expense) => ExpenseCard(expense: expense)),
          Expanded(
            child: ListView.builder(
              itemCount: dummyExpenses.length,
              itemBuilder: (BuildContext context, int index) {
                return ExpenseCard(expense: dummyExpenses[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
