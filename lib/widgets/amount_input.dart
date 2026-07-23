import 'package:flutter/material.dart';
import 'package:tally/theme/theme_constants.dart';

class AmountInput extends StatelessWidget {
  const AmountInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        inputDecorationTheme: const InputDecorationTheme(
          filled: false,
          border: InputBorder.none,
          enabledBorder: UnderlineInputBorder(),
          focusedBorder: UnderlineInputBorder(),
        ),
      ),
      child: TextField(
        keyboardType: const TextInputType.numberWithOptions(decimal: true),
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
        decoration: const InputDecoration(
          hintText: '0.00',
          border: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white24),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: accentColor),
          ),
        ),
      ),
    );
  }
}
