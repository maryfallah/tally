import 'package:flutter/material.dart';

class AddExpenseSheet extends StatelessWidget {
  const AddExpenseSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: 0.9,
      widthFactor: 0.9,

      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Add Expense',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 24),
              const Text('In development'),
            ],
          ),
        ),
      ),
    );
  }
}
