import 'package:flutter/material.dart';
import 'package:tally/screens/home/home_screen.dart';
import 'package:tally/theme/app_theme.dart';

class TallyApp extends StatelessWidget {
  const TallyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tally',
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      home: HomeScreen(),
    );
  }
}
