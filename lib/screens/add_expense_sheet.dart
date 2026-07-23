import 'package:flutter/material.dart';
import 'package:tally/theme/theme_constants.dart';
import 'package:tally/widgets/amount_input.dart';

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
            children: [
              Row(
                mainAxisSize: MainAxisSize.min, // don't stretch the Row
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 120, child: AmountInput()),

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
            ],
          ),
        ),
      ),
    );
  }
}
