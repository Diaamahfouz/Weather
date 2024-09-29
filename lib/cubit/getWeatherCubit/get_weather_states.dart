import 'package:weather/models/weather_model.dart';

class WeatherStates {}

class InitialState extends WeatherStates {}

class WeatherSucces extends WeatherStates {
  WeatherModel weatherModel;
  WeatherSucces(this.weatherModel);
}

class WeatherFailed extends WeatherStates {
  // ignore: prefer_typing_uninitialized_variables
  final errorMessage;
  WeatherFailed(this.errorMessage);
}
