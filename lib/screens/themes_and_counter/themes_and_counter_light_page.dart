import 'package:flutter/material.dart';

class LightModeCounterPage extends StatelessWidget {
  final int counter;
  final VoidCallback onIncrement;
  final VoidCallback onSwitch;

  const LightModeCounterPage({
    super.key,
    required this.counter,
    required this.onIncrement,
    required this.onSwitch,
  });

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.light(),
      child: Scaffold(
        appBar: AppBar(title: const Text("Light Mode Counter")),
        body: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("You have pushed the button this many times:"),
                  Text('$counter',
                      style: Theme.of(context).textTheme.headlineMedium),
                ],
              ),
            ),
            Positioned(
              bottom: 20,
              left: 20,
              child: ElevatedButton(
                onPressed: onSwitch,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                ),
                child: const Text("Go to Dark Mode"),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: onIncrement,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
