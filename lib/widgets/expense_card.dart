import 'package:flutter/material.dart';
import 'package:tally/extensions/category_extension.dart';
import 'package:tally/extensions/double_extensions.dart';
import 'package:tally/models/category.dart';
import 'package:tally/models/expense.dart';

class ExpenseCard extends StatelessWidget {
  const ExpenseCard({super.key, required this.expense});

  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(2),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            Row(
              children: [
                Icon(expense.category.icon, size: 20),
                const SizedBox(width: 8),
                Text(expense.category.name),
              ],
            ),
            Spacer(),
            Text('€${expense.amount.formattedCurrency}'),
          ],
        ),
      ),
    );
  }

  IconData? getIcon(Category category) {
    switch (category) {
      case Category.grocery:
        return Icons.shopping_basket;
      case Category.cafe:
        return Icons.coffee;
      case Category.transport:
        return Icons.bus_alert;
      case Category.health:
        return Icons.health_and_safety;
      case Category.bills:
        return Icons.money;
      case Category.home:
        return Icons.home;
      case Category.shopping:
        return Icons.shop;
      case Category.entertainment:
        return Icons.tv;
      case Category.travel:
        return Icons.travel_explore;
      case Category.education:
        return Icons.school;
      case Category.pets:
        return Icons.pets;
      case Category.kids:
        return Icons.child_care;
      case Category.other:
        return Icons.no_accounts;
    }
  }
}
