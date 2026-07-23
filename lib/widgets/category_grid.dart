import 'package:flutter/material.dart';
import 'package:tally/models/category.dart';
import 'package:tally/widgets/category_item.dart';

class CategoryGrid extends StatelessWidget {
  const CategoryGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 16,
      runSpacing: 16,
      children: Category.values.map((category) {
        return CategoryItem(category: category);
      }).toList(),
    );
  }
}
