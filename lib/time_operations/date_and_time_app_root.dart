import 'package:flutter/material.dart';

class DateAndTimeScreen extends StatefulWidget {
  @override
  State<DateAndTimeScreen> createState() => _DateAndTimeScreenState();
}

class _DateAndTimeScreenState extends State<DateAndTimeScreen> {
  String currentDateTime = DateTime.now().toLocal().toString();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Date and Time"), centerTitle: true),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Center(
                child: Container(
                  width: 300,
                  height: 100,
                  color: Colors.grey.shade300,
                  child: Center(child: Text(currentDateTime)),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  currentDateTime = DateTime.now().toUtc().toString();
                });
              },
              child: Text("Update Time"),
            ),
          ],
        ),
      ),
    );
  }
}
