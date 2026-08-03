import 'package:flutter/material.dart';
import 'package:tally/screens/home_screen.dart';
import 'package:tally/theme/app_theme.dart';

class TallyApp extends StatefulWidget {
  const TallyApp({super.key});

  @override
  State<TallyApp> createState() => _TallyAppState();
}

class _TallyAppState extends State<TallyApp> {
  bool isDarkMode = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tally',
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
      home: HomeScreen(
        isDarkMode: isDarkMode,
        onThemeToggle: () {
          setState(() {
            isDarkMode = !isDarkMode;
          });
        },
      ),
    );
  }
}
