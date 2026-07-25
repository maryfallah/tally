import 'package:flutter/material.dart';
import 'package:tally/models/category.dart';
import 'package:tally/widgets/category_item.dart';

class CategoryGrid extends StatefulWidget {
  const CategoryGrid({super.key});

  @override
  State<CategoryGrid> createState() => _CategoryGridState();
}

class _CategoryGridState extends State<CategoryGrid> {
  Category? selectedCategory;
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 16,
      runSpacing: 16,
      children: Category.values.map((category) {
        return CategoryItem(
          category: category,
          isSelected: category == selectedCategory,
          onTap: () {
            setState(() {
              selectedCategory = category;
            });
          },
        );
      }).toList(),
    );
  }
}
