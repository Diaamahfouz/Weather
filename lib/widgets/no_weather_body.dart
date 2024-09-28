import 'package:flutter/material.dart';

class NoWeatherBody extends StatelessWidget {
  const NoWeatherBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'there is no weather to show 😔',
            style: TextStyle(fontSize: 26),
          ),
          Text(
            'Start Searching Now 🔍',
            style: TextStyle(fontSize: 26),
          ),
        ],
      ),
    );
  }
}
