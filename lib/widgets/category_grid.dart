import 'package:flutter/material.dart';
import 'package:tally/models/category.dart';
import 'package:tally/widgets/category_item.dart';

class CategoryGrid extends StatelessWidget {
  const CategoryGrid({
    super.key,
    required this.selectedCategory,
    required this.onCategorySelected,
  });
  final Category? selectedCategory;
  final ValueChanged<Category> onCategorySelected;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 16,
      runSpacing: 16,
      children: Category.values.map((category) {
        return CategoryItem(
          category: category,
          isSelected: category == selectedCategory,
          onTap: () => onCategorySelected(category),
        );
      }).toList(),
    );
  }
}
