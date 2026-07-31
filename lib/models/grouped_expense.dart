import 'package:tally/models/category.dart';

class GroupedExpense {
  final Category category;
  final double amount;

  const GroupedExpense({required this.category, required this.amount});
}
