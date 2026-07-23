import 'package:tally/models/category.dart';
import 'package:tally/models/expense.dart';

final now = DateTime.now();
final dummyExpenses = [
  Expense(category: Category.cafe, amount: 12, dateTime: now),
  Expense(category: Category.travel, amount: 400, dateTime: now),
  Expense(category: Category.pets, amount: 120, dateTime: now),
  Expense(category: Category.home, amount: 300, dateTime: now),
  Expense(category: Category.health, amount: 250, dateTime: now),
  Expense(category: Category.education, amount: 126, dateTime: now),
  Expense(category: Category.grocery, amount: 200, dateTime: now),
  Expense(category: Category.grocery, amount: 150, dateTime: now),
];
