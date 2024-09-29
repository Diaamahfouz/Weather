import 'package:flutter/material.dart';

class NoWeatherBody extends StatelessWidget {
  const NoWeatherBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.orange, Colors.blue],
        ),
      ),
      child: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'there is no weather to show 😔',
              style: TextStyle(fontSize: 25),
            ),
            Text(
              'Start Searching Now 🔍',
              style: TextStyle(fontSize: 25),
            ),
          ],
        ),
      ),
    );
  }
}
