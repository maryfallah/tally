import 'package:flutter/material.dart';
import 'package:tally/models/category.dart';
import 'package:tally/models/expense.dart';
import 'package:tally/theme/theme_constants.dart';
import 'package:tally/widgets/amount_input.dart';
import 'package:tally/widgets/category_grid.dart';
import 'package:tally/widgets/expense_date_picker.dart';

class AddExpenseSheet extends StatefulWidget {
  const AddExpenseSheet({super.key});

  @override
  State<AddExpenseSheet> createState() => _AddExpenseSheetState();
}

class _AddExpenseSheetState extends State<AddExpenseSheet> {
  final TextEditingController amountController = TextEditingController();
  Category? selectedCategory;
  DateTime selectedDate = DateTime.now();
  void _saveExpense() {
    final amount = double.tryParse(amountController.text);
    if (amount == null || amount <= 0) {
      return;
    }
    if (selectedCategory == null) {
      return;
    }
    final expense = Expense(
      category: selectedCategory!,
      amount: amount,
      dateTime: selectedDate,
    );
    Navigator.pop(context, expense);
  }

  @override
  void dispose() {
    amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: 0.9,
      widthFactor: 0.9,

      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                mainAxisSize: MainAxisSize.min, // don't stretch the Row
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 120,
                    child: AmountInput(inputController: amountController),
                  ),

                  const Text(
                    'EUR',
                    style: TextStyle(
                      fontSize: 18,
                      color: accentColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),

              Center(
                child: ExpenseDatePicker(
                  selectedDate: selectedDate,
                  onDateChanged: (date) {
                    setState(() {
                      selectedDate = date;
                    });
                  },
                ),
              ),
              SizedBox(height: 10),
              CategoryGrid(
                selectedCategory: selectedCategory,
                onCategorySelected: (category) {
                  setState(() {
                    selectedCategory = category;
                  });
                },
              ),
              const SizedBox(height: 24),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: _saveExpense,
                  child: const Text('Save'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
