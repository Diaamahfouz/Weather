import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/cubit/getWeatherCubit/get_weather_states.dart';
import 'package:weather/models/weather_model.dart';
import 'package:weather/service/weather_service.dart';

class GetWeatherCubit extends Cubit<WeatherStates> {
  GetWeatherCubit() : super(WeatherInitial());
  late WeatherModel weatherModel;
  getWeather(String cityName) async {
    emit(WeatherLoading());
    try {
      weatherModel =
          await WeatherService(dio: Dio()).getCurrentWeather(cityName);
      emit(WeatherSucces(weatherModel));
    } on Exception catch (e) {
      emit(WeatherFailed(e.toString()));
    }
  }
}
