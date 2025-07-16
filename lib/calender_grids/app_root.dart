import 'package:codex_login/calender_grids/screens/calendar_input_form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class AppRootCalenderGrid extends StatelessWidget {
  const AppRootCalenderGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Calendar Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const CalendarInputForm(),
    );
  }
}
