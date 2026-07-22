import 'package:flutter/material.dart';
import 'package:tally/theme/app_theme.dart';

class TallyApp extends StatelessWidget {
  const TallyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tally',
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      home: Container(),
    );
  }
}
