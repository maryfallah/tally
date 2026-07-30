import 'package:flutter/material.dart';
import 'package:tally/data/dummy_expenses.dart';
import 'package:tally/models/expense.dart';
import 'package:tally/screens/add_expense_sheet.dart';
import 'package:tally/widgets/expense_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Expense> expenses = [...dummyExpenses];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tally')),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final expense = await showModalBottomSheet<Expense>(
            context: context,
            isScrollControlled: true,
            showDragHandle: true,
            builder: (context) {
              return const AddExpenseSheet();
            },
          );

          if (expense != null) {
            setState(() {
              expenses.add(expense);
            });
          }
        },
        child: const Icon(Icons.add),
      ),
      body: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('Day   Month   Year')],
          ),
          const Center(child: Text("<       June 2026      >")),

          Container(
            width: 400,
            height: 400,
            color: Colors.blueGrey,
            child: const Text('PIE CHART'),
          ),

          Expanded(
            child: ListView.builder(
              itemCount: expenses.length,
              itemBuilder: (context, index) {
                return ExpenseCard(
                  expense: expenses[index],
                  onExpenseDismissed: (expense) {
                    _removeExpense(expense, index);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void _removeExpense(Expense expense, int index) {
    setState(() {
      expenses.removeAt(index);
    });

    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar
      ..showSnackBar(
        SnackBar(
          content: const Text('Expense deleted'),
          action: SnackBarAction(
            label: 'Undo',
            onPressed: () {
              setState(() {
                expenses.insert(index, expense);
              });
            },
          ),
        ),
      );
  }
}
