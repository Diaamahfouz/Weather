import 'package:flutter/material.dart';

class WeatherInfo extends StatelessWidget {
  const WeatherInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Cairo',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
            ),
            Text(
              'updated at: 12:45',
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/images/cloudy.png',
                ),
                Text(
                  '28',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      'MaxTemp: 37',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      'MinTemp: 16',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Text(
              'Sunny',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
