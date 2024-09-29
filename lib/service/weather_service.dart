import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weather/models/weather_model.dart';

class WeatherService {
  final Dio dio;
  final String apiKey = 'a876406a3c6c4dea8cc183206242509';
  final String baseUrl = 'https://api.weatherapi.com/v1';

  WeatherService({required this.dio});
  Future<WeatherModel> getCurrentWeather(String cityName) async {
    try {
      Response response = await dio.get(
          '$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=1');

      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      return weatherModel;
    } on DioException catch (e) {
      throw Exception(e.toString());
    }catch (e) {
      log(e.toString());
      throw Exception('oops there was an error!');
    }
  }
}
