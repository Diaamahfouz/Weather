import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/cubit/getWeatherCubit/get_weather_cubit.dart';
import 'package:weather/models/weather_model.dart';

class WeatherInfo extends StatelessWidget {
  const WeatherInfo({super.key});

  @override
  Widget build(BuildContext context) {
    WeatherModel weatherModel =
        BlocProvider.of<GetWeatherCubit>(context).weatherModel;
    return Center(
      child: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.orange, Colors.blue])),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              weatherModel.cityName,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Updated at: ${weatherModel.date.hour}:${weatherModel.date.minute}',
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 22,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 110,
                  width: 110,
                  child: Image.network(
                    'https:${weatherModel.image}',
                    fit: BoxFit.fill,
                  ),
                ),
                Text(
                  weatherModel.temp.round().toString(),
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      'MaxTemp: ${weatherModel.maxTemp.round()}',
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'MinTemp: ${weatherModel.minTemp.round()}',
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              weatherModel.weatherState,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 26,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
