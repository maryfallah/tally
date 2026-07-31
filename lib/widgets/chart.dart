import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:tally/extensions/category_extension.dart';
import 'package:tally/models/category.dart';
import 'package:tally/theme/theme_constants.dart';

class Chart extends StatelessWidget {
  final Map<Category, double> categoryTotals;

  const Chart({super.key, required this.categoryTotals});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: PieChart(
        PieChartData(sections: _buildSections(), sectionsSpace: 0),
      ),
    );
  }

  List<PieChartSectionData> _buildSections() {
    final List<PieChartSectionData> sectionData = [];
    for (final entry in categoryTotals.entries) {
      sectionData.add(
        PieChartSectionData(
          value: entry.value,
          color: entry.key.color,
          title: '',
          radius: 40,
          borderSide: BorderSide.none,
        ),
      );
    }
    return sectionData;
  }
}
