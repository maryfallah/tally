import 'package:flutter/material.dart';
import 'package:tally/extensions/category_extension.dart';
import 'package:tally/extensions/double_extensions.dart';
import 'package:tally/models/category.dart';
import 'package:tally/models/grouped_expense.dart';

class GroupedExpenseCard extends StatelessWidget {
  const GroupedExpenseCard({
    super.key,
    required this.groupedExpense,
    required this.onCategorySelected,
  });

  final GroupedExpense groupedExpense;
  final ValueChanged<Category> onCategorySelected;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onCategorySelected(groupedExpense.category);
      },
      child: Card(
        margin: EdgeInsets.all(2),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Row(
                children: [
                  Icon(groupedExpense.category.icon, size: 20),
                  const SizedBox(width: 8),
                  Text(groupedExpense.category.name),
                ],
              ),
              Spacer(),
              Text('€${groupedExpense.amount.formattedCurrency}'),
            ],
          ),
        ),
      ),
    );
  }

  IconData? getIcon(Category category) {
    switch (category) {
      case Category.groceries:
        return Icons.shopping_basket;
      case Category.cafe:
        return Icons.coffee;
      case Category.transportation:
        return Icons.bus_alert;
      case Category.health:
        return Icons.health_and_safety;
      case Category.home:
        return Icons.home;
      case Category.clothing:
        return Icons.shop;
      case Category.leisure:
        return Icons.tv;
      case Category.travel:
        return Icons.travel_explore;
      case Category.education:
        return Icons.school;
      case Category.pets:
        return Icons.pets;
      case Category.family:
        return Icons.child_care;
      case Category.other:
        return Icons.no_accounts;
      case Category.gifts:
        return Icons.card_giftcard_outlined;
      case Category.workout:
        return Icons.fitness_center;
    }
  }
}
