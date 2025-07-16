import 'package:flutter/material.dart';
import 'dark_Mode_counter_page.dart';
import 'light_Mode_counter_page.dart';

void main() {
  runApp(const LightDarkAppRoot());
}

class LightDarkAppRoot extends StatefulWidget {
  const LightDarkAppRoot({super.key});

  @override
  State<LightDarkAppRoot> createState() => _LightDarkAppRootState();
}

class _LightDarkAppRootState extends State<LightDarkAppRoot> {
  int counter = 0;
  bool isDarkMode = false;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  void toggleTheme() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Theme Mode Counter',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
      home: isDarkMode
          ? DarkModeCounterPage(
        counter: counter,
        onIncrement: incrementCounter,
        onSwitch: toggleTheme,
      )
          : LightModeCounterPage(
        counter: counter,
        onIncrement: incrementCounter,
        onSwitch: toggleTheme,
      ),
    );
  }
}
