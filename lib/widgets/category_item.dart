import 'package:flutter/material.dart';
import 'package:tally/extensions/category_extension.dart';
import 'package:tally/models/category.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.category});

  final Category category;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 95,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(category.icon),
          const SizedBox(height: 6),
          Text(category.name, textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
