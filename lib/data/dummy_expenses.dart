import 'package:tally/models/category.dart';
import 'package:tally/models/expense.dart';

final now = DateTime.now();

final dummyExpenses = [
  Expense(category: Category.groceries, amount: 100, dateTime: now),
  Expense(category: Category.cafe, amount: 100, dateTime: now),
  Expense(category: Category.transportation, amount: 100, dateTime: now),
  Expense(category: Category.health, amount: 100, dateTime: now),
  Expense(category: Category.home, amount: 100, dateTime: now),
  Expense(category: Category.clothing, amount: 100, dateTime: now),
  Expense(category: Category.leisure, amount: 100, dateTime: now),
  Expense(category: Category.travel, amount: 100, dateTime: now),
  Expense(category: Category.education, amount: 100, dateTime: now),
  Expense(category: Category.pets, amount: 100, dateTime: now),
  Expense(category: Category.family, amount: 100, dateTime: now),
  Expense(category: Category.gifts, amount: 100, dateTime: now),
  Expense(category: Category.workout, amount: 100, dateTime: now),
  Expense(category: Category.other, amount: 100, dateTime: now),
];
