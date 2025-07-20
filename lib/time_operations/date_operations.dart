import 'package:flutter/material.dart';

class DateOperations extends StatefulWidget {
  const DateOperations({super.key});

  @override
  State<DateOperations> createState() => _DateOperationsState();
}

class _DateOperationsState extends State<DateOperations> {
  final DateTime currentDateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Date Operations")),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Container(
            color: Colors.grey.shade400,
            child: Column(
              children: [
                Card(
                  child: Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Text(
                          "Current Time : ${currentDateTime.day}/${currentDateTime.month}/${currentDateTime.year} : ${currentDateTime.hour}/${currentDateTime.minute}",
                        ),
                        SizedBox(width: 10),
                        IconButton(
                          onPressed: () => {
                            setState(() {
                              currentDateTime;
                            }),
                          },
                          icon: Icon(Icons.refresh),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
