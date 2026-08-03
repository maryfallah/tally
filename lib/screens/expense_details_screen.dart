import 'package:flutter/material.dart';
import 'package:tally/models/category.dart';
import 'package:tally/models/expense.dart';
import 'package:tally/widgets/expense_card.dart';

class ExpenseDetailsScreen extends StatelessWidget {
  const ExpenseDetailsScreen({
    super.key,
    required this.category,
    required this.expenses,
  });
  final Category category;
  final List<Expense> expenses;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(category.name)),
      body: ListView.builder(
        itemCount: expenses.length,
        itemBuilder: (context, index) {
          return ExpenseCard(
            expense: expenses[index],
            onExpenseDismissed: (_) {},
          );
        },
      ),
    );
  }
}
