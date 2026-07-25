import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ExpenseDatePicker extends StatefulWidget {
  const ExpenseDatePicker({super.key});

  @override
  State<ExpenseDatePicker> createState() => _ExpenseDatePickerState();
}

class _ExpenseDatePickerState extends State<ExpenseDatePicker> {
  DateTime selectedDate = DateTime.now();

  Future<void> _pickDate() async {
    final pickedDate = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2020),
      lastDate: DateTime.now(),
    );

    if (pickedDate != null) {
      setState(() {
        selectedDate = pickedDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: _pickDate,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.calendar_today_outlined),
            const SizedBox(width: 8),
            Text(DateFormat.yMMMd().format(selectedDate)),
          ],
        ),
      ),
    );
  }
}
