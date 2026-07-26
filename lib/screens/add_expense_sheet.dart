import 'package:flutter/material.dart';
import 'package:tally/models/category.dart';
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
              SizedBox(height: 10),

              Center(child: ExpenseDatePicker()),
              SizedBox(height: 10),
              CategoryGrid(),
              const SizedBox(height: 24),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
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
