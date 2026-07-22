import 'package:tally/models/category.dart';

class Expense {
  final Category category;
  final double amount;
  final DateTime dateTime;

  Expense({
    required this.category,
    required this.amount,
    required this.dateTime,
  });
}
